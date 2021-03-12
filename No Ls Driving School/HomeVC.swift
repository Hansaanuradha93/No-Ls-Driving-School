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
        addButtonTargets()
    }
}


// MARK: Objc Methods
private extension HomeVC {
    
    @objc func theoryButtonTapped() {
        navigationController?.pushViewController(TheoryVC(), animated: true)
    }
    
    
    @objc func videosButtonTapped() {
        print("videos button tapped")
    }
    
    
    @objc func testBookingButtonTapped() {
        print("test bookings button tapped")
    }
    
    
    @objc func reviewsButtonTapped() {
        print("reviews button tapped")
    }
    
    
    @objc func showTellButtonTapped() {
        print("show tell button tapped")
    }
    
    
    @objc func contactButtonTapped() {
        print("contact button tapped")
    }
}


// MARK: - Private Methods
private extension HomeVC {
    
    func addButtonTargets() {
        theoryButton.addTarget(self, action: #selector(theoryButtonTapped), for: .touchUpInside)
        videosButton.addTarget(self, action: #selector(videosButtonTapped), for: .touchUpInside)
        testBookingButton.addTarget(self, action: #selector(testBookingButtonTapped), for: .touchUpInside)
        reviewsButton.addTarget(self, action: #selector(reviewsButtonTapped), for: .touchUpInside)
        showTellButton.addTarget(self, action: #selector(showTellButtonTapped), for: .touchUpInside)
        contactButton.addTarget(self, action: #selector(contactButtonTapped), for: .touchUpInside)
    }
    
    
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
        navigationController?.isNavigationBarHidden = true
    }
}
