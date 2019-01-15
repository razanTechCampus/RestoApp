//
//  FoodViewController.swift
//  RestoApp
//
//  Created by TechCampus on 1/13/19.
//  Copyright © 2019 TechCampus. All rights reserved.
//

import UIKit

class FoodViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //MARK: - Private Variables
    private var foodItems: [MenuItems] = [MenuItems]()
    private var customCellNibname = "FoodTableViewCell"
    
    //MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView! {
        didSet{
            tableView.delegate = self
            tableView.dataSource = self
            tableView.register(UINib(nibName: customCellNibname, bundle: nil), forCellReuseIdentifier: customCellNibname)
        }
    }
    
    //MARK: - view life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setFoodItemsArray()
    }
    
    //MARK: - Helpers
    func setFoodItemsArray() {
        foodItems = [MenuItems(itemName: "Tuna Salad", itemImage: UIImage(named: "TunaSalad"), itemDesc: "Cherry Tomato / Olive / Corn / Lettuce / Tuna"), MenuItems(itemName: "Cheese Burger", itemImage: UIImage(named: "Cheeseburger"), itemDesc: "Cheese / Lettuce / Pickles / Tomato / Mayonaise"), MenuItems(itemName: "Shrimp Platter", itemImage: UIImage(named: "ShrimpPlatter"), itemDesc: "10 Shrimp Pieces / Pickles / Fries / Bread"), MenuItems(itemName: "Tuna Salad", itemImage: UIImage(named: "TunaSalad"), itemDesc: "Cherry Tomato / Olive / Corn / Lettuce / Tuna"), MenuItems(itemName: "Cheese Burger", itemImage: UIImage(named: "Cheeseburger"), itemDesc: "Cheese / Lettuce / Pickles / Tomato / Mayonaise"), MenuItems(itemName: "Shrimp Platter", itemImage: UIImage(named: "ShrimpPlatter"), itemDesc: "10 Shrimp Pieces / Pickles / Fries / Bread"), MenuItems(itemName: "Tuna Salad", itemImage: UIImage(named: "TunaSalad"), itemDesc: "Cherry Tomato / Olive / Corn / Lettuce / Tuna"), MenuItems(itemName: "Cheese Burger", itemImage: UIImage(named: "Cheeseburger"), itemDesc: "Cheese / Lettuce / Pickles / Tomato / Mayonaise"), MenuItems(itemName: "Shrimp Platter", itemImage: UIImage(named: "ShrimpPlatter"), itemDesc: "10 Shrimp Pieces / Pickles / Fries / Bread"), MenuItems(itemName: "Tuna Salad", itemImage: UIImage(named: "TunaSalad"), itemDesc: "Cherry Tomato / Olive / Corn / Lettuce / Tuna"), MenuItems(itemName: "Cheese Burger", itemImage: UIImage(named: "Cheeseburger"), itemDesc: "Cheese / Lettuce / Pickles / Tomato / Mayonaise"), MenuItems(itemName: "Shrimp Platter", itemImage: UIImage(named: "ShrimpPlatter"), itemDesc: "10 Shrimp Pieces / Pickles / Fries / Bread"), MenuItems(itemName: "Tuna Salad", itemImage: UIImage(named: "TunaSalad"), itemDesc: "Cherry Tomato / Olive / Corn / Lettuce / Tuna"), MenuItems(itemName: "Cheese Burger", itemImage: UIImage(named: "Cheeseburger"), itemDesc: "Cheese / Lettuce / Pickles / Tomato / Mayonaise"), MenuItems(itemName: "Shrimp Platter", itemImage: UIImage(named: "ShrimpPlatter"), itemDesc: "10 Shrimp Pieces / Pickles / Fries / Bread"), MenuItems(itemName: "Tuna Salad", itemImage: UIImage(named: "TunaSalad"), itemDesc: "Cherry Tomato / Olive / Corn / Lettuce / Tuna"), MenuItems(itemName: "Cheese Burger", itemImage: UIImage(named: "Cheeseburger"), itemDesc: "Cheese / Lettuce / Pickles / Tomato / Mayonaise"), MenuItems(itemName: "Shrimp Platter", itemImage: UIImage(named: "ShrimpPlatter"), itemDesc: "10 Shrimp Pieces / Pickles / Fries / Bread")]
    }
    
    //MARK: - UITableViewDataSource UITableViewDelegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: customCellNibname, for: indexPath) as! FoodTableViewCell
        cell.configureItems(menuItem: foodItems[indexPath.row])
        return cell
    }

//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(indexPath.row)
//        print(foodItems[indexPath.row])
//        DispatchQueue.main.async {
//            let alert = UIAlertController(title: self.foodItems[indexPath.row].itemName, message: self.foodItems[indexPath.row].itemDesc, preferredStyle: .alert)
//            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
//            self.present(alert, animated: true, completion: nil)
//        }
//    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
