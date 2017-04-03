//
//  DoneView.h
//  Contacts
//
//  Created by Praveen Pendyala on 4/2/17.
//  Copyright © 2017 Praveen Pendyala. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DoneViewDelegate <NSObject>

-(void)doneButtonPressed;

@end

@interface DoneView: UITableViewHeaderFooterView

@property (weak, nonatomic) id <DoneViewDelegate> delegate;

@end
