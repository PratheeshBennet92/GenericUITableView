import UIKit
class ViewController: UIViewController {
  lazy private var listView: ListViewController<CardCell, ScheduleUIModel> = {
    let view = ListViewController<CardCell, ScheduleUIModel>()
    view.view.translatesAutoresizingMaskIntoConstraints  = false
    return view
  }()
  override func viewDidLoad() {
    super.viewDidLoad()
    addListGrid()
    // Do any additional setup after loading the view.
  }
  private func addListGrid() {
    self.listView.listDataSource?.dataSource = [ScheduleUIModel(id: 0, name: "Mr. Bean", type: "Comedy", language: "English", genres: "Comedy"),
                                                ScheduleUIModel(id: 1, name: "Mr. Bean Animated Series", type: "Comedy", language: "English", genres: "Comedy")]
    listView.view.translatesAutoresizingMaskIntoConstraints  = false
    self.addChild(listView)
    self.view.addSubview(listView.view)
    listView.view.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
    listView.view.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
    listView.view.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
    listView.view.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
    listView.didMove(toParent: self)
  }


}

