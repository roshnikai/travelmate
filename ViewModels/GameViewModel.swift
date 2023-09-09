import Foundation
import SwiftUI
 
// 1
class GameViewModel: ObservableObject {
 
  // MARK: - Published properties
  // 2
  @Published private var game = Game()
 
  // MARK: - Internal properties
  // 3
  var currentQuestion: Question {
     game.currentQuestion
  }
  // 4
  var questionProgressText: String {
    "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
  }

  // 1
  var guessWasMade: Bool {
       if let _ = game.answers[currentQuestion] {
           return true
       } else {
           return false
       }
   }
    
    var gameIsOver: Bool {
      game.isOver
    }

   // 2
   func answer(atIndex index: Int) {
       game.answerCurrentQuestion(atIndex: index)
   }
   // 3
   func displayNextScreen() {
       game.updateGameStatus()
   }
    
    func color(forOptionIndex optionIndex: Int) -> Color {
        if let guessedIndex = game.answers[currentQuestion] {
            if guessedIndex == optionIndex {
                return GameColor.guess
            } else {
                return GameColor.main
            }
        } else {
            return GameColor.main
        }
    }
    
    var lionAnswers: Int {
        game.answerCount.lionAnswers
    }
    var otterAnswers: Int {
        game.answerCount.otterAnswers
    }
    var beaverAnswers: Int {
        game.answerCount.beaverAnswers
    }
    var retrieverAnswers: Int {
        game.answerCount.retrieverAnswers
    }
}
