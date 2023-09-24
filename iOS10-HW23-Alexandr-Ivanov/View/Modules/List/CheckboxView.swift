import SwiftUI

struct CheckboxView: View {
    private var isSelected: Bool

    init(isSelected: Bool) {
        self.isSelected = isSelected
    }
    
    @ViewBuilder var body: some View {
        if isSelected {
            Image(systemName: "checkmark.circle.fill")
                .foregroundColor(.red)
                .imageScale(.large)
        } else {
            Image(systemName: "circle")
                .foregroundColor(Color(UIColor.systemGray5))
                .imageScale(.large)
        }
    }
}

struct CheckboxView_Previews: PreviewProvider {
    static var previews: some View {
        CheckboxView(isSelected: false)
    }
}
