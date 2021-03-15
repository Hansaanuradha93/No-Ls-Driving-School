import UIKit

class LSTabBar: UITabBarController {

    // MARK: View Controller
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
}


// MARK: - Private Methods
private extension LSTabBar {
    
    func createHomeNC() -> UINavigationController {
        let homeVC = HomeVC()
        homeVC.tabBarItem = UITabBarItem(title: "Home", image: Asserts.home.withRenderingMode(.alwaysOriginal), tag: 0)
        return UINavigationController(rootViewController: homeVC)
    }
    
    
    func createReviewsNC() -> UINavigationController {
        let reviewsVC = ReviewsVC()
        reviewsVC.tabBarItem = UITabBarItem(title: "Reviews", image: Asserts.reviews.withRenderingMode(.alwaysOriginal), tag: 1)
        return UINavigationController(rootViewController: reviewsVC)
    }
    
    
    func createContactsNC() -> UINavigationController {
        let contactsVC = ContactsVC()
        contactsVC.tabBarItem = UITabBarItem(title: "Contacts", image: Asserts.contacts.withRenderingMode(.alwaysOriginal), tag: 2)
        return UINavigationController(rootViewController: contactsVC)
    }
    
    
    func setupUI() {
        UITabBar.appearance().tintColor = .black
        tabBar.barTintColor = .white
        viewControllers = [createHomeNC(), createReviewsNC(), createContactsNC()]
    }
}
