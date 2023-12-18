import SwiftUI

struct CollectionSectionView: View {
    @State private var items = RadioItem.items["stations"] ?? []
    
    private let rows = [GridItem()]
    
    var body: some View {
        Section {
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: rows, alignment: .top) {
                    ForEach(items, id: \.self) { item in
                        VStack(alignment: .leading) {
                            Image(item.imageName)
                                .resizable()
                                .frame(height: 175)
                                .cornerRadius(8)
                            
                            Text(item.title)
                                .padding(.horizontal, 5)
                            
                            Text(item.description)
                                .padding(.horizontal, 5)
                                .font(.system(size: 11))
                                .foregroundColor(.gray)
                        }
                        .lineLimit(1)
                        .frame(width: 175)
                    }
                }
                .padding(.horizontal)
            }
        } header: {
            VStack {
                Divider()
                
                HStack {
                    Text("Станции")
                        .font(.system(size: 21, weight: .bold))
                    
                    Spacer()
                    
                    Button {
                    } label: {
                        Text("См. все")
                            .font(.system(size: 17, weight: .medium))
                            .tint(.red)
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

struct CollectionSectionView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionSectionView()
    }
}
