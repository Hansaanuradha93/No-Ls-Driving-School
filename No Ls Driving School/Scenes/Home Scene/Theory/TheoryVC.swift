import UIKit

class TheoryVC: UIViewController {
    
    // MARK: Properties
    private let navHeaderImage = LSImageView(image: Asserts.navHeader, contentMode: .scaleAspectFit)
    private let titleButton = LSButton(backgroundColor: AppColor.lightGray, title: Strings.theoryTest, fontSize: 22)
    private let contentLabel = LSLabel(text: Strings.theoryTestDescription, textColor: AppColor.darkGray, fontSize: 20, textAlignment: .center, numberOfLines: 0)
    private let theoryTestImage = LSImageView(image: Asserts.theoryTest, contentMode: .scaleAspectFit)
    
    
    // MARK: View Controller
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHeaders()
        setupViews()
        addTargets()
    }
}


// MARK: - Private Methods
private extension TheoryVC {
    
    @objc func imageTapped() {
        let urlString = "https://adi84452.theorytestpro.co.uk"
        guard let url = URL(string: urlString) else { return }
        presentSafariVC(with: url)
    }
    
    
    func addTargets() {
        theoryTestImage.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
        theoryTestImage.addGestureRecognizer(tapGesture)
    }
    
    
    func setupViews() {
        view.addSubviews(navHeaderImage, titleButton, contentLabel, theoryTestImage)
        
        navHeaderImage.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 0, left: 20, bottom: 0, right: 20), size: .init(width: 0, height: 150))
        titleButton.anchor(top: navHeaderImage.bottomAnchor, leading: navHeaderImage.leadingAnchor, bottom: nil, trailing: navHeaderImage.trailingAnchor, padding: .init(top: 40, left: 15, bottom: 0, right: 15), size: .init(width: 0, height: 30))
        contentLabel.anchor(top: titleButton.bottomAnchor, leading: titleButton.leadingAnchor, bottom: nil, trailing: titleButton.trailingAnchor, padding: .init(top: 30, left: 0, bottom: 0, right: 0))
        theoryTestImage.centerHorizontallyInSuperView()
        theoryTestImage.anchor(top: contentLabel.bottomAnchor, leading: nil, bottom: nil, trailing: nil, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 190, height: 170))
    }
    
    
    func setupHeaders() {
        view.backgroundColor = .white
        navigationController?.isNavigationBarHidden = false
    }
}
