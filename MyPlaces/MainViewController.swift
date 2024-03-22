//
//  MainViewControllerTableViewController.swift
//  MyPlaces
//
//  Created by Oleksii on 2/28/24.
//

import UIKit

class MainViewController: UITableViewController {
    
    
    let places = Place.getPlaces()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        
        
        cell.nameLabel?.text = places[indexPath.row].name
        cell.lacationLabel.text = places[indexPath.row].location
        cell.typeLabel.text = places[indexPath.row].type
        cell.imageOfPlace?.image = UIImage(named: places[indexPath.row].restaurantImage!)
        cell.imageOfPlace?.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
        cell.imageOfPlace?.clipsToBounds = true
        
        
        return cell
    }
    
    

   
}
