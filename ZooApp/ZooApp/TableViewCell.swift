//
//  TableViewCell.swift
//  ZooApp
//
//  Created by vigneswaran on 20/02/18.
//  Copyright © 2018 vigneswaran. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var ivAnimalImage: UIImageView!
    @IBOutlet weak var ivAnimalName: UILabel!
    @IBOutlet weak var ivAnimalDes: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setAnimal(animal:Animal){
        self.ivAnimalName.text = animal.name
        self.ivAnimalDes.text = animal.des
        self.ivAnimalImage.image = UIImage(named:animal.image!)
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
