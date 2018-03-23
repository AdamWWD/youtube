//
//  Video.swift
//  youtube
//
//  Created by adamwang on 2018/3/9.
//  Copyright © 2018年 adamwang. All rights reserved.
//

import UIKit

class SafeJsonObject: NSObject {
    
    override func setValue(_ value: Any?, forKey key: String) {
        let uppercasedFirstCharacter = String(describing: key.first!).uppercased()
            
        let range = NSMakeRange(0, 1)
        let selectorString = NSString(string: key).replacingCharacters(in: range, with: uppercasedFirstCharacter)
        let selector = NSSelectorFromString("set\(selectorString):")
        let responds = self.responds(to: selector)

        if !responds {
            return
        }
        
        super.setValue(value, forKey: key)
    }
}

@objcMembers
class Video: SafeJsonObject {
    
    var thumbnail_image_name: String?
    var title: String?
    var number_of_views: NSNumber?
    var uploadDate: NSDate?
    var duration: NSNumber?
    var channel: Channel?
    
    override func setValue(_ value: Any?, forKey key: String) {
        if key == "channel" {
            // custom channel setup
            let channelDictionary = value as! [String:AnyObject]
            self.channel = Channel()
            self.channel?.setValuesForKeys(channelDictionary)
        } else {
            super.setValue(value, forKey: key)
        }
    }
    
    init(dictionary: [String: AnyObject]) {
        super.init()
        setValuesForKeys(dictionary)
    }
}

@objcMembers
class Channel: NSObject {
    var name: String?
    var profile_image_name: String?
}

