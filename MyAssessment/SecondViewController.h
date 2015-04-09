//
//  SecondViewController.h
//  MyAssessment
//
//  Created by Parker on 15/4/9.
//  Copyright (c) 2015年 Parker. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SecondViewController;
@protocol SecondViewControllerDelegate <NSObject>
@optional
- (void)SecondViewController:(SecondViewController*)secondVC popBackWithString:(NSString*)string;
@end

@interface SecondViewController : UIViewController{
    IBOutlet UILabel *_tipLabel;
    
}

@property (nonatomic,strong) NSString *tipString;
@property (nonatomic,weak) id <SecondViewControllerDelegate> delegate;


// Go Back to First View
- (IBAction)goBack:(id)sender;

@end
