#import "AFISubmitViewController.h"

#import "AFIComment.h"
#import "AFIAPIClient.h"


@interface AFISubmitViewController()
@property (nonatomic, strong) AFISubmitViewController *submitViewController;

@end

@implementation AFISubmitViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.submitViewController = [AFISubmitViewController new];
    self.comment.delegate = self;
    
}

- (IBAction)submitButtonPressed:(id)sender {
    NSDictionary *commentDictionary = @{@"name": self.userName.text, @"comment": self.comment.text, @"accession_number": self.accessionNumber.text};
    AFIAPIClient *client = [AFIAPIClient new];
    [client postCommentDictionary:commentDictionary forAccessionNumber:self.accessionNumber.text withSuccess:nil];
    [self.navigationController popViewControllerAnimated:YES];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

@end
