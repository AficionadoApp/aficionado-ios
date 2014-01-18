@interface AFIArtViewController : UIViewController <UISearchBarDelegate>
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UITableView *commentListTableView;

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

@end
