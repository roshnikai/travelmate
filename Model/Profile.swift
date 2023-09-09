import Foundation
import SwiftUI
struct Profile {
    var username: String
    var prefersNotifications = true
    var profilePhoto = Image("blankprofilephoto")
    var goalDate = Date()
    var viewModel = ScoreViewModel(lionAnswers: 0, otterAnswers: 0, beaverAnswers: 0, retrieverAnswers: 0)
    static let `default` = Profile(username: "roshni")

}
