//
//  HeaderView.m
//  Contacts
//
//  Created by Tech Team on 3/31/17.
//  Copyright © 2017 Praveen Pendyala. All rights reserved.
//

#import "HeaderView.h"

@implementation HeaderView

- (void)configure:(NSString *) text {
    [[self headerLabel] setText:text];
}

@end
