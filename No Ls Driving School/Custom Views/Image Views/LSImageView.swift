import UIKit

class LSImageView: UIImageView {
    
    // MARK: Initialisers
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    
    required init?(coder: NSCoder) { fatalError() }

    
    convenience init(image: UIImage, contentMode: ContentMode = .scaleAspectFill) {
        self.init(frame: .zero)
        self.image = image
        self.contentMode = contentMode
        self.clipsToBounds = true
    }
}
