//
//  MainVC.swift
//  uplash
//
//  Created by christian Picondo on 29/04/2017.
//  Copyright © 2017 cpicondo. All rights reserved.
//

import UIKit
import Alamofire

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var popularPhotos: PopularPhotos!
    var popularPhotosArray = [PopularPhotos]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
        self.downloadPopularPhotos {
        }
        
    }
    
    func downloadPopularPhotos(completed: @escaping DownloadComplete) {
        
        Alamofire.request(CURRENT_URL).responseJSON { response in
            
            let result = response.result
            
            if let dict = result.value as? [Dictionary<String, AnyObject>] {
                
                for obj in dict {
                    
                    let popularPhotos = PopularPhotos(popularphotosDict: obj)
                    self.popularPhotosArray.append(popularPhotos)
                    //print(self.popularPhotosArray.count)
                }
                    self.tableView.reloadData()
            }
            completed()
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "photoCell", for: indexPath) as? ItemCell {
            
            let photos = popularPhotosArray[indexPath.row]
            cell.configureCell(popularPhoto: photos)
            return cell
        } else {
            return ItemCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return popularPhotosArray.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        var photos: PopularPhotos!
        photos = popularPhotosArray[indexPath.row]
        performSegue(withIdentifier: "PhotoDetailVC", sender: photos)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? PhotoDetailVC {
            if let detailVC  = sender as? PopularPhotos {
                destination.photo = detailVC
            }
        }
    }
}

