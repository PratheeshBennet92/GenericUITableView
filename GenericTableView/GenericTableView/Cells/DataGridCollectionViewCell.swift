import UIKit
class DataGridCollectionViewCell: UICollectionViewCell {
  
  @IBOutlet weak var lblDay: UILabel!
  @IBOutlet weak var lblDate: UILabel!
  @IBOutlet weak var lblMonth: UILabel!
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }
  func configureCell(_ model: DateModel) {
    lblDay.text = model.day
    lblDate.text = model.date
    lblMonth.text = model.month
    setShadow()
  }
  func setShadow() {
    contentView.layer.borderWidth = 1.0
    contentView.layer.borderColor = UIColor.clear.cgColor
    contentView.layer.cornerRadius = 2.0
    contentView.layer.masksToBounds = true
    layer.backgroundColor = UIColor.white.cgColor
    layer.shadowColor = UIColor.ColorCode.shadowGray.cgColor
    layer.shadowOffset = CGSize(width: 0, height: 3.0)
    layer.shadowRadius = 5.0
    layer.shadowOpacity = 1.0
    layer.masksToBounds = false
    layer.shadowPath = UIBezierPath(roundedRect:self.bounds, cornerRadius:self.contentView.layer.cornerRadius).cgPath
  }
  func setNormalShadow() {
    layer.shadowOffset = CGSize(width: 0, height: 1.0)
    layer.shadowRadius = 2.0
    self.lblDay.font = UIFont.systemFont(ofSize: Constants.DateGrid.dayFontSize, weight: .regular)
    self.lblDate.font = UIFont.systemFont(ofSize: Constants.DateGrid.dateFontSize, weight: .regular)
    self.layer.backgroundColor = UIColor.ColorCode.veryLightGray.cgColor
    UIView.animate(withDuration: 0) {
      self.contentView.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
    }
  }
  func setSelectedShadow() {
    self.contentView.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
    DispatchQueue.main.async {
      UIView.animate(withDuration: 0.25) {
        self.layer.shadowOffset = CGSize(width: 0, height: 5.0)
        self.layer.shadowRadius = 10.0
        self.lblDay.font = UIFont.systemFont(ofSize: Constants.DateGrid.dayFontSize, weight: .medium)
        self.lblDate.font = UIFont.systemFont(ofSize: Constants.DateGrid.dateFontSize, weight: .medium)
        self.layer.backgroundColor = UIColor.white.cgColor
        self.contentView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
      } completion: { (bool) in
      }
    }
  }
}
