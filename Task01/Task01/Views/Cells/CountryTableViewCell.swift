//
//  CountryTableViewCell.swift
//  Task01
//
//  Created by RAI on 26/08/2024.
//
import UIKit

class CountryTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var checkbox: UIButton!
    
    var isChecked: Bool = false {
        didSet {
            checkbox.setImage(isChecked ? UIImage(systemName: "checkmark.square.fill") : UIImage(systemName: "square"), for: .normal)
        }
    }
    
    func configure(with country: Country, checked: Bool) {
        nameLabel.text = country.name
        isChecked = checked
    }
}


