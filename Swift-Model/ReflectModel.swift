//
//  ReflectModel.swift
//  Swift-Model
//
//  Created by xuning on 16/6/16.
//  Copyright © 2016年 hus. All rights reserved.
//

import Foundation

class ReflectModel: Reflect {

    var msg: String?
    var result: [ReflectResult]!
    var retCode: String?
    
}


class ReflectResult: Reflect {
    
    /// 城市
    var city: String? = ""
    /// 日期
    var date: String? = ""
    /// 未来天气状况
//    var future: [ReflectFuture]!
    /// 天气状况
    var weather: String? = ""
    /// 周
    var week: String? = ""
    /// 风向
    var wind: String? = ""

    
}

class ReflectFuture: Reflect {
    
    /// 日期
    var date: String?
    /// 温度
    var temperature: String?
    /// 风向
    var wind: String?
    

}