//
//  ContactFormCell.m
//  Contacts
//
//  Created by Tech Team on 3/31/17.
//  Copyright © 2017 Praveen Pendyala. All rights reserved.
//

#import "ContactFormCell.h"

@implementation ContactFormCell

- (void)configure:(NSString *)text color:(UIColor *)color {
    [[self label] setText:text];
    [[self contentView] setBackgroundColor:color];
}

@end
