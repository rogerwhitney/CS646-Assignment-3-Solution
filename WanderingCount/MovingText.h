//
//  MovingText.h
//  WanderingCount
//
//  Created by Roger Whitney on 10/3/11.
//  Copyright 2011 San Diego State University. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MovingText : UILabel {
    
}
- (void) setInteger: (NSInteger) integerValue;
- (void) moveByX: (NSInteger) deltaX y: (NSInteger) deltaY;

@end
