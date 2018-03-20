//
//  SubscriptionCell.swift
//  youtube
//
//  Created by adamwang on 2018/3/20.
//  Copyright © 2018年 adamwang. All rights reserved.
//

import UIKit

class SubscriptionCell: FeedCell {
    
    override func fetchVideos() {
        ApiService.sharedInstance.fetchSubscriptionFeed{ (videos) in
            self.videos = videos
            self.collectionView.reloadData()
        }
    }
    
}
