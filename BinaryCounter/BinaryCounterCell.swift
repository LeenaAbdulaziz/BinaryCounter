//
//  BinaryCounterCell.swift
//  BinaryCounter
//
//  Created by Linah abdulaziz on 08/05/1443 AH.
//

import UIKit

class BinaryCounterCell: UITableViewCell {

    var delegate : BinaryCounterDelegate?
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBAction func PlusPressed(_ sender: UIButton) {
        delegate?.Increased(number: Int(numberLabel.text!)!)
    }
    
    @IBAction func MinusPressed(_ sender: UIButton) {
        delegate?.decreased (number: Int(numberLabel.text!)!)
    }
    
    
}
