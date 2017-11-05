//
//  ViewController.swift
//  Rheiem und Sleider
//
//  Created by MacMini on 05.11.17.
//  Copyright © 2017 MacMini. All rights reserved.
//

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

