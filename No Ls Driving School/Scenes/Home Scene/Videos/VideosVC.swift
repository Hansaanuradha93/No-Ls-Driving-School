import UIKit

class VideosVC: UIViewController {
    
    // MARK: Properties
    private let viewModel = VideosVM()
    private let navHeaderImage = LSImageView(image: Asserts.navHeader, contentMode: .scaleAspectFit)
    private let titleButton = LSButton(backgroundColor: AppColor.lightGray, title: "Recommended Videos", fontSize: 22)
    private let videoListTableView = UITableView()
    

    // MARK: View Controller
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHeaders()
        setupViews()
    }
}


// MARK: - Table View
extension VideosVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.youtubeArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: VideoTableViewCell.reuseID, for: indexPath) as! VideoTableViewCell
        let title = viewModel.youtubeArray[indexPath.row].name
        cell.set(title: title)
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedYoutubeLink = viewModel.youtubeArray[indexPath.row].urlString
        guard let url = URL(string: selectedYoutubeLink) else { return }
        presentSafariVC(with: url)
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
}


// MARK: - Private Methods
private extension VideosVC {
    
    func setupViews() {
        view.addSubviews(navHeaderImage, titleButton, videoListTableView)
        
        navHeaderImage.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 0, left: 20, bottom: 0, right: 20), size: .init(width: 0, height: 150))
        titleButton.anchor(top: navHeaderImage.bottomAnchor, leading: navHeaderImage.leadingAnchor, bottom: nil, trailing: navHeaderImage.trailingAnchor, padding: .init(top: 40, left: 15, bottom: 0, right: 15), size: .init(width: 0, height: 30))
        videoListTableView.anchor(top: titleButton.bottomAnchor, leading: titleButton.leadingAnchor, bottom: view.bottomAnchor, trailing: titleButton.trailingAnchor, padding: .init(top: 30, left: 0, bottom: 0, right: 0))
        
        videoListTableView.dataSource = self
        videoListTableView.delegate = self
        videoListTableView.separatorStyle = .none
        videoListTableView.showsVerticalScrollIndicator = false
        videoListTableView.register(VideoTableViewCell.self, forCellReuseIdentifier: VideoTableViewCell.reuseID)
    }
    
    
    func setupHeaders() {
        view.backgroundColor = .white
        navigationController?.isNavigationBarHidden = true
    }
}
