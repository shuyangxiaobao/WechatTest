// See http://iphonedevwiki.net/index.php/Logos
//titleView
#import <UIKit/UIKit.h>
@interface NewMainFrameViewController :UIViewController
@end

@interface HKView:UIView
- (void)showRightTopMenuBtn;
@end


@interface HKBar:UIBarButtonItem
@property(nonatomic,weak)HKView * view;
@end



%hook NewMainFrameViewController

-(UINavigationItem *)navigationItem{
    
        NSLog(@"\n\n\n-------------navigationItem-----");
    //方法交换! 调用自己!
    
    return %orig;
}

- (void)viewDidAppear:(_Bool)arg1{
    %orig;
    UIButton * leftBtn = [UIButton buttonWithType:(UIButtonTypeContactAdd)];
//    UIButton * leftBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
//    [leftBtn setImage:[UIImage imageNamed:@"Expression_52@2x.png"] forState:(UIControlStateNormal)];
    [leftBtn addTarget:self action:@selector(HK_leftClick) forControlEvents:(UIControlEventTouchUpInside)];
    [self.navigationItem setLeftBarButtonItem: [[UIBarButtonItem alloc] initWithCustomView:leftBtn]];
    
}

- (void)viewDidLoad{
    %orig;
    //    NSLog(@"\n\n\n-----viewDidLoad-----------");
    
}


%new
-(void)HK_leftClick
{
    //??? 控制器对象!!
    HKBar * btn = self.navigationItem.rightBarButtonItem;
    [btn.view showRightTopMenuBtn];
}

%end

