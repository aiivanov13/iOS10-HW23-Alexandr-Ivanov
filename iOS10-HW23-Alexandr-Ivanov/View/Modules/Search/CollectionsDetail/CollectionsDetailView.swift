import SwiftUI

struct CollectionsDetailView: View {
    @Environment(\.dismiss) private var dismiss
    
    private let title: String
    
    init(title: String) {
        self.title = title
    }
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            FavoritePlaylistView()
            
            CollectionSectionView()
        }
        .navigationTitle(title)
        .navigationBarBackButtonHidden()
        .navigationBarItems(
            leading:
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .tint(.red)
                        .fontWeight(.medium)
                },
            trailing:
                Button {
                } label: {
                    Image(systemName: "ellipsis.circle.fill")
                        .dynamicTypeSize(.xxLarge)
                        .symbolRenderingMode(.palette)
                        .tint(.gray)
                        .foregroundStyle(.red, .tertiary)
                }
        )
    }
}

struct CollectionsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionsDetailView(title: "")
    }
}
