//
//  SymptomsSelection.swift
//  Biopneuma
//
//  Created by Ishan Jain on 3/27/20.
//  Copyright © 2020 Ishan Jain. All rights reserved.
//

import UIKit

class SymptomsSelection: UITableViewController {

    var checked = [Bool]() // Have an array equal to the number of cells in your table
    
    let symptomsArray = ["Cough", "Shortness of Breath", "Pain in Chest", "Daze", "Fever", "Extreme Fatigue"]
    let symptomsDescription = ["Cough", "Shortness of Breath", "Pain in Chest", "Daze", "Fever", "Extreme Fatigue"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        checked = Array(repeating: false, count: symptomsArray.count)
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return symptomsArray.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

        if let cell = tableView.cellForRow(at: indexPath as IndexPath) {
            if cell.accessoryType == .checkmark {
                cell.accessoryType = .none
                checked[indexPath.row] = false
            } else {
                cell.accessoryType = .checkmark
                checked[indexPath.row] = true
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "symptomsCell", for: indexPath)
        
        if checked[indexPath.row] == false{
            
            cell.accessoryType = .none
            
        }else if checked[indexPath.row] {
            cell.accessoryType = .checkmark
        }
        
        let symptoms = symptomsArray[indexPath.row]
        let description = symptomsDescription[indexPath.row]
        
        cell.textLabel?.text = symptoms
        cell.detailTextLabel?.text = description
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
