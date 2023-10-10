import SwiftUI

struct FavoriteStationView: View {
    @State private var items = RadioItem.items["favorites"] ?? []

    private let rows = [GridItem()]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {                
                ForEach(items, id: \.self) { item in
                    VStack(alignment: .leading) {
                        Divider()
                        
                        Text(item.stantionType ?? "")
                            .font(.system(size: 11, weight: .medium))
                            .foregroundColor(.gray)
                        
                        Text(item.description)
                            .font(.system(size: 19))
                        
                        Text(item.title)
                            .font(.system(size: 19))
                            .foregroundColor(.gray)
                            .padding(.bottom, 5)
                                                
                        Image(item.imageName)
                            .resizable()
                            .cornerRadius(5)
                            .frame(
                                width: UIScreen.main.bounds.width - 32,
                                height: 250
                            )
                    }
                    .frame(width: UIScreen.main.bounds.width - 32)
                }
            }.padding()
        }
    }
}

struct FavoriteStationView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteStationView()
    }
}
