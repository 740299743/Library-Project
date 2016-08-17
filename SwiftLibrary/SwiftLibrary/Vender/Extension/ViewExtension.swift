//
//  ViewOrignSize.swift
//  TOSHIBA_IPHONE
//
//  Created by Skyler on 1/21/16.
//  Copyright © 2016 SK. All rights reserved.
//

import UIKit

extension UIView{
    
    var x:CGFloat{
        get{
            return self.frame.origin.x
        }
        set{
            var frame = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
    }
    
    var y:CGFloat{
        get{
            return self.frame.origin.y
        }
        set{
            var frame = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
    }
    
    var left:CGFloat{
        get{
            return self.frame.origin.x
        }
        set{
            var frame = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
    }
    
    var right:CGFloat{
        get{
            return self.frame.origin.x + self.frame.size.width
        }
        set{
            var frame = self.frame
            frame.origin.x = newValue - self.frame.size.width
            self.frame = frame
        }
    }
    
    var top:CGFloat{
        get{
            return self.frame.origin.y
        }
        set{
            var frame = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
    }
    
    var bottom:CGFloat{
        get{
            return self.frame.origin.y + self.frame.size.height
        }
        set{
            var frame = self.frame
            frame.origin.y = newValue - frame.size.height
            self.frame = frame
        }
    }
    
    var centerX:CGFloat{
        get{
            return self.center.x
        }
        set{
            self.center = CGPointMake(newValue, self.center.y)
        }
    }
    
    var centerY:CGFloat{
        get{
            return self.center.y
        }
        set{
            self.center = CGPointMake(self.center.x, newValue)
        }
    }
    
    var width:CGFloat{
        get{
            return self.frame.size.width
        }
        set{
            self.frame.size.width = newValue
        }
    }
    
    var height:CGFloat{
        get{
            return self.frame.size.height
        }
        set{
            self.frame.size.height = newValue
        }
    }
}

extension UIView {
    
    func removeAllSubviews(){
        while (self.subviews.count>0) {
            let child = self.subviews.last
            child?.removeFromSuperview()
        }
    }
}


