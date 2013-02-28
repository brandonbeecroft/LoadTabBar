//
//  ViewController1.m
//  LoadTabBar
//
//  Created by Brandon Beecroft on 2/28/13.
//  Copyright (c) 2013 Brandon Beecroft. All rights reserved.
//

#import "ViewController1.h"

@interface ViewController1 ()

@end

@implementation ViewController1

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
    // Do any additional setup after loading the view from its nib.
    
    //add new bar button item that will dismiss modal
    UIBarButtonItem *dismissModal = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(dismissAdmin)];
    //set the bar button to the left side
    [[self navigationItem] setLeftBarButtonItem:dismissModal];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)dismissAdmin {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
