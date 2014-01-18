#import "AFNetworking.h"

#import "AFIAPIClient.h"

#import "AFIComment.h"

@implementation AFIAPIClient

- (void)getArtWithAccessionNumber:(NSString *)accessionNumber withSuccess:(void(^)(id))successBlock {
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    NSString *urlString = [NSString stringWithFormat:@"http://aficionado.herokuapp.com/pieces?accession_number=%@", accessionNumber];
    [manager GET:urlString parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"%@", responseObject);
        if (successBlock) {
            successBlock(responseObject);
        }
    } failure:^(AFHTTPRequestOperation *operation,NSError *error){
        NSLog(@"%@", error);
    }];
}

- (void)postCommentDictionary:(NSDictionary *)comment forAccessionNumber:(NSString *)accessionNumber withSuccess:(void(^)(id))successBlock {
    
    NSString *urlString = @"http://aficionado.herokuapp.com/posts";

     AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager POST:urlString parameters:comment constructingBodyWithBlock:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"%@", responseObject);

        if (successBlock) {
            successBlock(responseObject);            
        }

    } failure:^(AFHTTPRequestOperation *operation,NSError *error){
        NSLog(@"%@", error);
    }];
}

@end
