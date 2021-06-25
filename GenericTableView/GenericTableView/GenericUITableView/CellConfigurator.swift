import UIKit
import Foundation
class CellConfigurator<CellType: DynamicDataCell, DataType: ListUIModel> where CellType: UITableViewCell  {
  // MARK: Property Declrations
  var item: ListUIModel?
  var cell: CellType?
  // MARK: Methods
  init(item: ListUIModel, cell: CellType) {
    self.item = item
    self.cell = cell
    configure()
  }
  func configure() {
    cell?.configure(item as? CellType.DataType)
  }
}
