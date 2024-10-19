//
//  EmailUsViewController.h
//  BusinessApp
//
//  Created by Dev on 19.10.2024.
//

#import <UIKit/UIKit.h>
#import <Accounts/Accounts.h>
#import <MessageUI/MessageUI.h>

NS_ASSUME_NONNULL_BEGIN

@interface EmailUsViewController : UIViewController <UITextViewDelegate, MFMailComposeViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (strong, nonatomic) IBOutlet UITextView *messageField;
@property (weak, nonatomic) IBOutlet UIButton *button1;

- (IBAction)dismissKeyboard:(id)sender;
- (IBAction)send:(id)sender;

@end

NS_ASSUME_NONNULL_END
