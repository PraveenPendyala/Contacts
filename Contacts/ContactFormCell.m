//
//  ContactFormCell.m
//  Contacts
//
//  Created by Tech Team on 3/31/17.
//  Copyright © 2017 Praveen Pendyala. All rights reserved.
//

#import "ContactFormCell.h"

@implementation ContactFormCell

- (void)configure:(NSString *)text {
    [[self label] setText:text];
}

@end
