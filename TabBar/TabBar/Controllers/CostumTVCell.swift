//
//  CostumTVCell.swift
//  TabBar
//
//  Created by Александр Астапенко on 21.03.22.
//

import UIKit

class CostumTVCell: UITableViewCell {
    static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }

    @IBOutlet var frstNameAndLastName: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
