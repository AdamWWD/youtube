//
//  TrendingCell.swift
//  youtube
//
//  Created by adamwang on 2018/3/20.
//  Copyright © 2018年 adamwang. All rights reserved.
//

import UIKit

class TrendingCell: FeedCell {
    
    override func fetchVideos() {
        ApiService.sharedInstance.fetchTrendingFeed{ (videos) in
            self.videos = videos
            self.collectionView.reloadData()
        }
    }
}
