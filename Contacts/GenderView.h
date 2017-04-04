//
//  GenderView.h
//  Contacts
//
//  Created by Praveen Pendyala on 3/31/17.
//  Copyright © 2017 Praveen Pendyala. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol GenderViewDelegate <NSObject>

-(void)genderChanged:(NSString*)gender;

@end

@interface GenderView: UITableViewHeaderFooterView

@property (weak, nonatomic) id <GenderViewDelegate> delegate;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@end
