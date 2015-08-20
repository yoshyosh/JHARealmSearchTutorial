//
//  ViewController.m
//  realmSearch
//
//  Created by Joseph Anderson on 8/6/15.
//  Copyright (c) 2015 Realm. All rights reserved.
//

#import "ViewController.h"
#import <Realm/Realm.h>
#import "BlogSearchViewController.h"
#import "BlogObject.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  BlogSearchViewController *blogSearchViewController = [[BlogSearchViewController alloc] initWithEntityName:@"BlogObject" inRealm:[RLMRealm defaultRealm] searchPropertyKeyPath:@"title"];
  blogSearchViewController.useContainsSearch = YES;
  UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:blogSearchViewController];
  navigationController.navigationBar.barTintColor = [[UIColor alloc] initWithRed:240.0/255.0 green:114.0/255.0 blue:125.0/255.0 alpha:1.0];
  navigationController.navigationBar.translucent = NO;
  [navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
  [BlogObject loadBlogData];
  
  [self addChildViewController:navigationController];
  [self.view addSubview:navigationController.view];
  
  UIView *view=[[UIView alloc] initWithFrame:CGRectMake(0, 0,[UIScreen mainScreen].bounds.size.width, 21)];
  view.backgroundColor= [[UIColor alloc] initWithRed:240.0/255.0 green:114.0/255.0 blue:125.0/255.0 alpha:1.0];
  [self.view addSubview:view];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
