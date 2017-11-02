//
//  LeftMovieTableViewCell.swift
//  Multible VC- MovieProject
//
//  Created by C4Q on 11/2/17.
//  Copyright © 2017 Quark. All rights reserved.
//

import UIKit

class LeftMovieTableViewCell: UITableViewCell {

    
    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var movieGenre: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
