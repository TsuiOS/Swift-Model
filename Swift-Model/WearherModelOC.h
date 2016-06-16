//
//  WearherModelOC.h
//  Swift-Model
//
//  Created by xuning on 16/6/15.
//  Copyright © 2016年 hus. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface WearherModelOC : NSObject

/** 成功/失败 */
@property (nonatomic, copy) NSString *msg;
/** 返回的天气数组 */
@property (nonatomic, strong)  NSArray *result;
/** 请求的状态码 */
@property (nonatomic, copy) NSString *retCode;

@end

@interface XNResult : NSObject

/** 污染状况 */
@property (nonatomic, copy) NSString *airCondition;

/** 未来几天的天气(包括查询当天的) */
@property (nonatomic, strong) NSArray *future;
/** 天气 */
@property (nonatomic, copy) NSString *weather;

@end

@interface XNFuture : NSObject

/** 日期 */
@property (nonatomic, strong) NSString *date;
/** dayTime */
@property (nonatomic, strong) NSString *dayTime;
/** night */
@property (nonatomic, strong) NSString *night;
/** 当前温度 */
@property (nonatomic, copy) NSString *temperature;
/** week */
@property (nonatomic, strong) NSString *week;
/** 风向 */
@property (nonatomic, copy) NSString *wind;


@end