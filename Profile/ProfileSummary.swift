import SwiftUI

struct ProfileSummary: View {
    let viewModel: ScoreViewModel
    var profile: Profile
    var body: some View {
        ScrollView {
            VStack {
                HStack(spacing: 20) {
                    profile.profilePhoto
                        .resizable()
                        .frame(width: 100, height: 80).clipShape(Circle())
                    VStack(alignment: .leading, spacing: 10) {
                        Text(profile.username)
                            .bold()
                            .font(.title)
                        Text("Notifications: \(profile.prefersNotifications ? "On": "Off" )")
                        Text("Goal Date: ") + Text(profile.goalDate, style: .date)
                    }
                }.padding()
                Text("Personality Quiz Results: ")
                Text("Lion: \(profile.viewModel.lionPercentage)% 🦁")
                    .foregroundColor(.black)
                Text("Otter: \(profile.viewModel.otterPercentage)% 🦫")
                    .foregroundColor(.black)
                Text("Beaver: \(profile.viewModel.beaverPercentage)% 🦦")
                    .foregroundColor(.black)
                Text("Golden Retriever: \(profile.viewModel.retrieverPercentage)% 🦮")
                    .foregroundColor(.black)
            }
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(viewModel: Profile.viewModel, profile: Profile.default)
    }
}
