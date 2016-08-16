//
//  TbMarco.swift
//  TOSHIBA_IPHONE
//
//  Created by Skyler on 1/19/16.
//  Copyright © 2016 SK. All rights reserved.
//

import Foundation
import UIKit

//MARK:- 颜色相关


//MARK:- 尺寸相关
public let LLScreenWidth = UIScreen.mainScreen().bounds.size.width
public let LLScreenHeight = UIScreen.mainScreen().bounds.size.height
public let LLScreenMaxLength = max(LLScreenWidth, LLScreenHeight)
public let LLScreenMinLength = min(LLScreenWidth, LLScreenHeight)
public let LLIS_IPHONE_4_OR_LESS =  UIDevice.currentDevice().userInterfaceIdiom == .Phone && LLScreenMaxLength < 568.0

public let LLIS_IPHONE_5 = UIDevice.currentDevice().userInterfaceIdiom == .Phone && LLScreenMaxLength == 568.0
public let LLIS_IPHONE_6 = UIDevice.currentDevice().userInterfaceIdiom == .Phone && LLScreenMaxLength == 667.0
public let LLIS_IPHONE_6P = UIDevice.currentDevice().userInterfaceIdiom == .Phone && LLScreenMaxLength == 736.0

//MARK:- 通知中心
public let LLNSNotification = NSNotificationCenter.defaultCenter()

//MARK:-

//MARK:-

//MARK:-

//MARK:版本号
let LLVersion = (UIDevice.currentDevice().systemVersion as NSString).floatValue
//MARK:- 默认图片
let LLDefaultImg = UIImage(named: "")

//MARK:- 去除空格
func LLTrimWhitespaceCharacter(str:String)->String{
    let nowStr = str.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
    return nowStr
}

//MARK:- 去除空格和回车
func LLTrimWhitespaceCharacterAndNewLine(str:String)->String{
    let nowStr = str.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
    return nowStr
}

//MARK:- 根据键盘监控获取键盘高度
func LLGetKeyBoardHeight(aNotification:NSNotification)->CGFloat{
    let uInfo = aNotification.userInfo as NSDictionary!
    let avalue = uInfo["UIKeyboardFrameEndUserInfoKey"] as! NSValue
    let keyrect : CGRect = avalue.CGRectValue()
    let keyheight : CGFloat = keyrect.size.height;
    return keyheight
}

//MARK:- log
//eg:DLog("Hello, this is \(name), I'm \(age)")
func DLog(format: AnyObject, args: CVarArgType...){
    #if DEBUG
        print(format) //, getVaList([])
    #endif
}

func DInfoLog(format: AnyObject, args: CVarArgType...){
    #if DEBUG
        print("info - \(format)")
    #endif
}



//MARK:- currentLanguage
func LLCurrentLanguage() -> String {
    return NSLocale.preferredLanguages().first!
}

func LLJudgeNotNil(str: String) ->Bool{
    if str.isEmpty{
        return false
    }else{
        return true
    }
}

func LLIsEmpty(value: NSString?)->Bool{
    
    if nil == value
    {
        return true
    }
    
    if value!.isKindOfClass(NSNull.self)
    {
        return true
    }
    
    if value!.length == 0
    {
        return true
    }
    
    let valueStr:NSString = value!.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
    if valueStr.isEqualToString("")
    {
        return true
    }
    return false
}


