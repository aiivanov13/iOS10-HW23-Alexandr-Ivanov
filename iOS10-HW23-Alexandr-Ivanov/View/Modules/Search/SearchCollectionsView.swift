import SwiftUI

struct SearchCollectionsView: View {
    @State private var items = CategoryItem.items
    
    private let columns = [GridItem(), GridItem()]
    var body: some View {
        ScrollView(showsIndicators: false) {
            Section {
                LazyVGrid(columns: columns) {
                    
                    ForEach(items, id: \.self) { item in
                        NavigationLink {
                            CollectionsDetailView(title: item.title)
                        } label: {
                            Image(item.imageName)
                                .resizable()
                                .cornerRadius(10)
                                .frame(height: 125)
                                .overlay(alignment: .bottomLeading) {
                                    Text(item.title)
                                        .multilineTextAlignment(.leading)
                                        .font(.system(size: 13, weight: .bold))
                                        .foregroundColor(.white)
                                        .padding([.horizontal, .bottom])
                                }
                        }
                    }
                }
                .padding(.horizontal)
            } header: {
                HStack {
                    Text("Поиск по категориям")
                        .font(.system(size: 21, weight: .bold))
                        .padding(.leading)
                    
                    Spacer()
                }
            }
        }
    }
}

struct SearchCollectionsView_Previews: PreviewProvider {
    static var previews: some View {
        SearchCollectionsView()
    }
}
