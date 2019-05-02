//
//  ViewController.swift
//  TableView
//
//  Created by dit02 on 2019. 5. 2..
//  Copyright © 2019년 dit02. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        myTableView.delegate = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "RE", for: indexPath)
        let row = indexPath.row
        let sec = indexPath.section
        
        cell.textLabel?.text = "Section: " + String(sec)
        cell.detailTextLabel?.text = "Row" + String(row)
        
        print("cell....")
        
        return cell
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 100.0
    }

    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        print("Section = \(indexPath.section)" + "Row = \(indexPath.row)")
    }
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    
}

