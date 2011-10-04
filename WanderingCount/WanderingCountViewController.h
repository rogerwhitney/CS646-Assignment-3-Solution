//
//  WanderingCountViewController.h
//  WanderingCount
//
//  Created by Roger Whitney on 10/3/11.
//  Copyright 2011 San Diego State University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MovingText.h"
#import "IntegerTextField.h"

@interface WanderingCountViewController : UIViewController {
    
    IntegerTextField *deltaX;
    IntegerTextField *deltaY;
    MovingText *countDisplay;
    UIView *distancePanel;
    NSInteger count;
}

@property (nonatomic, retain) IBOutlet IntegerTextField *deltaX;
@property (nonatomic, retain) IBOutlet IntegerTextField *deltaY;
@property (nonatomic, retain) IBOutlet MovingText *countDisplay;
@property (nonatomic, retain) IBOutlet UIView *distancePanel;

- (IBAction)updateCount;
- (IBAction)backgroundTap;

@end
