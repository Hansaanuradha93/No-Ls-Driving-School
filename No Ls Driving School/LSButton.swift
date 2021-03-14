import UIKit

class LSButton: UIButton {

    // MARK: Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    
    required init?(coder: NSCoder) {  fatalError() }
    
    
    convenience init(backgroundColor: UIColor = AppColor.darkGray, title: String = "", titleColor: UIColor = AppColor.darkGray, fontSize: CGFloat = 16) {
        self.init(frame: .zero)
        let traits = [UIFontDescriptor.TraitKey.weight: UIFont.Weight.bold]
        var descriptor = UIFontDescriptor(fontAttributes: [UIFontDescriptor.AttributeName.family: Fonts.avenirNext])
        descriptor = descriptor.addingAttributes([UIFontDescriptor.AttributeName.traits: traits])
        
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.backgroundColor = backgroundColor
        self.titleLabel?.font = UIFont(descriptor: descriptor, size: fontSize)
    }
}
