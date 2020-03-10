//
//  3minTimerViewController.swift
//  TimerApp
//
//  Created by Itou Shingo on 2020/03/10.
//  Copyright © 2020 Itou Shingo. All rights reserved.
//

import UIKit

class ThminTimerViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var secondTableView: UITableView!
    var text: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        secondTableView.delegate = self
        secondTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "SampleCell")
        
        // 10. 受け取った文字列をセルに表示
        cell.textLabel?.text = text
        return cell
    }
    
    /*    func tableView(table: UITableView, didSelectRowAtIndexPath indexPath:NSIndexPath) {
     print(text)
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
