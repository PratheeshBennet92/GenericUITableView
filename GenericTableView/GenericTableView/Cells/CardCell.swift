import UIKit
class CardCell: UITableViewCell, DynamicDataCell {
  var buttonPressedAction: ((ScheduleUIModel?) -> Void)?
  typealias DataType =  ScheduleUIModel
  @IBOutlet weak var imgView: UIImageView!
  @IBOutlet weak var messageLabel: UILabel!
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var containerView: UIView!
  @IBOutlet weak var shadowView: UIView!
  @IBOutlet weak var lblNetwork: UILabel!
  override func awakeFromNib() {
    super.awakeFromNib()
    configureCell()
  }
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
  }
  // MARK: Shadow Declrations
  override func layoutSubviews() {
    super.layoutSubviews()
   // self.titleLabel.textColor = UIView().tintColor
    //self.messageLabel.textColor = UIColor.black
    //self.lblNetwork.textColor = UIColor.black
    self.containerView.backgroundColor = UIColor.white
    containerView.layer.masksToBounds = false
    containerView.layer.cornerRadius = 8
    containerView.layer.shadowColor = UIColor.black.cgColor
    containerView.layer.shadowOffset = CGSize(width:0.5, height:4.0);
    containerView.layer.shadowOpacity = 0.5
    containerView.layer.shadowRadius = 5.0
    //shadowView.isHidden = true
  }
  private func configureCell() {
    self.selectionStyle = .none
    self.contentView.backgroundColor = .clear
  }
  // MARK: Data binding
  func configure(_ dataType: ScheduleUIModel?) {
    lblNetwork.text = dataType?.network
    titleLabel.text = dataType?.name
    messageLabel.text = dataType?.time
    imgView?.image = UIImage(named: "Placeholder")
    if let url = dataType?.mediumUrl {
    imgView.downloadImageFrom(link: url, contentMode: UIView.ContentMode.scaleToFill)
    }
  }
  
}
