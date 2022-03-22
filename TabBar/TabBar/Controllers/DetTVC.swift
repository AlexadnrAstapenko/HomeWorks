//
//  DetTVC.swift
//  TabBar
//
//  Created by Александр Астапенко on 15.03.22.
//

import UIKit

class DetTVC: UIViewController {
    @IBOutlet var phoneNumber: UILabel!
    @IBOutlet var emailAdd: UILabel!

    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = person.firstNames + " " + person.lastNames
        self.navigationController?.navigationBar.prefersLargeTitles = false
        phoneNumber.text = person.phoneNumbers
        emailAdd.text = person.emails
    }
}
