import SwiftUI

struct ListView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var editMode = EditMode.active
    @State private var items = ListItem.items
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListCellView(isSelected: item.isSelected, iconName: item.iconName, name: item.name)
                    .listSectionSeparator(.hidden)
                    .alignmentGuide(.listRowSeparatorLeading) { $0[.leading] }
            }
            .onMove(perform: move)
        }
        .environment(\.editMode, $editMode)
        .scrollContentBackground(.hidden)
        .navigationBarBackButtonHidden()
        .listStyle(.plain)
        .navigationTitle("Медиатека")
        .navigationBarItems(
            trailing: Button("Готово") { dismiss() }.tint(.red))
    }
    
    private func move(from source: IndexSet, to destination: Int) {
        items.move(fromOffsets: source, toOffset: destination)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
