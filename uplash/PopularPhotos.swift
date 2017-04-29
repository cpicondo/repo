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
    
    
    
    func downloadPopularPhotos(completed:  DownloadComplete) {
        
        Alamofire.request(CURRENT_URL).responseJSON { response in
            
            let result = response.result
            
            if let dict = result.value as? [Dictionary<String, AnyObject>] {
                
                if let ID = dict[0]["id"] as? String {
                    
                    self._photoID = ID
                    print("ID>>> \(self._photoID)")
                }
            }
        }
        completed()
    }
}
