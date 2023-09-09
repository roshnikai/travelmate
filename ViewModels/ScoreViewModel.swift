import Foundation

struct ScoreViewModel {
    let lionAnswers: Int
    let otterAnswers: Int
    let beaverAnswers: Int
    let retrieverAnswers: Int
    //let totalAnswers: lionAnswers + otterAnswers + beaverAnswers + retrieverAnswers
    var lionPercentage: Int {
        (lionAnswers * 100 / (lionAnswers + otterAnswers + beaverAnswers + retrieverAnswers))
    }
    var otterPercentage: Int {
        (otterAnswers * 100 / (lionAnswers + otterAnswers + beaverAnswers + retrieverAnswers))
    }
    var beaverPercentage: Int {
        (beaverAnswers * 100 / (lionAnswers + otterAnswers + beaverAnswers + retrieverAnswers))
    }
    var retrieverPercentage: Int {
        (retrieverAnswers * 100 / (lionAnswers + otterAnswers + beaverAnswers + retrieverAnswers))
    }
}
