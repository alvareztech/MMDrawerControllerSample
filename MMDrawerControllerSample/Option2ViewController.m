//
//  Option2ViewController.m
//  MMDrawerControllerSample
//
//  Created by Daniel Alvarez on 2/6/14.
//  Copyright (c) 2014 Daniel Alvarez. All rights reserved.
//

#import "Option2ViewController.h"
#import "MMDrawerController.h"

@interface Option2ViewController ()

@end

@implementation Option2ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSUInteger)supportedInterfaceOrientations {
    NSLog(@"supportedInterfaceOrientations");
    return UIInterfaceOrientationMaskPortrait;
}

@end
