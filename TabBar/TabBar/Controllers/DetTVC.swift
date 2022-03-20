//
//  DetTVC.swift
//  TabBar
//
//  Created by Александр Астапенко on 15.03.22.
//

import UIKit

class DetTVC: UIViewController {
    @IBOutlet weak var phoneNumber: UILabel!
    @IBOutlet weak var emailAdd: UILabel!
    

    var email = ""
    var phone = ""
    var newTitle = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = newTitle
        self.navigationController?.navigationBar.prefersLargeTitles = false
        phoneNumber.text = phone
        emailAdd.text = email
    }
    
    
}


/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destination.
 // Pass the selected object to the new view controller.
 }
 */

