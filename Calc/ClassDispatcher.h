//
//  ClassDispatcher.h
//  Calc
//
//  Created by 山崎進 on 2015/02/19.
//  Copyright (c) 2015年 zacky1972. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClassDispatcher : NSObject

@property NSDictionary* nameToClass;

- (void)push:(NSString *)buttonName;

@end
