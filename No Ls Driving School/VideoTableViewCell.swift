import UIKit

class VideoTableViewCell: UITableViewCell {

    // MARK: Properties
    static let reuseID = "VideoTableViewCell"
    private let titleLabel = LSTitleLabel(fontSize: 18, textAlignment: .left, numberOfLines: 0)
    
    // MARK: Initializers
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    
    required init?(coder: NSCoder) { fatalError() }
}


// MARK: - Private Methods
extension VideoTableViewCell {
    
    func set(title: String) {
        titleLabel.text = title
    }
    
    
    private func configure() {
        selectionStyle = .none
        addSubviews(titleLabel)
        titleLabel.fillSuperview(padding: .init(top: 0, left: 0, bottom: 0, right: 0))
    }
}
