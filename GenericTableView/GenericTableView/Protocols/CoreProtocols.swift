import Foundation
protocol Viewable {
  associatedtype ViewModel
  var viewModel: ViewModel? { get set }
  func setupViewModel()
  func addObserver()
}
protocol ViewModelProtocol {
  var outputModel: [ListUIModel]? {get set}
  func startViewModel()
}

