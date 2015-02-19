//
//  SingletonDispatcher.h
//  Calc
//
//  Created by 山崎進 on 2015/02/20.
//  Copyright (c) 2015年 zacky1972. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SingletonDispatcher : NSObject

@property NSDictionary* nameToSingleton;

- (void)push:(NSString *)buttonName;

@end
