//
//  DAViewController.m
//  MMDrawerControllerSample
//
//  Created by Daniel Alvarez on 2/5/14.
//  Copyright (c) 2014 Daniel Alvarez. All rights reserved.
//

#import "DAViewController.h"
#import "MMDrawerController.h"
#import "MMDrawerVisualState.h"

@interface DAViewController ()

@end

@implementation DAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.4
}

- (IBAction)ingresar:(UIButton *)sender {
    NSLog(@"Ingresar");
    
    UIViewController *leftDrawer = [self.storyboard instantiateViewControllerWithIdentifier:@"menu"];
    UIViewController *center = [self.storyboard instantiateViewControllerWithIdentifier:@"mainoption"];
    UIViewController *rightDrawer = [self.storyboard instantiateViewControllerWithIdentifier:@"menu2"];
    
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:center];
    
    
    MMDrawerController * drawerController = [[MMDrawerController alloc]
                                             initWithCenterViewController:navigationController
                                             leftDrawerViewController:leftDrawer
                                             rightDrawerViewController:rightDrawer];
    
    
    drawerController.openDrawerGestureModeMask ^=  MMOpenDrawerGestureModePanningCenterView;
    drawerController.openDrawerGestureModeMask ^= MMOpenDrawerGestureModePanningNavigationBar;
    
    drawerController.closeDrawerGestureModeMask ^= MMCloseDrawerGestureModePanningNavigationBar;
    drawerController.closeDrawerGestureModeMask ^= MMCloseDrawerGestureModePanningCenterView;
    
    drawerController.closeDrawerGestureModeMask ^= MMCloseDrawerGestureModeTapCenterView;
    
   
    
    [drawerController setDrawerVisualStateBlock:[MMDrawerVisualState swingingDoorVisualStateBlock]];

    
    [self presentViewController:drawerController animated:YES completion:nil];
    
}

@end
