//
//  ItemCell.swift
//  uplash
//
//  Created by christian Picondo on 29/04/2017.
//  Copyright © 2017 cpicondo. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {
    
    
    @IBOutlet weak var PreviewPhoto: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }
    
    func configureCell(popularPhoto: PopularPhotos) {
        
        print("ID>>>>>>>>>>\(popularPhoto.photoID)")
        let photoURL = URL(string: popularPhoto.photoURL)!

        //async is background thrend
        PreviewPhoto.sd_setImage(with: photoURL)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
