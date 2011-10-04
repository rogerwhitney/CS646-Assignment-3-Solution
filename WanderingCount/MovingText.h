//
//  MovingText.h
//  WanderingCount
//
//  Created by Roger Whitney on 10/3/11.
//  Copyright 2011 San Diego State University. All rights reserved.
//

// UILabel that moves around. Knows it superview and when goes out of
// superview and wraps to other side
// Edges are not handle correctly can have text show a bit outside of superview


#import <Foundation/Foundation.h>


@interface MovingText : UILabel {
    
}
- (void) setInteger: (NSInteger) integerValue;
- (void) moveByX: (NSInteger) deltaX y: (NSInteger) deltaY;

@end
