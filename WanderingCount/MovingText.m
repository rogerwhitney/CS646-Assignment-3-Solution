//
//  MovingText.m
//  WanderingCount
//
//  Created by Roger Whitney on 10/3/11.
//  Copyright 2011 San Diego State University. All rights reserved.
//

#import "MovingText.h"
@interface MovingText()
- (NSInteger) maxY;
- (NSInteger) maxX;
- (NSInteger) x;
- (NSInteger) y;
- (void) setX: (NSInteger) newX;
- (void) setY: (NSInteger) newY;
- (void) setX: (NSInteger) newX y: (NSInteger) newY;
- (BOOL) isOffScreenLeft;
- (BOOL) isOffScreenRight;
- (BOOL) isOffScreenTop;
- (BOOL) isOffScreenBottom;
- (void) ifOffScreenWrapAround;
@end

@implementation MovingText

- (void) setInteger: (NSInteger) integerValue {
    self.text = [NSString stringWithFormat: @"%d", integerValue];
}


- (void) moveByX: (NSInteger) deltaX y: (NSInteger) deltaY {
    NSInteger newX = [self x] + deltaX;
    NSInteger newY = [self y] - deltaY; //Make positive y go up
    [self setX: newX y: newY];
    [self ifOffScreenWrapAround];
}

#pragma mark - Private methods

- (NSInteger) maxY {
    return self.superview.frame.size.height;
}

- (NSInteger) maxX {
    return self.superview.frame.size.width;
}

- (NSInteger) x {
    return self.center.x;
}

- (NSInteger) y {
    return self.center.y;
}


- (void) setX: (NSInteger) newX {
    [self setX:newX y: self.center.y];
}

- (void) setY:(NSInteger)newY {
    [self setX:self.center.x y: newY];
}

- (void) setX: (NSInteger) newX y: (NSInteger) newY {
    CGPoint newCenter = self.center;
    newCenter.x = newX;
    newCenter.y = newY;
    self.center = newCenter;
}


- (BOOL) isOffScreenLeft {
    return [self x] >[self maxX];
}

- (BOOL) isOffScreenRight {
    return [self x] < 0;
}

- (BOOL) isOffScreenTop {
    return [self y] < 0;
}

- (BOOL) isOffScreenBottom {
    return [self y] > [self maxY];
}

- (void) ifOffScreenWrapAround {
    if ([self isOffScreenLeft])
        [self setX: 0];
    else if ([self isOffScreenRight])
        [self setX:[self maxX]];
    
    if ([self isOffScreenBottom])
        [self setY: 0];
    else if ([self isOffScreenTop])
        [self setY:[self maxY]];
}
@end
