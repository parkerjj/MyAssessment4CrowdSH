//
//  SecondViewController.m
//  MyAssessment
//
//  Created by Parker on 15/4/9.
//  Copyright (c) 2015年 Parker. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    [_tipLabel setText:[NSString stringWithFormat:@"The button pressed is %@",_tipString]];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)goBack:(id)sender{
    if ([_delegate respondsToSelector:@selector(SecondViewController:popBackWithString:)] && [sender isMemberOfClass:[UIButton class]]) {
        NSInteger tag = [sender tag];
        NSString *backStr;
        
        
        switch (tag) {
            case 1: //Blue
                backStr = @"ONE";
                break;
            case 2://Red
                backStr = @"TWO";
                break;
            case 3://Green
                backStr = @"THREE";
                break;
                
            default:
                break;
        }

        
        [_delegate SecondViewController:self popBackWithString:backStr];
    }
    [self.navigationController popViewControllerAnimated:YES];
}

@end
