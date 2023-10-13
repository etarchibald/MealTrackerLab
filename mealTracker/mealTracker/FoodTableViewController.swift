//
//  FoodTableViewController.swift
//  mealTracker
//
//  Created by Ethan Archibald on 10/12/23.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var meals: [Meal] {
        
        let breakfast = Meal(name: "breakfast", food: [Food(name: "eggs", description: "over medium"),
                                                       Food(name: "sausage", description: "maple burbon"),
                                                       Food(name: "pancakes", description: "with butter and maple syrup")])
        let lunch = Meal(name: "lunch", food: [Food(name: "sandwich", description: "ham sandwich"),
                                               Food(name: "chips", description: "salt and vinigar"),
                                               Food(name: "soda", description: "Dr. Pepper")])
        let dinner = Meal(name: "dinner", food: [Food(name: "steak", description: "grilled medium rare"),
                                                 Food(name: "potatos", description: "cubed and slow roasted"),
                                                 Food(name: "green beans", description: "pan fried with butter")])
        
        return [breakfast, lunch, dinner]
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meals[section].food.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
        
        let cellMeal = meals[indexPath.section].food[indexPath.row]
        cell.textLabel?.text = cellMeal.name
        cell.detailTextLabel?.text = cellMeal.description

        return cell
    }

 
}
