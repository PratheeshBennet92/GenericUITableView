import UIKit
import Foundation
class CellConfigurator<CellType: DynamicDataCell, DataType: UIModel> where CellType: UITableViewCell  {
  // MARK: Property Declrations
  var item: UIModel?
  var cell: CellType?
  // MARK: Methods
  init(item: UIModel, cell: CellType) {
    self.item = item
    self.cell = cell
    configure()
  }
  func configure() {
    cell?.configure(item as? CellType.DataType)
  }
}
