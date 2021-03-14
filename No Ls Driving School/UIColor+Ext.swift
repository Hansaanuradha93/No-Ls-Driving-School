import UIKit

enum AssertColor: String {
    case darkestGray = "DarkGray"
    case lightGray = "LightGray"
}


extension UIColor {
    static func appColor(color: AssertColor) -> UIColor {
        return UIColor(named: color.rawValue)!
    }
}


struct AppColor {
    static let darkestGray = UIColor.appColor(color: .darkestGray)
    static let lightGray = UIColor.appColor(color: .lightGray)
}
