import SwiftUI

struct StateHome: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showingProfile = false
    var body: some View {
        NavigationView {
            List {
                PageView(pages: modelData.features.map { FeatureCard(landmark: $0) })
                        .aspectRatio(3 / 2, contentMode: .fit).listRowInsets(EdgeInsets())
                ForEach(modelData.states.keys.sorted(), id: \.self) { key in
                    StateRow(stateName: key, items: modelData.states[key]!)
                }.listRowInsets(EdgeInsets())
            }
            .navigationTitle("Featured")
            .listStyle(.inset)
            .toolbar {
                Button {
                    showingProfile.toggle()
                } label: {
                    Image("blankprofilephoto").resizable()
                        .frame(width: 50, height: 40)
                        .clipShape(Circle())
                    /*Label("User Profile", systemImage: "person.crop.circle")*/
                }
                .sheet(isPresented: $showingProfile) {
                    ProfileHost()
                        .environmentObject(modelData)
                }
            }
        }
    }
    
    struct StateHome_Previews: PreviewProvider {
        static var previews: some View {
            StateHome().environmentObject(ModelData())
        }
    }
}
