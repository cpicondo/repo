//
//  PopularPhotos.swift
//  unsplash
//
//  Created by christian Picondo on 30/04/2017.
//  Copyright © 2017 cpicondo. All rights reserved.
//

import Foundation
import Alamofire


class PopularPhotos {
    
    private var _photoID: String!
    private var _photoURL: String!
    
    var photoID: String {
        return _photoID
    }
    
    var photoURL: String {
        return _photoURL
    }
    

    init(popularphotosDict: Dictionary<String, AnyObject>) {
        
        if let IDs = popularphotosDict["id"] as? String {
            
            
            self._photoID = IDs
            print(self._photoID)
            
        }
        if let urls = popularphotosDict["urls"] as? Dictionary<String, AnyObject> {
            
            if let regularphoto = urls["small"] as? String {
                
                self._photoURL = regularphoto
                print("URL>>>>>>> \(self._photoURL)")
            }
            
        }
    }
}
