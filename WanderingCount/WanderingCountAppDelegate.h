//
//  WanderingCountAppDelegate.h
//  WanderingCount
//
//  Created by Roger Whitney on 10/3/11.
//  Copyright 2011 San Diego State University. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WanderingCountViewController;

@interface WanderingCountAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet WanderingCountViewController *viewController;

@end
