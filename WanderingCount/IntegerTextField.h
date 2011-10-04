//
//  IntegerTextField.h
//  WanderingCount
//
//  Created by Roger Whitney on 10/3/11.
//  Copyright 2011 San Diego State University. All rights reserved.
//
// Textfield that accepts integers for values instead of text

#import <Foundation/Foundation.h>


@interface IntegerTextField : UITextField {
    
}
- (void) setInteger: (NSInteger) integerValue;
- (NSInteger)integer;
@end
