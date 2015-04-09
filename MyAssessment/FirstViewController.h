//
//  ViewController.h
//  MyAssessment
//
//  Created by Parker on 15/4/9.
//  Copyright (c) 2015年 Parker. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"


@interface FirstViewController : UIViewController<SecondViewControllerDelegate>{
    IBOutlet UIButton *_mainButton;
}



//Go Second View
- (IBAction)goButton:(id)sender;


@end

