@interface AFIArtListViewController : UIViewController <UISearchBarDelegate, UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *commentListTableView;

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

@end
