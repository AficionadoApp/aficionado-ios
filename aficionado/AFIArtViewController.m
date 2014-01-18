#import "AFIArtViewController.h"

@implementation AFIArtViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"View art" image:nil tag:1];
    
    self.searchBar.delegate = self;
}


#pragma mark UISearchBarDelegate methods

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    
}

@end
