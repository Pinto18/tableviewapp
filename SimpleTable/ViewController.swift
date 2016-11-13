//
//  ViewController.swift
//  SimpleTable
//
//  Created by Nicholas DiPinto on 11/13/16.
//  Copyright © 2016 Nicholas DiPinto. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    var restrauntNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster",
                          "For kee Restaurant", "Po's Atelier", "Bourke Street Bakery",
                          "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif",
                          "Graham Avenue Meats And Deli", "Waffle & Wolf", "Five Leaves",
                          "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak",
                          "CASK Pub and Kitchen"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)->Int
    {
        //Return the number of rows in the section
        return restrauntNames.count
    }
    
    //this method is called everytime a table row is displayed
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cellIdentifier = "Cell"  //string that contains the identifier for the cell object created in the storyboard
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        //Configure the cell
        cell.textLabel?.text = restrauntNames[indexPath.row]  //set the specified cell's text label to the specified name in the restaurant name array
        cell.imageView?.image = UIImage(named: "restaurant")
        
        return cell
    }
    
    override var prefersStatusBarHidden: Bool
    {
        return true
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

