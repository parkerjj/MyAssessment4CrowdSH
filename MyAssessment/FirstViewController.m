//
//  ViewController.m
//  MyAssessment
//
//  Created by Parker on 15/4/9.
//  Copyright (c) 2015年 Parker. All rights reserved.
//

#import "FirstViewController.h"


@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goButton:(id)sender{
    [_mainButton setTitle:@"None" forState:UIControlStateNormal];
    [self performSegueWithIdentifier:@"Go2nd" sender:sender];

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"Go2nd"]) {
        if ([sender isMemberOfClass:[UIButton class]]) {
            NSInteger tag = [sender tag];
            UIColor *bgColor;
            NSString *tipStr = [@(tag) stringValue];
            
            
            switch (tag) {
                case 1: //Blue
                    bgColor = [UIColor blueColor];
                    break;
                case 2://Red
                    bgColor = [UIColor redColor];
                    break;
                case 3://Green
                    bgColor = [UIColor greenColor];
                    break;
                    
                default:
                    break;
            }
            SecondViewController *secondVC = segue.destinationViewController;
            [secondVC setDelegate:self];
            [secondVC.view setBackgroundColor:bgColor];
            [secondVC setTipString:tipStr];
            
        }
    }
    
}


#pragma mark - Delegate

- (void)SecondViewController:(SecondViewController *)secondVC popBackWithString:(NSString *)string{
    [_mainButton setTitle:string forState:UIControlStateNormal];
}

@end
