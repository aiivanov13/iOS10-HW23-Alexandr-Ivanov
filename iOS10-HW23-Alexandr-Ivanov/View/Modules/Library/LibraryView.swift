import SwiftUI

struct LibraryView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Ищете свою музыку?")
                    .font(.system(size: 21, weight: .bold))
                
                Text("Здесь появится купленная Вами в iTunes Store музыка.")
                    .padding([.leading, .trailing], 50)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 16))
                    .foregroundColor(.gray)
            }
            .padding(.bottom, 50)
            .navigationTitle("Медиатека")
            .navigationBarItems(
                trailing: NavigationLink("Править", destination: ListView())
                    .foregroundColor(.red)
            )
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
