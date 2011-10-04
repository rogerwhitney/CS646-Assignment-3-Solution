//
//  MovingText.m
//  WanderingCount
//
//  Created by Roger Whitney on 10/3/11.
//  Copyright 2011 San Diego State University. All rights reserved.
//

#import "MovingText.h"


@implementation MovingText

- (void) setInteger: (NSInteger) integerValue {
    self.text = [NSString stringWithFormat: @"%d", integerValue];
}

- (void) moveByX: (NSInteger) deltaX y: (NSInteger) deltaY {
    CGPoint newCenter = self.center;
    newCenter.x += deltaX;
    newCenter.y -= deltaY; //make positivey go up
    self.center = newCenter;
}
@end
