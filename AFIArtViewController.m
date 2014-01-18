#import "AFIArtViewController.h"

#import "AFIArt.h"
#import "AFIComment.h"

@interface AFIArtViewController ()

@end

@implementation AFIArtViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.nameLabel.text = self.art.name;
    self.descriptionLabel.text = self.art.description;
    UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:self.art.imageURL]]];

    [self.imageView setImage:image];
    self.commentsTableView.delegate = self;
    self.commentsTableView.dataSource = self;
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self.commentsTableView reloadData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.art.comments.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    AFIComment *comment = self.art.comments[indexPath.row];
    cell.textLabel.text = comment.name;
    cell.detailTextLabel.text = comment.comment;
    return cell;
}


@end
