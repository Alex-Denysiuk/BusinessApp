//
//  HomeViewController.h
//  BusinessApp
//
//  Created by Dev on 17.10.2024.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HomeViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *servicesButton;
@property (weak, nonatomic) IBOutlet UIButton *portfolioButton;
@property (weak, nonatomic) IBOutlet UIButton *aboutUsButton;
@property (weak, nonatomic) IBOutlet UIButton *contactUsButton;
@property (weak, nonatomic) IBOutlet UIButton *socialButton;

- (IBAction)services:(id)sender;
- (IBAction)portfolio:(id)sender;
- (IBAction)aboutUs:(id)sender;
- (IBAction)contactUs:(id)sender;
- (IBAction)social:(id)sender;

@end

NS_ASSUME_NONNULL_END
