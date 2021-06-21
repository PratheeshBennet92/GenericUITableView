import Foundation
struct ScheduleUIModel: UIModel, Codable {
  var id: Int?
  var time: String?
  var name: String?
  var type: String?
  var language: String?
  var genres: String?
  var runtime: String?
  var network: String?
  var rating: String?
  var summary: String?
  var mediumUrl: String?
  var originalUrl: String?
  var module: String?
  var season: String?
  var episode: String?
}
