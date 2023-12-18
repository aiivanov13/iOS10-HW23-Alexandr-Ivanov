import SwiftUI

struct StationView: View {
    @State private var items = RadioItem.items["stations"] ?? []

    private let columns = [GridItem()]
    var body: some View {
        LazyVGrid(columns: columns) {
            Section {
                ForEach(items, id: \.self) { item in
                    VStack(alignment: .leading) {
                        Divider()
                            .padding(.leading, 125)
                        
                        HStack {
                            Image(item.imageName)
                                .resizable()
                                .aspectRatio(1, contentMode: .fit)
                                .cornerRadius(5)
                            
                            VStack(alignment: .leading) {
                                Text(item.title)
                                
                                Text(item.description)
                                    .font(.system(size: 11))
                                    .foregroundColor(.gray)
                            }
                            .padding(.leading, 5)
                        }
                    }
                    .frame(height: 120)
                }
            } header: {
                HStack {
                    Text("Станции")
                        .font(.system(size: 21, weight: .bold))
                    
                    Spacer()
                }
            }
        }
    }
}

struct StationView_Previews: PreviewProvider {
    static var previews: some View {
        StationView()
    }
}
