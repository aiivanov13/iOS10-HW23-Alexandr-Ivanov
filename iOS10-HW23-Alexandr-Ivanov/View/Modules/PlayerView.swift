import SwiftUI

struct PlayerView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                ZStack {
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color(UIColor.systemGray5))
                        .shadow(color: Color(UIColor.systemGray4), radius: 5, y: 4)

                    Image(systemName: "music.note")
                        .foregroundColor(.gray)
                }
                Spacer()
                Text("Не исполняется")
                    .lineLimit(1)
                    .font(.system(size: 18))
                    .frame(width: 220, alignment: .leading)
                Spacer()
                Button(action: { },
                       label: {
                    Image(systemName: "play.fill")
                        .foregroundColor(.black)
                })
                Spacer()
                Button(action: { },
                       label: {
                    Image(systemName: "forward.fill")
                        .foregroundColor(.black)
                })
                Spacer()
            }
            .frame(width: UIScreen.main.bounds.width, height: 65)
            .background(Color(UIColor.systemGray6))
            .padding()
        }
        .dynamicTypeSize(.xxLarge)
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
