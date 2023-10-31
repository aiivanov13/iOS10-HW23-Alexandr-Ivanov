import SwiftUI

struct SearchView: View {
    @State private var pickerSelection = 0
    @StateObject var viewModel = SearchViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                SearchCollectionsView()
            }
            .navigationTitle("Поиск")
        }
        .searchable(text: $viewModel.searchText, prompt: "Ваша медиатека") {
            Picker("", selection: $pickerSelection) {
                Text("Apple Music").tag(0)
                Text("Ваша Медиатека").tag(1)
            }
            .pickerStyle(.segmented)
            
            ForEach(viewModel.filteredItems, id: \.self) { item in
                HStack {
                    Image(item.imageName)
                        .resizable()
                        .cornerRadius(8)
                        .frame(width: 50, height: 50)
                    
                    VStack(alignment: .leading, spacing: 0) {
                        Text(item.title)
                        
                        HStack(alignment: .center) {
                            Text(item.type)
                            
                            Circle()
                                .frame(width: 2, height: 2)
                            
                            Text(item.author)
                        }
                        .foregroundColor(.secondary)
                    }
                    .font(.subheadline)
                    .lineLimit(1)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(.secondary)
                }
            }
        }
        .padding(.bottom, 65)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
