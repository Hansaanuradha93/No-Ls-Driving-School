import UIKit

enum AssertColor: String {
    case darkestGray = "DarkestGray"
    case darkGray = "DarkGray"
    case lightGray = "LightGray"
}


extension UIColor {
    static func appColor(color: AssertColor) -> UIColor {
        return UIColor(named: color.rawValue)!
    }
}


struct AppColor {
    static let darkestGray = UIColor.appColor(color: .darkestGray)
    static let darkGray = UIColor.appColor(color: .darkGray)
    static let lightGray = UIColor.appColor(color: .lightGray)
}
