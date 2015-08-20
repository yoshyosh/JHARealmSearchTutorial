//
//  BlogSearchViewController.m
//  realmSearch
//
//  Created by Joseph Anderson on 8/12/15.
//  Copyright (c) 2015 Realm. All rights reserved.
//

#import "BlogSearchViewController.h"
#import "BlogObject.h"
#import "BlogPostTableViewCell.h"

@interface BlogSearchViewController ()

@end

@implementation BlogSearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Blogs";
    self.tableView.estimatedRowHeight = 88.f;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    [self.tableView registerNib:[UINib nibWithNibName:@"BlogPostTableViewCell" bundle:nil] forCellReuseIdentifier:@"blogCell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - <ABFRealmSearchControllerDataSource>

- (UITableViewCell *)searchViewController:(ABFRealmSearchViewController *)searchViewController
                            cellForObject:(id)anObject
                              atIndexPath:(NSIndexPath *)indexPath
{
//  UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"blogCell"];
  BlogPostTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"blogCell"];
  
  BlogObject *blog = anObject;
  
  cell.titleLabel.text = [blog.title capitalizedString];
  cell.emojiLabel.text = blog.emoji;
  cell.contentLabel.text = blog.content;
  
  return cell;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
