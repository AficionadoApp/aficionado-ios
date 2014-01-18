#import "AFIComment.h"

@implementation AFIComment

- (void)fillWithDictionary:(NSDictionary *)dictionary {
    self.name = dictionary[@"name"];
    self.time = dictionary[@"time"];
    self.comment = dictionary[@"comment"];
}

@end
