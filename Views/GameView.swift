import SwiftUI

struct GameView: View {
    @StateObject var viewModel = GameViewModel()

    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                    .foregroundColor(.black)
                QuestionView(question: viewModel.currentQuestion)
            }
        }
        .foregroundColor(.black)
        .navigationBarHidden(true)
        .environmentObject(viewModel)
        .background(
            NavigationLink(destination: ScoreView(viewModel: ScoreViewModel(lionAnswers: viewModel.lionAnswers, otterAnswers: viewModel.otterAnswers, beaverAnswers: viewModel.beaverAnswers, retrieverAnswers: viewModel.retrieverAnswers)),
                isActive: .constant(viewModel.gameIsOver),
                label: { EmptyView() })
        )
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
