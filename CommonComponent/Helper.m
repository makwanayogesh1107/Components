//
//  Helper.m
//  CommonComponent
//
//  Created by Pankaj Yogesh on 2/2/16.
//  Copyright (c) 2016 Technocracker. All rights reserved.
//

#import "Helper.h"

@implementation Helper
+(CGFloat)ScreenHeight
{
    return [UIScreen mainScreen].bounds.size.height;
}
+(CGFloat)ScreenWidth
{
    return [UIScreen mainScreen].bounds.size.width;
}
+(CGRect)frameFrom5:(CGRect)frame
{
    if ([Helper ScreenHeight] == 480 || [Helper ScreenHeight] == 568)
    {
        return frame;
    }
    CGPoint origin = frame.origin;
    CGSize screenSize = [UIScreen mainScreen].bounds.size;
    CGSize size = frame.size;
    return CGRectMake((screenSize.width/320) * origin.x,(screenSize.height/568) * origin.y ,(screenSize.width/320) * size.width,(screenSize.height/568) * size.height);
}

+(UIFont*)fontFrom5:(NSString *)fontName fontSize:(CGFloat)size
{
    CGFloat fontSize =  size;
    if ([Helper ScreenHeight]!=480)
    {
        fontSize = ([Helper ScreenHeight] / 568) * size;
    }
    UIFont *font = [UIFont fontWithName:fontName size:fontSize];
    if (font == nil)
    {
        return [UIFont fontWithName:@"HelveticaNeue" size:fontSize];
    }
    return font;
}

@end
