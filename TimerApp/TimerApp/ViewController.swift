//
//  ViewController.swift
//  TimerApp
//
//  Created by Itou Shingo on 2020/02/26.
//  Copyright © 2020 Itou Shingo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    let fruits = ["apple", "banana", "orange", "grape", "pineapple"]
    
    @IBOutlet weak var tableView: UITableView!
    
    var selectText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "SampleCell", for: indexPath)
        
        cell.textLabel!.text = fruits[indexPath.row]
        
        return cell
    }
    
    private func tableView(table: UITableView, didSelectRowAtIndexPath indexPath:NSIndexPath) {
        
        // 8. SecondViewControllerに渡す文字列をセット
        selectText = fruits[indexPath.row]
        
        // 8. SecondViewControllerへ遷移するSegueを呼び出す
        performSegue(withIdentifier: "showThTimerView",sender: nil)
        
    }
    
    // Segueで遷移時の処理
    override func prepare(for segue: UIStoryboardSegue, sender: Any!) {
        if (segue.identifier == "showThminTimerView") {
            let secondVC: ThminTimerViewController = (segue.destination as? ThminTimerViewController)!
            
            // 11. SecondViewControllerのtextに選択した文字列を設定する
            secondVC.text = selectText
        }
    }
}

