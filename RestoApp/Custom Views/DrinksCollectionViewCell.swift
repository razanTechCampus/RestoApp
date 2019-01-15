//
//  DrinksCollectionViewCell.swift
//  RestoApp
//
//  Created by TechCampus on 1/14/19.
//  Copyright © 2019 TechCampus. All rights reserved.
//

import UIKit

class DrinksCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var drinksIcon: UIImageView!
    @IBOutlet weak var lblDrinksName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configure(menuItems: MenuItems) {
        drinksIcon.image = menuItems.itemImage
        lblDrinksName.text = menuItems.itemName
    }
    
}
