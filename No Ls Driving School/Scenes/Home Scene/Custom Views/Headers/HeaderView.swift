import UIKit

class HeaderView: UITableViewHeaderFooterView {
    
    // MARK: Properties
    static let reuseID = "HeaderView"
    private let titleLabel = LSTitleLabel(textColor: AppColor.darkestGray, fontSize: 20, textAlignment: .left)

    
    // MARK: Initializers
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    
    required init?(coder: NSCoder) { fatalError() }
}


// MARK: - Methods
extension HeaderView {
    
    func set(title: String) {
        titleLabel.text = title.uppercased()
    }
    
    
    private func configure() {
        contentView.backgroundColor = .white
        contentView.addSubview(titleLabel)
        titleLabel.fillSuperview()
    }
}
