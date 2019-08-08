//
//  ViewController.swift
//  YelpApp
//
//  Created by Jeffrey Almonte on 8/5/19.
//  Copyright © 2019 Jeffrey Almonte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let apiClient = APIClient()
    private var business = [Business]() {
        didSet {
            DispatchQueue.main.async {
                self.businessTableView.reloadData()
            }
        }
    }
    @IBOutlet weak var businessTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        businessTableView.dataSource = self
        businessTableView.delegate = self
        searchBusinesses()
    }

    private func searchBusinesses() {
        apiClient.searchBusinesses { result in
            switch result {
            case .failure(let error):
                print("error: \(error)")
            case .success(let businesses):
                print("found \(businesses.count) businesses")
            }
        }
    }
}


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return business.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       guard let cell = businessTableView.dequeueReusableCell(withIdentifier: "BusinessCell", for: indexPath) as? BusinessCell else {
            fatalError("DishCell not found")
        }
        let businessToSet = business[indexPath.row]
        cell.textLabel?.text = businessToSet.id
        cell.backgroundColor = .red
        return cell
    }
    
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}
// TODO: create a table view that shows at minimum the name of the business
// TODO: add UI so the user is able to change the zipcode search
// TODO: add a search bar so the user is able to search for a particular type of business
