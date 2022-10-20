//
//  TableViewCellB.swift
//  TrendMedia
//
//  Created by Eunchan Kim on 2022/10/20.
//

import UIKit

class TableViewCellB: UITableViewCell {

    @IBOutlet weak var actorImg: UIImageView!
    @IBOutlet weak var actorName: UILabel!
    @IBOutlet weak var role: UILabel!
    
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
