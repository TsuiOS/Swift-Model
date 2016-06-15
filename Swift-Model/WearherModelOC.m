//
//  WearherModelOC.m
//  Swift-Model
//
//  Created by xuning on 16/6/15.
//  Copyright © 2016年 hus. All rights reserved.
//

#import "WearherModelOC.h"

@implementation WearherModelOC

+ (NSDictionary *)mj_objectClassInArray
{
    return @{
             @"result" : @"XNResult"
             };
}
@end

@implementation XNResult
+ (NSDictionary *)mj_objectClassInArray
{
    return @{
             @"future" : @"XNFuture"
             };
}
@end

@implementation XNFuture

@end