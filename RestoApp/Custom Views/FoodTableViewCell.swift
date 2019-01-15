//
//  FoodTableViewCell.swift
//  RestoApp
//
//  Created by TechCampus on 1/13/19.
//  Copyright © 2019 TechCampus. All rights reserved.
//

import UIKit

class FoodTableViewCell: UITableViewCell {
    
    //MARK: - IBOutlets
    @IBOutlet weak var foodIcon: UIImageView!
    @IBOutlet weak var lblItemName: UILabel!
    @IBOutlet weak var lblItemDesc: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureItems(menuItem: MenuItems) {
        foodIcon.image = menuItem.itemImage
        lblItemName.text = menuItem.itemName
        lblItemDesc.text = menuItem.itemDesc
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
