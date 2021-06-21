import Foundation
import RxSwift
import RxCocoa
protocol Viewable {
  associatedtype ViewModel
  associatedtype Coordinator
  associatedtype CoordinatorDelegate
  var coordinatorDelegate: CoordinatorDelegate? { get set }
  var coordinator: Coordinator? { get set }
  var viewModel: ViewModel? { get set }
  func setupViewModel()
  func addObserver()
}
protocol ViewModelProtocol {
  var outputModel: [UIModel]? {get set}
  func startViewModel()
  var response: BehaviorRelay<[UIModel]?>{get set}
  var error: BehaviorRelay<APIError?>{get set}
}
protocol UseCaseProtocol {
  var response: BehaviorRelay<Codable?> {get set}
  func executeUseCase()
  func addObserver()
}
protocol DataRepositoryProtocol {
  var response: BehaviorRelay<Codable?> {get set}
  func executeFetchRequest()
  func addObserver()
}
protocol LocalStoreProtocol {
  
}
protocol RemoteStoreProtocol {
  var responseObserver: PublishSubject<Codable?>? { get set }
  func connectRemote()
}
