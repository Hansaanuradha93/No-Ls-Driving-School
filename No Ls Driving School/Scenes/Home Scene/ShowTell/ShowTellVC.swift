import UIKit

class ShowTellVC: UIViewController {
    
    // MARK: Properties
    private let viewModel = ShowTellVM()
    private let navHeaderImage = LSImageView(image: Asserts.navHeader, contentMode: .scaleAspectFit)
    private let titleButton = LSButton(backgroundColor: AppColor.lightGray, title: Strings.showMeTellMeQuestions, fontSize: 22)
    private let tableView = UITableView()
    
    
    // MARK: View Controller
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHeaders()
        setupViews()
    }
}


// MARK: - Table View
extension ShowTellVC: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return viewModel.showQuestions.count
        } else if section == 1 {
            return viewModel.tellMeQuestions.count
        } else {
            return 0
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: VideoTableViewCell.reuseID, for: indexPath) as! VideoTableViewCell
            cell.set(title: viewModel.showQuestions[indexPath.row])
            return cell
        } else if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: QuizTableViewCell.reuseID, for: indexPath) as! QuizTableViewCell
            cell.set(quiz: viewModel.tellMeQuestions[indexPath.row])
            return cell
        } else {
            let cell = UITableViewCell()
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = tableView.dequeueReusableHeaderFooterView(withIdentifier: HeaderView.reuseID) as! HeaderView
        if section == 0 {
            view.set(title: Strings.showMe)
        } else if section == 1 {
            view.set(title: Strings.tellMe)
        } else {
            view.set(title: "")
        }
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 100
        } else if indexPath.section == 1 {
            if indexPath.row == 8 {
                return 350
            } else if indexPath.row == 2 {
                return 240
            }
            return 200
        } else { return 0 }
    }
}


// MARK: - Private Methods
private extension ShowTellVC {
    
    func setupViews() {
        view.addSubviews(navHeaderImage, titleButton, tableView)
        
        navHeaderImage.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 0, left: 20, bottom: 0, right: 20), size: .init(width: 0, height: 150))
        titleButton.anchor(top: navHeaderImage.bottomAnchor, leading: navHeaderImage.leadingAnchor, bottom: nil, trailing: navHeaderImage.trailingAnchor, padding: .init(top: 40, left: 15, bottom: 0, right: 15), size: .init(width: 0, height: 30))
        tableView.anchor(top: titleButton.bottomAnchor, leading: titleButton.leadingAnchor, bottom: view.bottomAnchor, trailing: titleButton.trailingAnchor, padding: .init(top: 30, left: 0, bottom: 0, right: 0))

        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorStyle = .none
        tableView.showsVerticalScrollIndicator = false
        tableView.register(VideoTableViewCell.self, forCellReuseIdentifier: VideoTableViewCell.reuseID)
        tableView.register(QuizTableViewCell.self, forCellReuseIdentifier: QuizTableViewCell.reuseID)
        tableView.register(HeaderView.self, forHeaderFooterViewReuseIdentifier: HeaderView.reuseID)
    }
    
    
    func setupHeaders() {
        view.backgroundColor = .white
        navigationController?.isNavigationBarHidden = false
    }
}
