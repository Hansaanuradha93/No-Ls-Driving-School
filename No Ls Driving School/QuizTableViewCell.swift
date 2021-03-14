import UIKit

class QuizTableViewCell: UITableViewCell {

    // MARK: Properties
    static let reuseID = "QuizTableViewCell"
    private let questionLabel = LSTitleLabel(textColor: AppColor.darkGray, fontSize: 18, textAlignment: .left, numberOfLines: 0)
    private let answerLabel = LSLabel(textColor: AppColor.darkGray, fontSize: 16, textAlignment: .left, numberOfLines: 0)
    
    // MARK: Initializers
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    
    required init?(coder: NSCoder) { fatalError() }
}


// MARK: - Private Methods
extension QuizTableViewCell {
    
    func set(quiz: TellMeQuiz) {
        questionLabel.text = quiz.question
        answerLabel.text = quiz.answer
    }
    
    
    private func configure() {
        selectionStyle = .none
        contentView.addSubviews(questionLabel, answerLabel)
        questionLabel.anchor(top: contentView.topAnchor, leading: contentView.leadingAnchor, bottom: nil, trailing: contentView.trailingAnchor)
        answerLabel.anchor(top: questionLabel.bottomAnchor, leading: contentView.leadingAnchor, bottom: nil, trailing: contentView.trailingAnchor)
    }
}
