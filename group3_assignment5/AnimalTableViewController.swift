//
//  AnimalTableViewController.swift
//  group3_assignment5
//
//  Created by Jessica Hairston on 3/4/20.
//  Copyright © 2020 Jill Rosow. All rights reserved.
//

import UIKit

class AnimalTableViewController: UITableViewController {
    
    var animals = [Animal]()

    override func viewDidLoad() {
        super.viewDidLoad()
    
        loadAnimals()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return animals.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let animalCellIdentifier = "animalButtonTableViewCell"
        let infoCellIdentifier = "animalInfoTableViewCell"
        
        let cell1 = tableView.dequeueReusableCell(withIdentifier: animalCellIdentifier, for: indexPath) as? AnimalTableViewCell
        let cell2 = tableView.dequeueReusableCell(withIdentifier: infoCellIdentifier, for: indexPath) as? AnimalTableViewCell

        // Configure the cell...

        return cell1!
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
    //MARK: Private Methods
    
    private func loadAnimals(){
        
        let thumbnail1 = UIImage(named:"arctic fox1")
        let thumbnail2 = UIImage(named:"ermine1")
        let thumbnail3 = UIImage(named:"ezo momonga1")
        let thumbnail4 = UIImage(named:"red panda1")
        
        let arcticfox = Animal(name:"Arctic Fox", sciname:"Vulpes lagopus", cls:"Mammalia", size:"3.5kg")
        let ermine = Animal(name:"Ermine", sciname:"Mustela erminea", cls:"Mammalia", size:"0.3kg")
        let ezomomonga = Animal(name:"Ezo Momonga", sciname:"Pteromys volans", cls:"Mammalia", size:"0.22kg")
        let redpanda = Animal(name:"Red Panda", sciname:"Ailurus fulgens", cls:"Mammalia", size:"5.0kg")
        
        animals += [arcticfox, ermine, ezomomonga, redpanda]
    }
}
