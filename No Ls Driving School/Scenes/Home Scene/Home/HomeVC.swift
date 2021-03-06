import UIKit

class HomeVC: UIViewController {
    
    // MARK: Properties
    private let headerImageView = LSImageView(image: Asserts.header)
    private let theoryButton = LSButton(title: Strings.theory, titleColor: .white)
    private let videosButton = LSButton(title: Strings.videos, titleColor: .white)
    private let testBookingButton = LSButton(title: Strings.testBookings, titleColor: .white)
    private let reviewsButton = LSButton(title: Strings.reviews, titleColor: .white)
    private let showTellButton = LSButton(title: Strings.showTell, titleColor: .white)
    private let contactButton = LSButton(title: Strings.contacts, titleColor: .white)
    
    
    // MARK: View Controller
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        addButtonTargets()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupHeaders()
    }
}


// MARK: Objc Methods
private extension HomeVC {
    
    @objc func theoryButtonTapped() {
        navigationController?.pushViewController(TheoryVC(), animated: true)
    }
    
    
    @objc func videosButtonTapped() {
        navigationController?.pushViewController(VideosVC(), animated: true)
    }
    
    
    @objc func testBookingButtonTapped() {
        navigationController?.pushViewController(TestBookingsVC(), animated: true)
    }
    
    
    @objc func reviewsButtonTapped() {
        self.tabBarController?.selectedIndex = 1
    }
    
    
    @objc func showTellButtonTapped() {
        navigationController?.pushViewController(ShowTellVC(), animated: true)
    }
    
    
    @objc func contactButtonTapped() {
        self.tabBarController?.selectedIndex = 2
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
        
        headerImageView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.centerYAnchor, trailing: view.trailingAnchor, padding: .init(top: 0, left: 20, bottom: 0, right: 20))
        
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
