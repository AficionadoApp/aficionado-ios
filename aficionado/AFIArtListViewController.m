#import "AFIArtListViewController.h"
#import "AFIArtViewController.h"

#import "AFIAPIClient.h"
#import "AFIArt.h"
#import "AFISubmitViewController.h"


@interface AFIArtListViewController()

@property (nonatomic, strong) AFIArtViewController *artViewController;
@property (nonatomic, strong) AFISubmitViewController *submitViewController;


@end

@implementation AFIArtListViewController

- (id)init {
    self = [super init];
    if (self) {
        self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"View art" image:nil tag:1];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.searchBar.delegate = self;
    self.artViewController = [AFIArtViewController new];
    self.submitViewController = [AFISubmitViewController new];

}

#pragma mark UISearchBarDelegate methods

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    [searchBar resignFirstResponder];
    AFIAPIClient *client = [AFIAPIClient new];
    [client getArtWithAccessionNumber:searchBar.text withSuccess:^(id json) {
        NSDictionary *artDict = json;
        AFIArt *art = [AFIArt new];
        [art fillWithDictionary:artDict];
        self.artViewController.art = art;
        [self.navigationController pushViewController:self.artViewController animated:YES];
    }];
}

#pragma mark UITableViewDelegate methods

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return nil;
}
- (IBAction)postButtonPressed:(id)sender {
    [self.navigationController pushViewController:self.submitViewController animated:YES];
}

@end
