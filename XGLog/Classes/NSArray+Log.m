//
//  NSArray+Log.m
//  解决数组及字典中打印中文问题
//
//  Created by 星歌 on 2017/2/9.
//  Copyright © 2017年 星歌. All rights reserved.
//

#import "NSArray+Log.h"

#import "NSString+unicode.h"
#import <objc/runtime.h>

@implementation NSArray (Log)

#ifdef DEBUG
- (NSString *)descriptionWithLocale:(id)locale {
    return self.description.unicodeString;
}
- (NSString *)debugDescription{
    return self.description.unicodeString;
}
#endif

@end
