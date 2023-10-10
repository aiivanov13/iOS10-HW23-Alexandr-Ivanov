import SwiftUI

struct ListCellView: View {
    @State var isSelected: Bool
    var iconName: String
    var name: String
    
    var body: some View {
        HStack {
            Button {
                self.isSelected.toggle()
            } label: {
                CheckboxView(isSelected: isSelected)
            }
            
            Spacer().frame(width: 15)
            
            Image(systemName: iconName)
                .frame(width: 30, alignment: .center)
                .imageScale(.large)
                .foregroundColor(.red)
            
            Spacer().frame(width: 15)
            
            Text(name)
                .font(.system(size: 20))
            
            Spacer()
        }
    }
}

struct ListCellView_Previews: PreviewProvider {
    static var previews: some View {
        ListCellView(isSelected: false, iconName: "", name: "")
    }
}
