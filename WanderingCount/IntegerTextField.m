//
//  IntegerTextField.m
//  WanderingCount
//
//  Created by Roger Whitney on 10/3/11.
//  Copyright 2011 San Diego State University. All rights reserved.
//

#import "IntegerTextField.h"


@implementation IntegerTextField

-(id) initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    self.keyboardType = UIKeyboardTypeNumberPad;
    self.returnKeyType = UIReturnKeyGo;
  
    return self;
}

- (IBAction)textFieldDoneEditing:(id)sender {
    [self resignFirstResponder];
}

- (void) setInteger: (NSInteger) integerValue {
    self.text = [NSString stringWithFormat: @"%d", integerValue];
}

- (NSInteger) integer {
    return [self.text integerValue];
}
@end
