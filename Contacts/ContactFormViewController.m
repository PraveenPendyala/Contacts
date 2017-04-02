//
//  ViewController.m
//  Contacts
//
//  Created by Praveen Pendyala on 3/29/17.
//  Copyright © 2017 Praveen Pendyala. All rights reserved.
//

#import "ContactFormViewController.h"
#import "ContactFormCell.h"
#import "ContactDetailsViewController.h"

@interface ContactFormViewController ()

@end

@implementation ContactFormViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UINib *cellNib    = [UINib nibWithNibName:@"ContactFormCell"
                                    bundle:nil];
    UINib *genderView = [UINib nibWithNibName:@"GenderView"
                                       bundle:nil];
    UINib *doneView   = [UINib nibWithNibName:@"DoneView"
                                       bundle:nil];
    [[self tableView] registerNib:genderView forHeaderFooterViewReuseIdentifier:@"GenderView"];
    [[self tableView] registerNib:doneView forHeaderFooterViewReuseIdentifier:@"DoneView"];
    [[self tableView] registerNib:cellNib
           forCellReuseIdentifier:@"ContactFormCell"];
    
    self.dataSource = [NSMutableArray arrayWithObjects:@"First Name",@"",
                                                       @"Last Name" ,@"",
                                                       @"Age"       ,@"",
                                                       @"Gender"    ,@"",
                                                       @"Address1"  ,@"",
                                                       @"Address2"  ,@"",
                                                       @"ZipCode"   ,@"",
                                                       @"State"     ,@"",
                                                       nil];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [[self tableView] reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// MARK: -
// MARK: Datasource and Delegate

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ContactFormCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactFormCell"
                                                            forIndexPath:indexPath];
    if (indexPath.row % 2 != 0) {
        [cell configure:[[self dataSource]
          objectAtIndex:([indexPath row] + [indexPath section]*8)]
                  color:[UIColor whiteColor]];
        [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    }
    else {
        [cell configure:[[self dataSource]
          objectAtIndex:([indexPath row] + [indexPath section]*8)]
                  color:[UIColor clearColor]];
        [cell setAccessoryType:UITableViewCellAccessoryNone];
    }
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return section > 1 ? 0 : 8;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:false];
    if (indexPath.row % 2 != 0) {
        UIStoryboard *storyboard                      = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        ContactDetailsViewController *contactDetailVC = [storyboard instantiateViewControllerWithIdentifier:@"ContactDetailsViewController"];
        contactDetailVC.title                         = [[self dataSource] objectAtIndex:([indexPath row]-1 + [indexPath section]*8)];
        contactDetailVC.fieldValue                    = [[self dataSource] objectAtIndex:([indexPath row] + [indexPath section]*8)];
        contactDetailVC.fieldIndex                    = [indexPath row];
        [[self navigationController] pushViewController:contactDetailVC
                                               animated:true];
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return ([indexPath row] == 7 && [indexPath section] == 0) ? 0 : 44;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return section == 2 ? 164 : 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return section == 0 ? 80 : 0;
}

- (UIView*)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    return section == 0 ? [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"GenderView"] : nil;
}

- (UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    return section == 2 ? [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"DoneView"] : nil;
}


@end
