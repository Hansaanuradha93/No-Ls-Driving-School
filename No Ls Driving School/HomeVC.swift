import UIKit

class HomeVC: UIViewController {
    
    // MARK: Properties
    private var scrollView: UIScrollView!
    private let contentView = UIView()


    // MARK: View Controller
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHeaders()
        setupScrollView()
    }
}


// MARK: - Private Methods
private extension HomeVC {
    
    func setupHeaders() {
        view.backgroundColor = .white
        navigationController?.navigationBar.isHidden = true
    }
    
    
    func setupScrollView() {
        scrollView = UIScrollView()
        scrollView.backgroundColor = .white
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        scrollView.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor)
        contentView.anchor(top: scrollView.topAnchor, leading: scrollView.leadingAnchor, bottom: scrollView.bottomAnchor, trailing: scrollView.trailingAnchor)
        
        NSLayoutConstraint.activate([
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            contentView.heightAnchor.constraint(equalToConstant: 800)
        ])
    }
}
