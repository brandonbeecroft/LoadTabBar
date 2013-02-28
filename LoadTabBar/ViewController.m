//
//  ViewController.m
//  LoadTabBar
//
//  Created by Brandon Beecroft on 2/28/13.
//  Copyright (c) 2013 Brandon Beecroft. All rights reserved.
//

#import "ViewController.h"
#import "ViewController1.h"
#import "ViewController2.h"
#import "ViewController3.h"

@interface ViewController ()

@property (nonatomic, strong) UITabBarController *tbc;

@end

@implementation ViewController

@synthesize tbc;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)openTabbar:(id)sender {
    
    //create view controllers to add to the tab bar
    ViewController1 *vc1 = [[ViewController1 alloc] initWithNibName:@"ViewController1" bundle:nil];
	UINavigationController *vc1NavController = [[UINavigationController alloc] initWithRootViewController:vc1];
    vc1.title = @"View Controller 1";
    //vcNavController.tabBarItem.image = [UIImage imageNamed:@"vc1"];
    
    ViewController2 *vc2 = [[ViewController2 alloc] initWithNibName:@"ViewController2" bundle:nil];
	UINavigationController *vc2NavController = [[UINavigationController alloc] initWithRootViewController:vc2];
    vc2.title = @"View Controller 2";
    //cardNavController.tabBarItem.image = [UIImage imageNamed:@"vc2"];
    
    ViewController3 *vc3 = [[ViewController3 alloc] initWithNibName:@"ViewController3" bundle:nil];
	UINavigationController *vc3NavController = [[UINavigationController alloc] initWithRootViewController:vc3];
    vc3.title = @"View Controller 3";
    //cardNavController.tabBarItem.image = [UIImage imageNamed:@"vc3"];
    
    
    //setup the tab bar and add the controllers
	self.tbc = [[UITabBarController alloc] initWithNibName:nil bundle:nil];
    
    // change the tint color of the tab bar.
    //tbc.tabBar.tintColor = [UIColor colorWithRed:.265625 green:.265625 blue:.265625 alpha:1];
    tbc.tabBar.tintColor = [UIColor blackColor];
    
    //create an array of view controllers
    self.tbc.viewControllers = [NSArray arrayWithObjects:vc1NavController, vc2NavController, vc3NavController, nil];
	
    //set the default view controller to load
    self.tbc.selectedViewController = vc1NavController;
    
    // presentation of the view controllers is up to you.
    [self presentViewController:tbc animated:YES completion:nil];
    
}
@end
