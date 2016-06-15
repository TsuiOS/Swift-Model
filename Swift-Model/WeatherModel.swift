//
//  WeatherModel.swift
//  Swift-Model
//
//  Created by xuning on 16/6/15.
//  Copyright © 2016年 hus. All rights reserved.
//

import UIKit

class WeatherModel: NSObject {
    
    var msg: String?
    var result: [Result]?
    var retCode: String?
    
    init(dict: [String: AnyObject]) {
        super.init()
        
        setValuesForKeysWithDictionary(dict)
    }
    
    override func setValue(value: AnyObject?, forUndefinedKey key: String) {}
    
    override func setValue(value: AnyObject?, forKey key: String) {
        
        //判断key是否是result
        if key == "result" && (value?.isKindOfClass(NSArray))! {
          
            let temp = value as! [AnyObject]
            var resultArray = [Result]()
            for dict in temp {
               resultArray.append(Result(dict: dict as! [String : AnyObject]))
            }
            result = resultArray
            return
        }
        
        ///  !很重要
        super.setValue(value, forKey: key)
    }
    
    override var description: String {
        let keys = ["msg", "result", "retCode"]
        return dictionaryWithValuesForKeys(keys).description
    }

}

class Result: NSObject {
    
    /// 城市
    var city: String?
    /// 日期
    var date: String?
    /// 未来天气状况
    var future: [Future]?
    /// 天气状况
    var weather: String?
    /// 周
    var week: String?
    /// 风向
    var wind: String?
    
    init(dict: [String: AnyObject]) {
        super.init()
        
        setValuesForKeysWithDictionary(dict)
    }
    
    override func setValue(value: AnyObject?, forUndefinedKey key: String) {}
    
    override func setValue(value: AnyObject?, forKey key: String) {
        

        //判断key是否是future
        if key == "future" && (value?.isKindOfClass(NSArray))! {
            
            let temp = value as! [AnyObject]
            var futureArray = [Future]()
            for dict in temp {
                futureArray.append(Future(dict: dict as! [String : AnyObject]))
            }
            future = futureArray
            
            return
        }

        
        ///  !很重要
        super.setValue(value, forKey: key)
    }
    
    override var description: String {
        let keys = ["city", "date", "future", "weather", "week","wind"]
        
        return dictionaryWithValuesForKeys(keys).description
    }
}

class Future: NSObject {
    
    /// 日期
    var date: String?
    /// 温度
    var temperature: String?
    /// 风向
    var wind: String?
    
    init(dict: [String: AnyObject]) {
        super.init()
        
        setValuesForKeysWithDictionary(dict)
    }
    
    override func setValue(value: AnyObject?, forUndefinedKey key: String) {}

    override var description: String {
        let keys = ["date", "temperature", "wind"]
        
        return dictionaryWithValuesForKeys(keys).description
    }

}