#import <Foundation/Foundation.h>

@interface AFIComment : NSObject

@property (nonatomic, strong) NSString *time;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *comment;

- (void)fillWithDictionary:(NSDictionary *)dictionary;

@end
