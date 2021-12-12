//
//  ViewController.swift
//  BinaryCounter
//
//  Created by Linah abdulaziz on 08/05/1443 AH.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, BinaryCounterDelegate {

    
    let numbers = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]
    var total = 0
    
    @IBOutlet weak var tabelView: UITableView!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabelView.dataSource = self
        
        
        
    }
    
    func Increased(number: Int) {
        total += number
        totalLabel.text = ("Total: \(total)")
    }
    
    func decreased(number: Int) {
        total -= number
        totalLabel.text = ("Total: \(total)")
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! BinaryCounterCell
        
        cell.numberLabel?.text? = "\(pow(10 ,numbers[indexPath.row]))"
        cell.delegate = self
        
        return cell
    }


}

