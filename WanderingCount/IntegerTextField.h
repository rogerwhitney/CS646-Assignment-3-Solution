//
//  IntegerTextField.h
//  WanderingCount
//
//  Created by Roger Whitney on 10/3/11.
//  Copyright 2011 San Diego State University. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface IntegerTextField : UITextField<UITextFieldDelegate> {
    
}
- (IBAction)textFieldDoneEditing:(id)sender;
- (void) setInteger: (NSInteger) integerValue;
- (NSInteger)integer;
@end
