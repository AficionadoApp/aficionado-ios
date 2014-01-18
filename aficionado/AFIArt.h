@interface AFIArt : NSObject

- (void)fillWithDictionary:(NSDictionary *)dictionary;

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *accessionNumber;
@property (nonatomic, strong) NSString *description;
@property (nonatomic, strong) NSString *imageURL;
@property (nonatomic, strong) NSArray *comments;

@end
