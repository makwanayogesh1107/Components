//
//  Helper.h
//  CommonComponent
//
//  Created by Pankaj Yogesh on 2/2/16.
//  Copyright (c) 2016 Technocracker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define fontSystem @"System"
#define fontHelveticaNeue @"HelveticaNeue"

@interface Helper : NSObject
+(CGFloat)ScreenHeight;
+(CGFloat)ScreenWidth;
+(CGRect)frameFrom5:(CGRect)frame;
+(UIFont*)fontFrom5:(NSString*)fontName fontSize:(CGFloat)size;
@end
