//
//  KKThankSupportViewController.m
//  QMKKXProduct
//
//  Created by Hansen on 5/25/21.
//  Copyright © 2021 力王工作室. All rights reserved.
//

#import "KKThankSupportViewController.h"
#import "KKLabelModel.h"
#import "KKLabelTableViewCell.h"

@interface KKThankSupportViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic) NSMutableArray <KKLabelModel *> *datas;
@property (weak  , nonatomic) IBOutlet UITableView *tableView;

@end

@implementation KKThankSupportViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"鸣谢支持";
    [self setupSubviews];
    //异步处理消耗内存操作
    [self reloadDatas];
}
- (void)setupSubviews{
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
    [self.tableView registerNib:[UINib nibWithNibName:@"KKLabelTableViewCell" bundle:nil] forCellReuseIdentifier:@"KKLabelTableViewCell"];
}
- (void)reloadDatas{
    [self.datas removeAllObjects];
    {
        //涉及到的三方基础库
        KKLabelModel *element = [[KKLabelModel alloc] initWithTitle:@"涉及到的三方基础库" value:@""];
        [self.datas addObject:element];
        KKLabelModel *e1 = [[KKLabelModel alloc] initWithTitle:@"AFNetworking（封装网络通信核心类）" value:@"4.0.1"];
        e1.info = @"https://github.com/AFNetworking/AFNetworking";
        [self.datas addObject:e1];
        KKLabelModel *e2 = [[KKLabelModel alloc] initWithTitle:@"SDWebImage（加载网络图片）" value:@"4.4.8"];
        e2.info = @"https://github.com/SDWebImage/SDWebImage";
        [self.datas addObject:e2];
        KKLabelModel *e3 = [[KKLabelModel alloc] initWithTitle:@"MJRefresh（上下拉刷新）" value:@"3.5.0"];
        e3.info = @"https://github.com/CoderMJLee/MJRefresh";
        [self.datas addObject:e3];
        KKLabelModel *e4 = [[KKLabelModel alloc] initWithTitle:@"MJExtension（JSON和模型转化）" value:@"3.2.4"];
        e4.info = @"https://github.com/CoderMJLee/MJExtension";
        [self.datas addObject:e4];
        KKLabelModel *e5 = [[KKLabelModel alloc] initWithTitle:@"Masonry（布局框架）" value:@"1.1.0"];
        e5.info = @"https://github.com/SnapKit/Masonry";
        [self.datas addObject:e5];
        KKLabelModel *e6 = [[KKLabelModel alloc] initWithTitle:@"IQKeyboardManager（处理键盘遮盖）" value:@"6.5.6"];
        e6.info = @"https://github.com/hackiftekhar/IQKeyboardManager";
        [self.datas addObject:e6];
        KKLabelModel *e7 = [[KKLabelModel alloc] initWithTitle:@"TZImagePickerController（图片选择）" value:@"3.5.8"];
        e7.info = @"https://github.com/banchichen/TZImagePickerController";
        [self.datas addObject:e7];
        KKLabelModel *e8 = [[KKLabelModel alloc] initWithTitle:@"MBProgressHUD（提示框）" value:@"1.2.0"];
        e8.info = @"https://github.com/jdg/MBProgressHUD";
        [self.datas addObject:e8];
        KKLabelModel *e9 = [[KKLabelModel alloc] initWithTitle:@"lottie-ios（高性能处理动画）" value:@"2.5.3"];
        e9.info = @"https://github.com/airbnb/lottie-ios";
        [self.datas addObject:e9];
        KKLabelModel *e10 = [[KKLabelModel alloc] initWithTitle:@"Bugly（腾讯bug反馈）" value:@"2.5.5"];
        e10.info = @"https://www.baidu.com/s?ie=UTF-8&wd=Bugly";
        [self.datas addObject:e10];
        KKLabelModel *e11 = [[KKLabelModel alloc] initWithTitle:@"JPush（极光推送）" value:@"3.2.4-noidfa"];
        e11.info = @"https://www.baidu.com/s?ie=UTF-8&wd=JPush";
        [self.datas addObject:e11];
        KKLabelModel *e12 = [[KKLabelModel alloc] initWithTitle:@"FMDB（数据库处理）" value:@"2.7.2"];
        e12.info = @"https://github.com/ccgus/fmdb";
        [self.datas addObject:e12];
    }
    [self.tableView reloadData];
}
#pragma mark - lazy load
- (NSMutableArray<KKLabelModel *> *)datas{
    if (!_datas) {
        _datas = [[NSMutableArray alloc] init];
    }
    return _datas;
}
#pragma mark - UITableViewDelegate,UITableViewDataSource
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    KKLabelModel *cellModel = self.datas[indexPath.row];
    KKLabelTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"KKLabelTableViewCell"];
    cell.cellModel = cellModel;
    if (cellModel.value.length == 0) {
        cell.titleLabel.font = AdaptedBoldFontSize(17.f);
        cell.titleLabel.textColor = KKColor_0000FF;
    }else{
        cell.titleLabel.font = AdaptedFontSize(14.f);
        cell.titleLabel.textColor = KKColor_000000;
    }
    return cell;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.datas.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    KKLabelModel *cellModel = self.datas[indexPath.row];
    if (cellModel.value.length > 0) {
        return AdaptedWidth(34.f);
    }
    return AdaptedWidth(44.f);
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //to do
    KKLabelModel *cellModel = self.datas[indexPath.row];
    if (cellModel.value.length > 0) {
        [KKAlertViewController showCustomWithTitle:@"提示" textDetail:[@"是否跳转Safari显示具体详情？\n" addString:cellModel.info?:@""] leftTitle:@"确定" rightTitle:@"取消" isOnlyOneButton:NO isShowCloseButton:NO canTouchBeginMove:YES complete:^(KKAlertViewController *controler, NSInteger index) {
            [controler dismissViewControllerCompletion:nil];
            if (index == 0) {
                NSString *info = cellModel.info;
                [[UIApplication sharedApplication] openURL:info.toURL options:@{} completionHandler:nil];
            }
        }];
    }
}
#pragma mark - aciton
@end
