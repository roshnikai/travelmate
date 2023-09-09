import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var name: String
    var id: Int
    var city: String
    var isFeatured: Bool
    var isFavorite: Bool
    var description: String
    var state: State
    enum State: String, CaseIterable, Codable {
        case dc = "DC"
        case md = "Maryland"
        case va = "Virginia"
    }
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    var featureImage: Image? {
        isFeatured ? Image(imageName) : nil
    }
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
