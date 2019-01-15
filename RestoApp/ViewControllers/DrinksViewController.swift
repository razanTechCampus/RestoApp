//
//  DrinksViewController.swift
//  RestoApp
//
//  Created by TechCampus on 1/13/19.
//  Copyright © 2019 TechCampus. All rights reserved.
//

import UIKit

class DrinksViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    //MARK: - Private Variables
    private var customCellNibName = "DrinksCollectionViewCell"
    private var drinksItems: [MenuItems] = [MenuItems]()
    private var selectedJuice = ""
    
    //MARK: - IBOutletS
    @IBOutlet weak var collectionView: UICollectionView! {
        didSet {
            collectionView.delegate = self
            collectionView.dataSource = self
            collectionView.register(UINib(nibName: customCellNibName, bundle: nil), forCellWithReuseIdentifier: customCellNibName)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDrinksItemsArray()
    }
    
    //MARK: - Helpers
    func setDrinksItemsArray() {
        drinksItems = [MenuItems(itemName: "Soft Drink", itemImage: UIImage(named: "softDrink"), itemDesc: ""), MenuItems(itemName: "Carrot Juice", itemImage: UIImage(named: "CarrotJuice"), itemDesc: ""), MenuItems(itemName: "Tomato Juice", itemImage: UIImage(named: "tomatoJuice"), itemDesc: ""), MenuItems(itemName: "Soft Drink", itemImage: UIImage(named: "softDrink"), itemDesc: ""), MenuItems(itemName: "Carrot Juice", itemImage: UIImage(named: "CarrotJuice"), itemDesc: ""), MenuItems(itemName: "Tomato Juice", itemImage: UIImage(named: "tomatoJuice"), itemDesc: ""), MenuItems(itemName: "Soft Drink", itemImage: UIImage(named: "softDrink"), itemDesc: ""), MenuItems(itemName: "Carrot Juice", itemImage: UIImage(named: "CarrotJuice"), itemDesc: ""), MenuItems(itemName: "Tomato Juice", itemImage: UIImage(named: "tomatoJuice"), itemDesc: ""), MenuItems(itemName: "Soft Drink", itemImage: UIImage(named: "softDrink"), itemDesc: ""), MenuItems(itemName: "Carrot Juice", itemImage: UIImage(named: "CarrotJuice"), itemDesc: ""), MenuItems(itemName: "Tomato Juice", itemImage: UIImage(named: "tomatoJuice"), itemDesc: ""), MenuItems(itemName: "Soft Drink", itemImage: UIImage(named: "softDrink"), itemDesc: ""), MenuItems(itemName: "Carrot Juice", itemImage: UIImage(named: "CarrotJuice"), itemDesc: ""), MenuItems(itemName: "Tomato Juice", itemImage: UIImage(named: "tomatoJuice"), itemDesc: ""), MenuItems(itemName: "Soft Drink", itemImage: UIImage(named: "softDrink"), itemDesc: ""), MenuItems(itemName: "Carrot Juice", itemImage: UIImage(named: "CarrotJuice"), itemDesc: ""), MenuItems(itemName: "Tomato Juice", itemImage: UIImage(named: "tomatoJuice"), itemDesc: ""), MenuItems(itemName: "Soft Drink", itemImage: UIImage(named: "softDrink"), itemDesc: ""), MenuItems(itemName: "Carrot Juice", itemImage: UIImage(named: "CarrotJuice"), itemDesc: ""), MenuItems(itemName: "Tomato Juice", itemImage: UIImage(named: "tomatoJuice"), itemDesc: ""), MenuItems(itemName: "Soft Drink", itemImage: UIImage(named: "softDrink"), itemDesc: ""), MenuItems(itemName: "Carrot Juice", itemImage: UIImage(named: "CarrotJuice"), itemDesc: ""), MenuItems(itemName: "Tomato Juice", itemImage: UIImage(named: "tomatoJuice"), itemDesc: "")]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsVC = segue.destination as! DetailsViewController
        detailsVC.juiceName = selectedJuice
    }
    
    //MARK: UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return drinksItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: customCellNibName, for: indexPath) as! DrinksCollectionViewCell
        cell.configure(menuItems: drinksItems[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
        selectedJuice = drinksItems[indexPath.row].itemName!
        self.performSegue(withIdentifier: "GO_TO_DETAILS_VC", sender: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120, height: 120)
    }
    
    
}
