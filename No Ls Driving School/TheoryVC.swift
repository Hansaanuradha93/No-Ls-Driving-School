import UIKit

class TheoryVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHeaders()
    }
}


// MARK: - Private Methods
private extension TheoryVC {
    
    func setupHeaders() {
        view.backgroundColor = .white
        navigationController?.isNavigationBarHidden = true
    }
}
