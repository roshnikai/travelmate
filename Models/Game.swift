import Foundation

struct Game {
    private(set) var currentQuestionIndex = 0
    private(set) var lionIndex = 0
    private(set) var otterIndex = 0
    private(set) var beaverIndex = 0
    private(set) var retrieverIndex = 0
    private(set) var answers = [Question: Int]()
    private(set) var isOver = false
    private let questions = Question.allQuestions.shuffled()
    
    var answerCount: (lionAnswers: Int, otterAnswers: Int, beaverAnswers: Int, retrieverAnswers: Int) {
        var count: (lionAnswers: Int, otterAnswers: Int, beaverAnswers: Int, retrieverAnswers: Int) = (0, 0, 0, 0)
        for (_, answeredIndex) in answers {
            if answeredIndex == (lionIndex) {
                count.lionAnswers += 1
            }
            if answeredIndex == (otterIndex) {
                count.otterAnswers += 1
            }
            if answeredIndex == (beaverIndex) {
                count.beaverAnswers += 1
            }
            if answeredIndex == (retrieverIndex) {
                count.retrieverAnswers += 1
            }
        }
        return count
    }
    
    var numberOfQuestions: Int {
        questions.count
    }
     
    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }
    
    mutating func answerCurrentQuestion(atIndex index: Int) {
        answers[currentQuestion] = index
    }
    
    mutating func updateGameStatus() {
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
        } else {
            isOver = true
        }
    }
}
