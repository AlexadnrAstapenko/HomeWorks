//
//  MoreInfoTVC.swift
//  TabBar
//
//  Created by Александр Астапенко on 16.03.22.
//

import UIKit

class MoreInfoTVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "More Info List"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .always

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
           return Persons.lastNames.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let section = "\(Persons.firstNames[section]), \(Persons.lastNames[section])"
        return section
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
        }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cells = UITableViewCell()
        if indexPath.row == 0 {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cells", for: indexPath)
        let nums = Persons.phoneNumbers[indexPath.section]
        cell.textLabel?.text = "\(nums)"
        cells = cell
        } else {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellsTwo", for: indexPath)
        let emails = Persons.emails[indexPath.section]
        cell.textLabel?.text = "\(emails)"
        cells = cell
            }
        
        return cells
        }
    
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .gray
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = .white
    }
}
