import SwiftUI

struct StateRow: View {
    var stateName: String
    var items: [Landmark]
    var body: some View {
        VStack(alignment: .leading) {
            Text(stateName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { landmark in
                        NavigationLink {
                            LandmarkDetail(landmark: landmark)
                        } label: {
                            StateItem(landmark: landmark)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct StateRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    static var previews: some View {
        StateRow(
            stateName: landmarks[0].state.rawValue,
            items: Array(landmarks.prefix(3))
        )
    }
}
