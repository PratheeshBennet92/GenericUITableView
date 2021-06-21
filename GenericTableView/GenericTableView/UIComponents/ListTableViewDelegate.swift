import UIKit
protocol ListCallBacK: class {
  func didSelectionOfRow(_ indexPath: IndexPath)
}
class ListTableViewDelegate: NSObject, UITableViewDelegate, UIScrollViewDelegate {
  // MARK: Property Declrations
  private var isScrolledUp: Bool = false
  weak var delegate: ListCallBacK?
  var lastContentOffset: CGFloat = .zero
  // MARK: Methods
  init(delegate: ListCallBacK) {
    self.delegate = delegate
  }
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    self.delegate?.didSelectionOfRow(indexPath)
  }
}
