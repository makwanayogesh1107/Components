//
//  ViewController.m
//  CommonComponent
//
//  Created by Pankaj Yogesh on 2/2/16.
//  Copyright (c) 2016 Technocracker. All rights reserved.
//

#import "ViewController.h"
#import "Helper.h"
#import "TCTextField.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:0.23 green:0.5 blue:.7 alpha:1];
    
    TCTextField *txtUser = [[TCTextField alloc] initWithFrame:[Helper frameFrom5:CGRectMake(30,264,260,50)]];
    txtUser.placeholder = @"yogesh@gmail.com";
    [self.view addSubview:txtUser];
    
    TCTextField *txtPass = [[TCTextField alloc] initWithFrame:[Helper frameFrom5:CGRectMake(30,330,260,50)]];
    txtPass.placeholder = @"password";
    txtPass.secureTextEntry = true;
    [self.view addSubview:txtPass];
    
    UIButton *btnLogin = [[UIButton alloc] initWithFrame:[Helper frameFrom5:CGRectMake(30,410,260,50)]];
    btnLogin.backgroundColor = [UIColor colorWithRed:0.47 green:0.7 blue:.84 alpha:1];
    btnLogin.layer.cornerRadius = txtPass.frame.size.height / 2;
    [btnLogin setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btnLogin setTitle:@"Sign In" forState:UIControlStateNormal];
    btnLogin.titleLabel.font = [Helper fontFrom5:fontHelveticaNeue fontSize:26];
    [self.view addSubview:btnLogin];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
