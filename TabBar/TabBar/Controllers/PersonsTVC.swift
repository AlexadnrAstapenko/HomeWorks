//

//  Created by Александр Астапенко on 16.03.22.
//

import UIKit

class PersonsTVC: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }

    func setUp() {
        navigationItem.title = "Persons list"
        navigationItem.rightBarButtonItem = self.editButtonItem
        navigationController?.navigationBar.prefersLargeTitles = true
        tableView.register(
            CostumTVCell.nib,
            forCellReuseIdentifier: "XibCell"
        )
        Persons.createPersons()
    }

    // MARK: - Table view data source

    override func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Persons.persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "XibCell", for: indexPath) as! CostumTVCell
        let name = "\(Persons.firstNames[indexPath.row]) \(Persons.lastNames[indexPath.row])"
        cell.frstNameAndLastName.text = name
        return cell
    }

    override func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = Persons.persons[indexPath.row]
        guard let detailsView = storyboard?.instantiateViewController(withIdentifier: "DetTVC") as? DetTVC else {
            return
        }
        detailsView.person = person
        self.navigationController?.pushViewController(detailsView, animated: true)
    }

    // Override to support editing the table view.
    override func tableView(_: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            Persons.persons.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .automatic)
            self.tableView.reloadData()
        }

        func tableView(tableView _: UITableView, canEditRowAtIndexPath _: NSIndexPath) -> Bool {
            return true
        }
    }

    override func tableView(_: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let elementToMove = Persons.persons[fromIndexPath.row]
        Persons.persons.remove(at: fromIndexPath.row)
        Persons.persons.insert(elementToMove, at: to.row)
    }

    override func tableView(_: UITableView, canMoveRowAt _: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
}
