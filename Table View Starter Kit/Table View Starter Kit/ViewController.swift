//
//  ViewController.swift
//  Table View Starter Kit
//
//  Created by Abhishek Kankani on 13/04/17.
//  Copyright © 2017 Abhishek Kankani. All rights reserved.
//



//CHANGE THE CELL TYPE TO WHATEVER YOU WANT TO USE USING THE STORYBOARD. YOU CAN CREATE A CUSTOM CELL TOO!


import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //DEFINE THE NUMBER OF CELLS IN THE TABLE
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 5
    }
    
    
    //DEFINE THE CELL
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Create a reusable cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        //Set the text for the cell
        cell.textLabel?.text = "This is cell \(indexPath.row)";
        cell.detailTextLabel?.text = "This is the subtitle"
        
        return cell
    }
    
    
    //DO SOMETHING WHEN A CELL IS PRESSED
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //Display an alert when cell is pressed.
        let alert = UIAlertController(title: "Cell Pressed", message: "You Pressed Cell \(indexPath.row)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
}

