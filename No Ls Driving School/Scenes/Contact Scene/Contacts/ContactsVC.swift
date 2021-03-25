import UIKit

class ContactsVC: UIViewController {
    
    // MARK: Properties
    private let navHeaderImage = LSImageView(image: Asserts.navHeader, contentMode: .scaleAspectFit)
    private let titleButton = LSButton(backgroundColor: AppColor.lightGray, title: Strings.contactUs, fontSize: 22)
    private let contactFormImageView = LSImageView(image: Asserts.websiteContact, contentMode: .scaleAspectFit)
    private let mobileContactImageView = LSImageView(image: Asserts.mobileContact, contentMode: .scaleAspectFit)
    

    // MARK: View Controller
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHeaders()
        setupViews()
        addTargets()
    }
}


// MARK: - Private Methods
private extension ContactsVC {
    
    @objc func contactImageTapped() {
        let urlString = "https://bristoldrivinglessons.com/contact2/"
        guard let url = URL(string: urlString) else { return }
        presentSafariVC(with: url)
    }
    
    
    @objc func mobileImageTapped() {
        let phoneNumber = "07790469081"
        callNumber(phoneNumber: phoneNumber)
    }
    
    
    func callNumber(phoneNumber:String) {
        if let phoneCallURL = URL(string: "tel://\(phoneNumber)") {
            let application:UIApplication = UIApplication.shared
            if (application.canOpenURL(phoneCallURL)) {
                application.open(phoneCallURL, options: [:], completionHandler: nil)
            }
        }
    }
    
    
    func addTargets() {
        contactFormImageView.isUserInteractionEnabled = true
        let webPageContactTapGesture = UITapGestureRecognizer(target: self, action: #selector(contactImageTapped))
        contactFormImageView.addGestureRecognizer(webPageContactTapGesture)
        
        mobileContactImageView.isUserInteractionEnabled = true
        let mobileContactTapGesture = UITapGestureRecognizer(target: self, action: #selector(mobileImageTapped))
        mobileContactImageView.addGestureRecognizer(mobileContactTapGesture)
    }
    
    
    func setupViews() {
        view.addSubviews(navHeaderImage, titleButton, contactFormImageView, mobileContactImageView)
        
        navHeaderImage.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 0, left: 20, bottom: 0, right: 20), size: .init(width: 0, height: 150))
        titleButton.anchor(top: navHeaderImage.bottomAnchor, leading: navHeaderImage.leadingAnchor, bottom: nil, trailing: navHeaderImage.trailingAnchor, padding: .init(top: 40, left: 15, bottom: 0, right: 15), size: .init(width: 0, height: 30))
        contactFormImageView.anchor(top: titleButton.bottomAnchor, leading: titleButton.leadingAnchor, bottom: nil, trailing: titleButton.trailingAnchor, padding: .init(top: 50, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 80))
        mobileContactImageView.anchor(top: contactFormImageView.bottomAnchor, leading: titleButton.leadingAnchor, bottom: nil, trailing: titleButton.trailingAnchor, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 80))
    }
    
    
    func setupHeaders() {
        view.backgroundColor = .white
        navigationController?.isNavigationBarHidden = true
    }
}
