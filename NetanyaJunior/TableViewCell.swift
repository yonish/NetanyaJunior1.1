//
//  UpdatesTable.swift
//  NetanyaJunior
//
//  Created by yoni sheinin on 23.11.2015.
//  Copyright © 2015 YoniSh. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lbDetails: UILabel!
//    init(style: UITableViewCellStyle, reuseIdentifier: String)
//    {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        // Initialization code
//    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
