//
//  Constants.swift
//  unsplash
//
//  Created by christian Picondo on 30/04/2017.
//  Copyright © 2017 cpicondo. All rights reserved.
//

import Foundation


//Popular photos
let BASE_URL = "https://api.unsplash.com/photos/?"
let POPULAR_URL = "order_by=popular&"
let APP_ID = "client_id="
let APP_KEY = "96609b1cda32762e00bb4ac178cf1d2e6bf4e78eb80481dfb88b20db7548ff87"


typealias DownloadComplete = () -> ()

let CURRENT_URL = "\(BASE_URL)\(POPULAR_URL)\(APP_ID)\(APP_KEY)"
