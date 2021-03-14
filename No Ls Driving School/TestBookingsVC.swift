//
//  TestBookingsVC.swift
//  No Ls Driving School
//
//  Created by Hansa Anuradha on 2021-03-14.
//

import UIKit

class TestBookingsVC: UIViewController {
    
    // MARK: Properties
    private let viewModel = TestBookingsVM()
    private let navHeaderImage = LSImageView(image: Asserts.navHeader, contentMode: .scaleAspectFit)
    private let titleButton = LSButton(backgroundColor: AppColor.lightGray, title: "Test Bookings", fontSize: 22)
    private let contentLabel = LSLabel(text: "Book or change your theory or practical test. Make sure you are ready for your test before you take it!", textColor: AppColor.darkestGray, fontSize: 20, textAlignment: .center, numberOfLines: 0)
    private let tableView = UITableView()
    
    // MARK: View Controller
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHeaders()
        setupViews()
    }
}


// MARK: - Table View
extension TestBookingsVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.webPagesArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: VideoTableViewCell.reuseID, for: indexPath) as! VideoTableViewCell
        let title = viewModel.webPagesArray[indexPath.row].name
        cell.set(title: title)
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedYoutubeLink = viewModel.webPagesArray[indexPath.row].urlString
        guard let url = URL(string: selectedYoutubeLink) else { return }
        presentSafariVC(with: url)
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
}


// MARK: - Private Methods
private extension TestBookingsVC {
    
    func setupViews() {
        view.addSubviews(navHeaderImage, titleButton, contentLabel, tableView)
        
        navHeaderImage.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 0, left: 20, bottom: 0, right: 20), size: .init(width: 0, height: 150))
        titleButton.anchor(top: navHeaderImage.bottomAnchor, leading: navHeaderImage.leadingAnchor, bottom: nil, trailing: navHeaderImage.trailingAnchor, padding: .init(top: 40, left: 15, bottom: 0, right: 15), size: .init(width: 0, height: 30))
        contentLabel.anchor(top: titleButton.bottomAnchor, leading: titleButton.leadingAnchor, bottom: nil, trailing: titleButton.trailingAnchor, padding: .init(top: 30, left: 0, bottom: 0, right: 0))

        tableView.anchor(top: contentLabel.bottomAnchor, leading: titleButton.leadingAnchor, bottom: view.bottomAnchor, trailing: titleButton.trailingAnchor, padding: .init(top: 30, left: 0, bottom: 0, right: 0))

        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorStyle = .none
        tableView.showsVerticalScrollIndicator = false
        tableView.register(VideoTableViewCell.self, forCellReuseIdentifier: VideoTableViewCell.reuseID)
    }
    
    
    func setupHeaders() {
        view.backgroundColor = .white
        navigationController?.isNavigationBarHidden = true
    }
}
