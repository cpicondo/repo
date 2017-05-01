//
//  PhotoDetailVC.swift
//  unsplash
//
//  Created by christian Picondo on 01/05/2017.
//  Copyright © 2017 cpicondo. All rights reserved.
//

import UIKit

class PhotoDetailVC: UIViewController {

    var photo: PopularPhotos!
    
    @IBOutlet weak var photoID: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        print("Welcome to Photo Detail VC")
        print("ID >>>>>\(photo.photoID)")
        print("URL >>>>>\(photo.photoURL)")
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
