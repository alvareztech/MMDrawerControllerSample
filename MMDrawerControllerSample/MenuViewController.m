//
//  MenuViewController.m
//  MMDrawerControllerSample
//
//  Created by Daniel Alvarez on 2/5/14.
//  Copyright (c) 2014 Daniel Alvarez. All rights reserved.
//

#import "MenuViewController.h"
#import "MMDrawerController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"viewDidLoad (Menu)");

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Index pressed %i", (int) indexPath.row);

    if (indexPath.row == 0) {
        UIViewController *center = [self.storyboard instantiateViewControllerWithIdentifier:@"mainoption"];
        UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:center];
        [self.mm_drawerController setCenterViewController:nav withCloseAnimation:YES completion:nil];
    } else if (indexPath.row == 1) {
        UIViewController *center = [self.storyboard instantiateViewControllerWithIdentifier:@"option2"];
        [self.mm_drawerController setCenterViewController:center withCloseAnimation:YES completion:nil];
    } else if (indexPath.row == 2) {
        UIViewController *center = [self.storyboard instantiateViewControllerWithIdentifier:@"option3"];
        [self.mm_drawerController setCenterViewController:center withCloseAnimation:YES completion:nil];
    } else if (indexPath.row == 3) {
        UIViewController *center = [self.storyboard instantiateViewControllerWithIdentifier:@"option4"];
        [self.mm_drawerController setCenterViewController:center withCloseAnimation:YES completion:nil];
    }
//    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:center];
}


-(MMDrawerController*)mm_drawerController{
    UIViewController *parentViewController = self.parentViewController;
    while (parentViewController != nil) {
        if([parentViewController isKindOfClass:[MMDrawerController class]]){
            return (MMDrawerController *)parentViewController;
        }
        parentViewController = parentViewController.parentViewController;
    }
    return nil;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
