//
//  NewPlaceViewController.swift
//  MyPlaces
//
//  Created by Oleksii on 3/13/24.
//

import UIKit

class NewPlaceViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.tableFooterView = UIView()
      
    }
// MARK: Table view delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            
        } else {
            view.endEditing(true)
        }
    }
   
}

extension NewPlaceViewController: UITextFieldDelegate {
    
    /// скрываем клавиатуру по нажатию на done

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
