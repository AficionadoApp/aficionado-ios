@interface AFIAPIClient : NSObject

- (void)getArtWithAccessionNumber:(NSString *)accessionNumber withSuccess:(void(^)(id))successBlock;

- (void)postCommentDictionary:(NSDictionary *)comment forAccessionNumber:(NSString *)accessionNumber withSuccess:(void(^)(id))successBlock;

@end
