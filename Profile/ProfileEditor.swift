import SwiftUI


struct ProfileEditor: View {
    @Binding var profile: Profile
    @State private var image = UIImage()
    @State private var showSheet = false
    var dateRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .year, value: 0, to: profile.goalDate)!
        let max = Calendar.current.date(byAdding: .year, value: 1, to: profile.goalDate)!
        return min...max
    }
    var body: some View {
        List {
            HStack {
                Text("Username").bold()
                Divider()
                TextField("Username", text: $profile.username)
            }
            Toggle(isOn: $profile.prefersNotifications) {
                    Text("Enable Notifications").bold()
            }
            VStack(alignment: .leading, spacing: 20) {
                Text("Profile Photo").bold()
                /*ZStack(alignment: .bottomTrailing) {
                    Image("profilephoto")
                        .resizable()
                        .frame(width:100, height: 100)
                        .clipShape(Circle())
                    Image(systemName: "plus")
                    .foregroundColor(.white)
                    .frame(width: 25, height: 25)
                    .background(Color.blue)
                    .clipShape(Circle())
                }*/
                HStack {
                    Image("blankprofilephoto")
                        .resizable()
                        .frame(width: 100, height: 80)
                        .clipShape(Circle())
                    VStack {
                        Text("Change photo").bold()
                        Text("Photo library")
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(Color(#colorLiteral(red: 0.262745098, green: 0.0862745098, blue: 0.8588235294, alpha: 1)))
                            .cornerRadius(16)
                            .foregroundColor(.white)
                            .padding(.horizontal, 20)
                            .onTapGesture {
                                showSheet = true
                            }
                            .sheet(isPresented: $showSheet) {
                                ImagePicker(sourceType: .photoLibrary, selectedImage: self.$image)
                            }
                        Text("Camera")
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(Color(#colorLiteral(red: 0.262745098, green: 0.0862745098, blue: 0.8588235294, alpha: 1)))
                            .cornerRadius(16)
                            .foregroundColor(.white)
                            .padding(.horizontal, 20)
                            .onTapGesture {
                                showSheet = true
                            }
                            .sheet(isPresented: $showSheet) {
                                ImagePicker(sourceType: .camera, selectedImage: self.$image)
                            }
                    }
                }
            }
            DatePicker(selection: $profile.goalDate, in: dateRange, displayedComponents: .date) {
                    Text("Next Trip").bold()
            }
        }
    }
}


struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
