import UIKit

class HomeVC: UIViewController {
    
    // MARK: Properties
    private let headerImageView = LSImageView(image: Asserts.header,contentMode: .scaleAspectFill)
    private let theoryButton = LSButton(backgroundColor: .darkGray, title: "Theory", titleColor: .white)
    private let videosButton = LSButton(backgroundColor: .darkGray, title: "Videos", titleColor: .white)
    private let testBookingButton = LSButton(backgroundColor: .darkGray, title: "Test Booking", titleColor: .white)
    private let reviewsButton = LSButton(backgroundColor: .darkGray, title: "Reviews", titleColor: .white)
    private let showTellButton = LSButton(backgroundColor: .darkGray, title: "Show Tell", titleColor: .white)
    private let contactButton = LSButton(backgroundColor: .darkGray, title: "Contact", titleColor: .white)
    
    
    // MARK: View Controller
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHeaders()
        setupViews()
    }
}


// MARK: - Private Methods
private extension HomeVC {
    
    func setupViews() {
        view.addSubview(headerImageView)
        
        headerImageView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.centerYAnchor, trailing: view.trailingAnchor)
        
        let topStackView = UIStackView(arrangedSubviews: [theoryButton, videosButton])
        topStackView.distribution = .fillEqually
        topStackView.spacing = 20
        
        let middleView = UIStackView(arrangedSubviews: [testBookingButton, reviewsButton])
        middleView.distribution = .fillEqually
        middleView.spacing = 20
        
        let bottomView = UIStackView(arrangedSubviews: [showTellButton, contactButton])
        bottomView.distribution = .fillEqually
        bottomView.spacing = 20
        
        let overrallStackView = UIStackView(arrangedSubviews: [topStackView, middleView, bottomView])
        overrallStackView.axis = .vertical
        overrallStackView.distribution = .fillEqually
        overrallStackView.spacing = 20
        
        view.addSubview(overrallStackView)
        
        overrallStackView.anchor(top: headerImageView.bottomAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 20, left: 20, bottom: 0, right: 20), size: .init(width: 0, height: 220))
    }
    
    
    func setupHeaders() {
        view.backgroundColor = .white
        navigationController?.navigationBar.isHidden = true
    }
}
