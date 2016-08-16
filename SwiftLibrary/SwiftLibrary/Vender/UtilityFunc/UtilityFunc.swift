//
//  TbUtilityFunc.swift
//  TOSHIBA_IPHONE
//
//  Created by Skyler on 1/21/16.
//  Copyright © 2016 SK. All rights reserved.
//

import UIKit

class TbUtilityFunc: NSObject {
    
    
    /*
     获取启动图片名（根据设备方向和尺寸）
     let statusBarOrientation = UIApplication.sharedApplication().statusBarOrientation
     let img = splashImageForOrientation(statusBarOrientation,
     size: self.view.bounds.size)
    */
    class func splashImageForOrientation(orientation: UIInterfaceOrientation, size: CGSize) -> String?{
        //获取设备尺寸和方向
        var viewSize = size
        var viewOrientation = "Portrait"
        
        if UIInterfaceOrientationIsLandscape(orientation) {
            viewSize = CGSizeMake(size.height, size.width)
            viewOrientation = "Landscape"
        }
        
        //遍历资源库中的所有启动图片，找出符合条件的
        if let imagesDict = NSBundle.mainBundle().infoDictionary  {
            if let imagesArray = imagesDict["UILaunchImages"] as? [[String: String]] {
                for dict in imagesArray {
                    if let sizeString = dict["UILaunchImageSize"],
                        let imageOrientation = dict["UILaunchImageOrientation"] {
                        let imageSize = CGSizeFromString(sizeString)
                        if CGSizeEqualToSize(imageSize, viewSize)
                            && viewOrientation == imageOrientation {
                            if let imageName = dict["UILaunchImageName"] {
                                return imageName
                            }
                        }
                    }
                }
            }
        }
        
        return nil
    }
    
    class func disappearAnimationAndRemoveFromSuperview(launchview: UIView, interval: CGFloat = 1.5){
        
        //播放动画效果，完毕后将其移除
        UIView.animateWithDuration(1, delay: Double(interval), options: .BeginFromCurrentState,
                                   animations: {
                                    
            launchview.alpha = 0.0
            launchview.layer.transform = CATransform3DScale(CATransform3DIdentity, 1.5, 1.5, 1.0)
                                    
        }) { (finished) in
            
            launchview.removeFromSuperview()
            
        }
    }
}

//MARK:- extension UITableViewDataSource
extension UITableViewDataSource {
    // return total rows in the tableView
    func UITableViewTotalRows(tableView: UITableView) -> Int {
        let totalSections = self.numberOfSectionsInTableView!(tableView) ?? 1
        var section = 0, total = 0
        while section < totalSections {
            total += self.tableView(tableView, numberOfRowsInSection: section)
            section += 1
        }
        return total
    }
}




