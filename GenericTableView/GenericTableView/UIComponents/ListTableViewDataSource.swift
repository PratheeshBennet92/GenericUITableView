import UIKit
protocol ListDataSource: AnyObject {

}
class ListTableViewDataSource<Cell: DynamicDataCell, DataType: ListUIModel>: NSObject, UITableViewDataSource where Cell: UITableViewCell {
  // MARK: Property Declrations
  var dataSource: [ListUIModel]? {
    didSet {
      self.dataSetCallback?()
    }
  }
  var dataSetCallback: (() -> Void)?
  var configurator: CellConfigurator<Cell, DataType>!
  weak var delegate: ListDataSource?
  // MARK: Methods
  init(delegate: ListDataSource) {
    self.delegate = delegate
  }
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return dataSource?.count ?? .zero
  }
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: Cell.self)) as? Cell else {
      return UITableViewCell()
    }
    if let configItem = dataSource?[indexPath.row] {
      configurator = CellConfigurator<Cell, DataType>(item: configItem, cell: cell)
    }
    return cell
  }
}
