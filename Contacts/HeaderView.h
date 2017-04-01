//
//  HeaderView.h
//  Contacts
//
//  Created by Tech Team on 3/31/17.
//  Copyright © 2017 Praveen Pendyala. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HeaderView: UITableViewHeaderFooterView

@property (weak, nonatomic) IBOutlet UILabel *headerLabel;

-(void)configure:(NSString *)text;

@end
