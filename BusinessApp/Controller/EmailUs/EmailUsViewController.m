//
//  EmailUsViewController.m
//  BusinessApp
//
//  Created by Dev on 19.10.2024.
//

#import "EmailUsViewController.h"

@interface EmailUsViewController ()

@end

@implementation EmailUsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"Email Us";
    
    self.messageField.delegate = self;
    self.messageField.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.messageField.layer.borderWidth = 0.25;
    self.messageField.layer.cornerRadius = 5.0;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)dismissKeyboard:(id)sender {
    [self resignFirstResponder];
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    if ([text rangeOfCharacterFromSet:[NSCharacterSet newlineCharacterSet]]. location == NSNotFound) {
        return YES;
    }
    
    [textView resignFirstResponder];
    return NO;
}

- (IBAction)send:(id)sender {
    MFMailComposeViewController *composer = [[MFMailComposeViewController alloc] init];
    [composer setMailComposeDelegate:self];
    
    if (![MFMailComposeViewController canSendMail]) {
        NSLog(@"Cant send mail");
        return;
    }
        
    [composer setToRecipients:@[@"abc@123.com"]];
    [composer setSubject:@"Message from my app!"];
    
    [composer setMessageBody:[NSString stringWithFormat:
                              @"Name: %@ \nEmail: %@ \n\nMessage: %@",
                              self.nameField.text,
                              self.emailField.text,
                              self.messageField.text] isHTML:NO];
    [self presentViewController:composer animated:YES completion:nil];
}

-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
