//
//  WanderingCountViewController.m
//  WanderingCount
//
//  Created by Roger Whitney on 10/3/11.
//  Copyright 2011 San Diego State University. All rights reserved.
//

#import "WanderingCountViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface WanderingCountViewController() 
- (void) saveCount;
- (NSInteger) recoverCount;
- (void) updateCountDisplay;
- (void) hideKeyboard;
@end

@implementation WanderingCountViewController
@synthesize deltaX;
@synthesize deltaY;
@synthesize countDisplay;
@synthesize distancePanel;


- (IBAction)updateCount {
    count++;
    [self hideKeyboard];
    [self updateCountDisplay];
    [self saveCount];
}

- (IBAction)backgroundTap {
    [self hideKeyboard];
}


- (void)dealloc
{
    [deltaX release];
    [deltaY release];

    [countDisplay release];
    [distancePanel release];
    [super dealloc];
}

#pragma mark - Private methods

-(void) hideKeyboard {
    [deltaX resignFirstResponder];
    [deltaY resignFirstResponder];
    
}
- (void) updateCountDisplay {
    [countDisplay setInteger:count];
    [countDisplay moveByX:[deltaX integer] y:[deltaY integer]];
}

- (void) saveCount {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:count forKey:@"count"];
    [defaults synchronize];
}

- (NSInteger) recoverCount {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    return [defaults integerForKey:@"count"];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


- (void)viewDidLoad
{
    [super viewDidLoad];
    count = [self recoverCount];
    [self updateCountDisplay];
    self.distancePanel.layer.cornerRadius = 10.0;
    self.distancePanel.layer.masksToBounds = YES;
}


- (void)viewDidUnload
{
    [self saveCount];
    [self setDeltaX:nil];
    [self setDeltaY:nil];
    [self setCountDisplay:nil];
    [self setDistancePanel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


@end
