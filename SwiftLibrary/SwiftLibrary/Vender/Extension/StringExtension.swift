//
//  StringExtension.swift
//  TOSHIBA_IPHONE
//
//  Created by Skyler on 1/21/16.
//  Copyright © 2016 SK. All rights reserved.
//

import Foundation
import UIKit

extension String{
    
    func widthForFontSize(fontSize fontSize :CGFloat)->CGFloat{
        return self.frameForFont(font: UIFont.systemFontOfSize(fontSize), constrainedToSize: CGSizeMake(LLScreenWidth,CGFloat(MAXFLOAT)), lineBreakMode: .ByWordWrapping).width
    }
    
    func frameForFont(font font :UIFont)->CGSize{
        return self.frameForFont(font: font, constrainedToSize: CGSizeMake(LLScreenWidth,CGFloat(MAXFLOAT)), lineBreakMode: .ByWordWrapping)
    }
    
    func frameForFont(font font :UIFont, constrainedToSize size :CGSize,lineBreakMode :NSLineBreakMode)->CGSize{
        
        let paragraphStyle = NSMutableParagraphStyle.defaultParagraphStyle()
        let attributes = [NSFontAttributeName:font, NSParagraphStyleAttributeName:paragraphStyle]
        let textRect = (self as NSString).boundingRectWithSize(size, options:.UsesLineFragmentOrigin, attributes:attributes, context:nil)
        return textRect.size
    }
    
}