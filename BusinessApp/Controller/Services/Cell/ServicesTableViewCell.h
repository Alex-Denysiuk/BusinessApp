//
//  ServicesTableViewCell.h
//  BusinessApp
//
//  Created by Dev on 17.10.2024.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ServicesTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *serviceImage;
@property (weak, nonatomic) IBOutlet UILabel *cellLabel;

@end

NS_ASSUME_NONNULL_END
