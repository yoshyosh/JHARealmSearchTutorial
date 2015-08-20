//
//  BlogPostTableViewCell.h
//  realmSearch
//
//  Created by Joseph Anderson on 8/12/15.
//  Copyright (c) 2015 Realm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BlogPostTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *emojiLabel;
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UILabel *contentLabel;
@property (strong, nonatomic) IBOutlet UILabel *dateLabel;

@end
