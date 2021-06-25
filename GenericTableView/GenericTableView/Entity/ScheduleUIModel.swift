import Foundation
struct ScheduleUIModel: ListUIModel, Codable {
  var identifier: String? = String(describing: Self.self)
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
