//
//  ViewController.swift
//  Swift-Model
//
//  Created by xuning on 16/6/15.
//  Copyright © 2016年 hus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ReflectLoadWeatherInfo()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}


extension ViewController {

    ///  加载天气信息
    func loadWeatherInfo() {
        
        let URLString = "http://apicloud.mob.com/v1/weather/query?key=10557a5d75b9c&city=%E8%81%8A%E5%9F%8E&province=%E8%81%8A%E5%9F%8E"
        
        let url = NSURL(string: URLString)
        
        NSURLSession.sharedSession().dataTaskWithURL(url!) { (data: NSData?, response: NSURLResponse?, error: NSError?) in
            
            //省略了错误判断
            let json = (try! NSJSONSerialization.JSONObjectWithData(data!, options: .MutableContainers)) as! NSDictionary
            
            let model = WeatherModel(dict: json as! [String : AnyObject])
            
            print(model)
            
        }.resume()

    }
    
    
    ///  加载天气信息
    func OCloadWeatherInfo() {
        
        let URLString = "http://apicloud.mob.com/v1/weather/query?key=10557a5d75b9c&city=%E8%81%8A%E5%9F%8E&province=%E8%81%8A%E5%9F%8E"
        
        let url = NSURL(string: URLString)
        
        NSURLSession.sharedSession().dataTaskWithURL(url!) { (data: NSData?, response: NSURLResponse?, error: NSError?) in
            
            //省略了错误判断
            let json = (try! NSJSONSerialization.JSONObjectWithData(data!, options: .MutableContainers)) as! NSDictionary
            
            let model = WearherModelOC.mj_objectWithKeyValues(json)
            let result = model.result[0] as! XNResult
            print(result.airCondition)
            
            }.resume()
        
    }
    
    
    func ReflectLoadWeatherInfo() {
        let URLString = "http://apicloud.mob.com/v1/weather/query?key=10557a5d75b9c&city=%E8%81%8A%E5%9F%8E&province=%E8%81%8A%E5%9F%8E"
        
        let url = NSURL(string: URLString)
    
        
        
        NSURLSession.sharedSession().dataTaskWithURL(url!) { (data: NSData?, response: NSURLResponse?, error: NSError?) in
            
            //省略了错误判断
            let json = (try! NSJSONSerialization.JSONObjectWithData(data!, options: .MutableContainers)) as! NSDictionary
            
            
            let model = ReflectModel.parse(dict: json)
            
            print(model)
            
            }.resume()
    }


}
