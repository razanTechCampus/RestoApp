//
//  DetailsViewController.swift
//  RestoApp
//
//  Created by TechCampus on 1/14/19.
//  Copyright © 2019 TechCampus. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var lblJuiceName: UILabel!
    
    public var juiceName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblJuiceName.text = juiceName
    }

}
