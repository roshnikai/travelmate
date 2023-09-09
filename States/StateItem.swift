import SwiftUI

struct StateItem: View {
    var landmark: Landmark
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(landmark.name)
                .frame(width: 155)
                .foregroundColor(.primary)
                .font(.caption)
                .fixedSize(horizontal: false, vertical: true).truncationMode(.tail)
        }
        .padding(.leading, 15)
    }
}

struct StateItem_Previews: PreviewProvider {
    static var previews: some View {
        StateItem(landmark: ModelData().landmarks[0])
    }
}
