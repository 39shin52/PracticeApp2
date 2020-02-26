//
//  ViewController.swift
//  TimerApp
//
//  Created by Itou Shingo on 2020/02/26.
//  Copyright © 2020 Itou Shingo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    let fruits = ["apple", "banana", "orange", "grape"]
    
    @IBOutlet weak var FirstTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "SampleCell", for: indexPath)
        
        cell.textLabel!.text = fruits[indexPath.row]
        
        return cell
    }

}

