import UIKit

class HeaderView: UITableViewHeaderFooterView {
    
    // MARK: Properties
    static let reuseID = "HeaderView"
    let titleLabel = UILabel()

    
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
        titleLabel.text = title
    }
    
    
    func configure() {
        contentView.backgroundColor = .white
        contentView.addSubview(titleLabel)
        titleLabel.fillSuperview()
    }
}
