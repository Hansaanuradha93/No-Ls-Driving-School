import UIKit

class ShowTellVC: UIViewController {
    
    // MARK: Properties
    private let navHeaderImage = LSImageView(image: Asserts.navHeader, contentMode: .scaleAspectFit)
    private let titleButton = LSButton(backgroundColor: AppColor.lightGray, title: "Show Me Tell Me Questions", fontSize: 22)
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
        return 4
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: VideoTableViewCell.reuseID, for: indexPath) as! VideoTableViewCell
        cell.set(title: "Title")
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
       let view = tableView.dequeueReusableHeaderFooterView(withIdentifier: HeaderView.reuseID) as! HeaderView
       view.titleLabel.text = "Section Title"

       return view
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
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
        tableView.register(HeaderView.self, forHeaderFooterViewReuseIdentifier: HeaderView.reuseID)
    }
    
    
    func setupHeaders() {
        view.backgroundColor = .white
        navigationController?.isNavigationBarHidden = true
    }
}
