import UIKit
protocol ListDelegates: AnyObject {
  func didSelectionOfRow(_ indexPath: IndexPath)
}
class ListTableViewDelegate: NSObject, UITableViewDelegate, UIScrollViewDelegate {
  // MARK: Property Declrations
  private var isScrolledUp: Bool = false
  weak var delegate: ListDelegates?
  var lastContentOffset: CGFloat = .zero
  // MARK: Methods
  init(delegate: ListDelegates) {
    self.delegate = delegate
  }
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    self.delegate?.didSelectionOfRow(indexPath)
  }
}
