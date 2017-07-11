//
//  NSString+unicode.m
//  解决数组及字典中打印中文问题
//
//  Created by 星歌 on 2017/2/9.
//  Copyright © 2017年 星歌. All rights reserved.
//

#import "NSString+unicode.h"

@implementation NSString (unicode)
- (NSString *)unicodeString{
    
    NSString *tempStr1 = [self stringByReplacingOccurrencesOfString:@"\\u" withString:@"\\U"];

    NSString *tempStr2 = [tempStr1 stringByReplacingOccurrencesOfString:@"\"" withString:@"\\\""];

    NSString *tempStr3 = [[@"\"" stringByAppendingString:tempStr2] stringByAppendingString:@"\""];

    NSData *tempData = [tempStr3 dataUsingEncoding:NSUTF8StringEncoding];


    NSPropertyListFormat format = NSPropertyListOpenStepFormat;

    NSString *returnStr = [NSPropertyListSerialization propertyListWithData:tempData options:NSPropertyListImmutable format:&format error:nil];
    return [returnStr stringByReplacingOccurrencesOfString:@"\\r\\n" withString:@"\n"];
}
@end
