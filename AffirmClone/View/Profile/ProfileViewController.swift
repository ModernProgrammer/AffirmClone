//
//  ProfileViewController.swift
//  AffirmClone
//
//  Created by Diego Bustamante on 11/4/18.
//  Copyright © 2018 Diego Bustamante. All rights reserved.
//

import UIKit

class ProfileViewController: UITableViewController {
    let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    fileprivate func setupUI() {
        view.backgroundColor = .white
        navigationItem.title = "Profile"
        tableView = UITableView(frame: .zero, style: .grouped)
        tableView.backgroundColor = .white
        tableView.register(ProfileCells.self, forCellReuseIdentifier: cellId)
        tableView.tableFooterView = UIView()
    }
}

extension ProfileViewController {
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! ProfileCells
        cell.label.text = "Section: \(indexPath.section) and Item: \(indexPath.item)"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let testView = TestView()
        testView.navTitle = "Personal Info"
        self.navigationController?.pushViewController(testView, animated: true)
    }
    
    // Header
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let profileHeader = ProfileHeader()
        profileHeader.backgroundColor = .white
        if section == 0 {
            profileHeader.labelText = "Pesonal Information"
        } else if section == 1 {
            profileHeader.labelText = "Payment Methods"
        } else {
            profileHeader.labelText = "More Information"
        }
        return profileHeader
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 80
    }
}


