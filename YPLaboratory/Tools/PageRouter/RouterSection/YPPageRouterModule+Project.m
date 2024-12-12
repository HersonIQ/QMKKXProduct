//
//  YPPageRouterModule+Project.m
//  YPLaboratory
//
//  Created by Hansen on 2024/12/12.
//

#import "YPPageRouterModule+Project.h"

@implementation YPPageRouterModule (Project)

+ (NSArray *)ComponentRouters_Project {
    NSMutableArray *dataList = [[NSMutableArray alloc] init];
    {
        YPPageRouter *element = [[YPPageRouter alloc] init];
        element.title = @"YPLaboratory".yp_localizedString;
        element.type = YPPageRouterTypeNormal;
        element.extend = @"https://github.com/HansenCCC/YPLaboratory";
        element.content = @"源码".yp_localizedString;
        [dataList addObject:element];
    }
    {
        YPPageRouter *element = [[YPPageRouter alloc] init];
        element.title = @"YPUIKit-ObjC".yp_localizedString;
        element.type = YPPageRouterTypeNormal;
        element.content = @"框架";
        element.extend = @"https://github.com/HansenCCC/YPUIKit-ObjC";
        [dataList addObject:element];
    }
    NSMutableArray *dataList2 = [[NSMutableArray alloc] init];
    {
        YPPageRouter *element = [[YPPageRouter alloc] init];
        element.title = @"MJRefresh".yp_localizedString;
        element.type = YPPageRouterTypeNormal;
        element.extend = @"https://github.com/CoderMJLee/MJRefresh";
        element.content = @"上拉下拉".yp_localizedString;
        [dataList2 addObject:element];
    }
    {
        YPPageRouter *element = [[YPPageRouter alloc] init];
        element.title = @"MJExtension".yp_localizedString;
        element.type = YPPageRouterTypeNormal;
        element.content = @"Json <=> Model";
        element.extend = @"https://github.com/CoderMJLee/MJExtension";
        [dataList2 addObject:element];
    }
    {
        YPPageRouter *element = [[YPPageRouter alloc] init];
        element.title = @"AFNetworking".yp_localizedString;
        element.type = YPPageRouterTypeNormal;
        element.content = @"网络请求";
        element.extend = @"https://github.com/AFNetworking/AFNetworking";
        [dataList2 addObject:element];
    }
    {
        YPPageRouter *element = [[YPPageRouter alloc] init];
        element.title = @"SDWebImage".yp_localizedString;
        element.type = YPPageRouterTypeNormal;
        element.content = @"加载网络图片";
        element.extend = @"https://github.com/SDWebImage/SDWebImage";
        [dataList2 addObject:element];
    }
    {
        YPPageRouter *element = [[YPPageRouter alloc] init];
        element.title = @"FLAnimatedImage".yp_localizedString;
        element.type = YPPageRouterTypeNormal;
        element.content = @"加载动图";
        element.extend = @"https://github.com/Flipboard/FLAnimatedImage";
        [dataList2 addObject:element];
    }
    {
        YPPageRouter *element = [[YPPageRouter alloc] init];
        element.title = @"Bugly".yp_localizedString;
        element.type = YPPageRouterTypeNormal;
        element.content = @"奔溃日志分析";
        element.extend = @"https://bugly.qq.com/v2/";
        [dataList2 addObject:element];
    }
    {
        YPPageRouter *element = [[YPPageRouter alloc] init];
        element.title = @"Masonry".yp_localizedString;
        element.type = YPPageRouterTypeNormal;
        element.content = @"布局框架";
        element.extend = @"https://github.com/SnapKit/Masonry";
        [dataList2 addObject:element];
    }

    YPPageRouterModule *section = [[YPPageRouterModule alloc] initWithRouters:dataList];
    section.headerTitle = @"项目源码和框架".yp_localizedString;
    // @"YPLaboratory 是本项目的源码，想看代码中如何实现的部分，可以点击查看源码。\n YPUIKit-ObjC 是本项目的框架，可以快速的为提供很多开箱即用的功能。拉起应用内购、订阅、提示弹框、应用信息、UA获取、设备信息、唯一标识（删除不变）、角标、好用的按钮、常见的分类、md5、hook、正则、哈希颜色、图片矩阵、黑白图片、base64图片、导航设置、好用的输入框、文件管理、悬浮拖动按钮、单行输入、多行输入、加载弹框、自定义弹框、本地日志、跑马灯、瀑布流、轮播图、图片预览等等"
    YPPageRouterModule *section2 = [[YPPageRouterModule alloc] initWithRouters:dataList2];
    section2.headerTitle = @"依赖的三方框架".yp_localizedString;
    
    return @[section, section2];
}

@end

//pod 'YPUIKit-ObjC', :git => 'https://github.com/HansenCCC/YPUIKit-ObjC.git', :branch => 'master'
//pod 'LookinServer', :configurations => ['Debug']
//pod 'MJRefresh', '3.7.5'
//pod 'AFNetworking', '4.0.1'
//pod 'MJExtension', '3.4.1'
//pod 'SDWebImage', '5.15.6'
//pod 'FLAnimatedImage', '1.0.17'
//pod 'Bugly', '2.5.93'
//pod 'Masonry', '1.1.0'
