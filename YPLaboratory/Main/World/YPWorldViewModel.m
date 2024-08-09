//
//  YPWorldViewModel.m
//  YPLaboratory
//
//  Created by Hansen on 2023/5/17.
//

#import "YPWorldViewModel.h"
#import "YPWorldModel.h"

@interface YPWorldViewModel ()

@property (nonatomic, strong) NSMutableArray *dataList;

@property (nonatomic, assign) NSInteger pageSize;
@property (nonatomic, assign) NSInteger pageIndex;

@end

@implementation YPWorldViewModel

- (instancetype)init {
    if (self = [super init]) {
        self.pageSize = 10;
        self.pageIndex = 1;
        self.dataList = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)startLoadData {
    self.pageIndex = 1;
    [self startLoadingData:_pageIndex];
}

- (void)loadMoreData {
    self.pageIndex ++;
    [self startLoadingData:_pageIndex];
}

- (void)startLoadingData:(NSInteger)pageIndex {
    BOOL hasMore = YES;
    if (self.pageIndex > 3) {
        hasMore = NO;
    }
    if (self.pageIndex == 1) {
        [self.dataList removeAllObjects];
    }
    
    for (NSString *familyName in [UIFont familyNames]) {
        YPWorldModel *model = [[YPWorldModel alloc] init];
        model.title = familyName;
        [self.dataList addObject:model];
    }
    
    if ([self.delegate respondsToSelector:@selector(didEndLoadData:)]) {
        [self.delegate didEndLoadData:hasMore];
    }
}

@end
