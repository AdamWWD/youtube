//
//  Video.swift
//  youtube
//
//  Created by adamwang on 2018/3/9.
//  Copyright © 2018年 adamwang. All rights reserved.
//

import UIKit

class Video: NSObject {
    
    var thumbnailImageName: String?
    var title: String?
    var numberOfView: NSNumber?
    var uploadDate: NSDate?
    
    var channel: Channel?
    
}

class Channel: NSObject {
    var name: String?
    var profileImageName: String?
    
}

