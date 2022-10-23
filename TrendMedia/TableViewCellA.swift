//
//  TableViewCellA.swift
//  TrendMedia
//
//  Created by Eunchan Kim on 2022/10/17.
//

import UIKit


class TableViewCellA: UITableViewCell {

    
    @IBOutlet weak var link: UIButton!
    
    @IBOutlet weak var lbl1: UILabel!
    
    @IBOutlet weak var img1: UIImageView!
    
    @IBOutlet weak var lbl2: UILabel!
    
    @IBOutlet weak var lbl3: UILabel!
    
    @IBOutlet weak var lbl4: UILabel!
    
    @IBOutlet weak var lbl5: UILabel!
    
    var complitiolnHandler:(() -> Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
        // Configure the view for the selected state
    }
    
    
    @IBAction func linkBtn(_ sender: Any) {
        complitiolnHandler?()
    }
}
