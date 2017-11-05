//
//  ViewController.swift
//  Rheiem und Sleider
//
//  Created by MacMini on 05.11.17.
//  Copyright © 2017 MacMini. All rights reserved.
//
/*
 A>> in Main.storyboard
 1.1. Slider zu Storyboard
 1.2. min 1, max 100
 2.1. TableView zu Storyboard
 2.2. TableView zu Gelb-Conroller >> Delegate auswählen
 2.3. TableView zu Gelb-Controller >> DataSource auswählen
 
 B>> Storyboard zu Controller
 2.1. Slider >> Outlet um zu lesen Slider.value
 2.2. Slider >> Action um zu reagieren, when value sich geändert hat
 
 C>> in UIViewController
 3.1. TableView >> Outlet um zu reload TabelData
 4.1. Erwerbclassen: UITableViewDataSource UITableViewDelegate hinzufügen
 4.2. func tableView -> Int um Zeilenanzahl zu definieren
      func tableView -> UITableViewCell um die Inhälte der Zellen zu bestimmen
 
 */
import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text = String( (Int (sliderOutlet.value)) * (indexPath.row + 1) )
        return cell
    }
    

    @IBOutlet weak var sliderOutlet: UISlider!
    
    
    @IBOutlet weak var tableOutlet: UITableView!
    
    @IBAction func sliderAction(_ sender: Any) {
        tableOutlet.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

