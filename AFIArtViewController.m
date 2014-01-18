#import "AFIArtViewController.h"

#import "AFIArt.h"

@interface AFIArtViewController ()

@end

@implementation AFIArtViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.nameLabel.text = self.art.name;
    self.descriptionLabel.text = self.art.description;
    UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:self.art.imageURL]]];

    [self.imageView setImage:image];

}

@end
