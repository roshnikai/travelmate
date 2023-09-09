import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                GameColor.main.ignoresSafeArea()
                VStack {
                    Spacer()
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Personality Quiz").font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding()
                            .foregroundColor(.black)
                        Text("Select the answer that best describes you.")
                            .font(.title)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding()
                            .foregroundColor(.black)
                    }
                    Spacer()
                    NavigationLink(
                        destination: GameView(),
                        label: {
                            BottomTextView(str: "Start")
                        }
                    )
                }
                .foregroundColor(.white)
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
