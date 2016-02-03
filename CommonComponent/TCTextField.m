//
//  TCTextField.m
//  CommonComponent
//
//  Created by Pankaj Yogesh on 2/3/16.
//  Copyright (c) 2016 Technocracker. All rights reserved.
//

#import "TCTextField.h"
#import "Helper.h"

@implementation TCTextField

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self)
    {
        self.backgroundColor = [UIColor whiteColor];
        self.layer.cornerRadius = 10;
        self.textAlignment =  NSTextAlignmentCenter;
        self.font = [Helper fontFrom5:fontHelveticaNeue fontSize:16];
    }
    return self;
}

@end
