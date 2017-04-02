//
//  ContactFormCell.m
//  Contacts
//
//  Created by Praveen Pendyala on 3/31/17.
//  Copyright © 2017 Praveen Pendyala. All rights reserved.
//

#import "ContactFormCell.h"

@interface ContactFormCell()

@end

@implementation ContactFormCell

- (void)configure:(NSString *)text color:(UIColor *)color {
    [[self label] setText:text];
    [self setBackgroundColor:color];
}

@end
