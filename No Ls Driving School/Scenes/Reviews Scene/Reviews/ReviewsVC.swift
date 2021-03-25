import UIKit

class ReviewsVC: UIViewController {
    
    // MARK: Properties
    private let navHeaderImage = LSImageView(image: Asserts.navHeader, contentMode: .scaleAspectFit)
    private let reviewImageView = LSImageView(image: Asserts.review, contentMode: .scaleAspectFit)
    private let starImageView = LSImageView(image: Asserts.stars, contentMode: .scaleAspectFill)
    private let contentLabel = LSLabel(text: Strings.reviewsDescriptions, textColor: AppColor.darkGray, fontSize: 18, textAlignment: .center, numberOfLines: 0)
    private let reviewButton = LSButton(backgroundColor: .white, title: Strings.leaveFreeIndexReview, titleColor: .red, fontSize: 20)

    
    // MARK: View Controller
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHeaders()
        setupViews()
    }
}


// MARK: - Private Methods
private extension ReviewsVC {
    
    @objc func reviewButtonTapped() {
        let urlString = "https://www.freeindex.co.uk/profile(no-l-s-of-bristol)_330971.htm?p=2"
        guard let url = URL(string: urlString) else { return }
        presentSafariVC(with: url)
    }
    
    
    func setupViews() {
        view.addSubviews(navHeaderImage, reviewImageView, starImageView, contentLabel, reviewButton)
        
        navHeaderImage.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 0, left: 20, bottom: 0, right: 20), size: .init(width: 0, height: 150))
        reviewImageView.anchor(top: navHeaderImage.bottomAnchor, leading: navHeaderImage.leadingAnchor, bottom: nil, trailing: navHeaderImage.trailingAnchor, padding: .init(top: 20, left: 10, bottom: 0, right: 10), size: .init(width: 0, height: 150))
        starImageView.anchor(top: reviewImageView.bottomAnchor, leading: reviewImageView.leadingAnchor, bottom: nil, trailing: reviewImageView.trailingAnchor, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 50))
        contentLabel.anchor(top: starImageView.bottomAnchor, leading: starImageView.leadingAnchor, bottom: nil, trailing: starImageView.trailingAnchor, padding: .init(top: 20, left: 0, bottom: 0, right: 0))
        reviewButton.anchor(top: contentLabel.bottomAnchor, leading: starImageView.leadingAnchor, bottom: nil, trailing: starImageView.trailingAnchor, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 50))

        reviewButton.addTarget(self, action: #selector(reviewButtonTapped), for: .touchUpInside)
    }
    
    
    func setupHeaders() {
        view.backgroundColor = .white
        navigationController?.isNavigationBarHidden = true
    }
}

