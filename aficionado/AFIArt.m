#import "AFIArt.h"
#import "AFIComment.h"

@implementation AFIArt

- (void)fillWithDictionary:(NSDictionary *)dictionary {
    self.name = dictionary[@"title"];
    self.accessionNumber = dictionary[@"accession_number"];
    self.description = dictionary[@"description"];
    self.imageURL = dictionary[@"image"];
    NSMutableArray *comments = [NSMutableArray new];
    for (NSDictionary *commentDict in dictionary[@"comments"]) {
        AFIComment *comment = [AFIComment new];
        [comment fillWithDictionary:commentDict];
        [comments addObject:comment];
    }
    self.comments = comments;
}

@end
