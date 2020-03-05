//
//  AnimalTableViewCell.swift
//  group3_assignment5
//
//  Created by Jessica Hairston on 3/4/20.
//  Copyright © 2020 Jill Rosow. All rights reserved.
//

import UIKit

class AnimalTableViewCell: UITableViewCell {
    
    //MARK: Properties
    @IBOutlet weak var animalImageView: UIImageView!
    @IBOutlet weak var animalNameLabel: UILabel!
    
    @IBOutlet weak var scientificNameLabel: UILabel!
    @IBOutlet weak var classLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
