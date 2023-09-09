import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack{
                Spacer()
                Text("Final Score:")
                    .font(.body)
                VStack {
                    Text("Lion: \(viewModel.lionPercentage)% 🦁")
                        .foregroundColor(.black)
                    Text("Otter: \(viewModel.otterPercentage)% 🦫")
                        .foregroundColor(.black)
                    Text("Beaver: \(viewModel.beaverPercentage)% 🦦")
                        .foregroundColor(.black)
                    Text("Golden Retriever: \(viewModel.retrieverPercentage)% 🦮")
                        .foregroundColor(.black)
                }.font(.system(size: 30))
                Spacer()
                NavigationLink(
                    destination: StateHome().environmentObject(ModelData()),
                    label: {
                      BottomTextView(str: "Go to Landmarks")
                    })
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(lionAnswers: 0, otterAnswers: 0, beaverAnswers: 0, retrieverAnswers: 0))
    }
}
