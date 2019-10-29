//
//  NetApi.m
//  B
//
//  Created by zxsd on 2019/10/29.
//  Copyright © 2019 智行时代国际传媒（北京）有限公司. All rights reserved.
//

#import "NetApi.h"
// 这个要写在.m文件中
#import "AFNetworking.h"

@implementation NetApi

- (void)testApi{
    AFHTTPSessionManager *manager=[AFHTTPSessionManager   manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.requestSerializer = [AFHTTPRequestSerializer serializer];
    [manager.requestSerializer setTimeoutInterval:15];
    
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    
    [manager POST:@"www" parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"URL -- > %@", error);
    }];
}

@end
