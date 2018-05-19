#line 1 "/Users/qiangbaoge/Desktop/桌面1/0519/WechatTest/WechatTestDylib/Logos/WechatTestDylib.xm"


#import <UIKit/UIKit.h>
@interface NewMainFrameViewController :UIViewController
@end

@interface HKView:UIView
- (void)showRightTopMenuBtn;
@end


@interface HKBar:UIBarButtonItem
@property(nonatomic,weak)HKView * view;
@end




#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class NewMainFrameViewController; 
static UINavigationItem * (*_logos_orig$_ungrouped$NewMainFrameViewController$navigationItem)(_LOGOS_SELF_TYPE_NORMAL NewMainFrameViewController* _LOGOS_SELF_CONST, SEL); static UINavigationItem * _logos_method$_ungrouped$NewMainFrameViewController$navigationItem(_LOGOS_SELF_TYPE_NORMAL NewMainFrameViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$NewMainFrameViewController$viewDidAppear$)(_LOGOS_SELF_TYPE_NORMAL NewMainFrameViewController* _LOGOS_SELF_CONST, SEL, _Bool); static void _logos_method$_ungrouped$NewMainFrameViewController$viewDidAppear$(_LOGOS_SELF_TYPE_NORMAL NewMainFrameViewController* _LOGOS_SELF_CONST, SEL, _Bool); static void (*_logos_orig$_ungrouped$NewMainFrameViewController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL NewMainFrameViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$NewMainFrameViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL NewMainFrameViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$NewMainFrameViewController$HK_leftClick(_LOGOS_SELF_TYPE_NORMAL NewMainFrameViewController* _LOGOS_SELF_CONST, SEL); 

#line 18 "/Users/qiangbaoge/Desktop/桌面1/0519/WechatTest/WechatTestDylib/Logos/WechatTestDylib.xm"


static UINavigationItem * _logos_method$_ungrouped$NewMainFrameViewController$navigationItem(_LOGOS_SELF_TYPE_NORMAL NewMainFrameViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    
        NSLog(@"\n\n\n-------------navigationItem-----");
    
    
    return _logos_orig$_ungrouped$NewMainFrameViewController$navigationItem(self, _cmd);
}

static void _logos_method$_ungrouped$NewMainFrameViewController$viewDidAppear$(_LOGOS_SELF_TYPE_NORMAL NewMainFrameViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, _Bool arg1){
    _logos_orig$_ungrouped$NewMainFrameViewController$viewDidAppear$(self, _cmd, arg1);
    UIButton * leftBtn = [UIButton buttonWithType:(UIButtonTypeContactAdd)];


    [leftBtn addTarget:self action:@selector(HK_leftClick) forControlEvents:(UIControlEventTouchUpInside)];
    [self.navigationItem setLeftBarButtonItem: [[UIBarButtonItem alloc] initWithCustomView:leftBtn]];
    
}

static void _logos_method$_ungrouped$NewMainFrameViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL NewMainFrameViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    _logos_orig$_ungrouped$NewMainFrameViewController$viewDidLoad(self, _cmd);
    
    
}




static void _logos_method$_ungrouped$NewMainFrameViewController$HK_leftClick(_LOGOS_SELF_TYPE_NORMAL NewMainFrameViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    HKBar * btn = self.navigationItem.rightBarButtonItem;
    [btn.view showRightTopMenuBtn];
}



static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$NewMainFrameViewController = objc_getClass("NewMainFrameViewController"); MSHookMessageEx(_logos_class$_ungrouped$NewMainFrameViewController, @selector(navigationItem), (IMP)&_logos_method$_ungrouped$NewMainFrameViewController$navigationItem, (IMP*)&_logos_orig$_ungrouped$NewMainFrameViewController$navigationItem);MSHookMessageEx(_logos_class$_ungrouped$NewMainFrameViewController, @selector(viewDidAppear:), (IMP)&_logos_method$_ungrouped$NewMainFrameViewController$viewDidAppear$, (IMP*)&_logos_orig$_ungrouped$NewMainFrameViewController$viewDidAppear$);MSHookMessageEx(_logos_class$_ungrouped$NewMainFrameViewController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$NewMainFrameViewController$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$NewMainFrameViewController$viewDidLoad);{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$NewMainFrameViewController, @selector(HK_leftClick), (IMP)&_logos_method$_ungrouped$NewMainFrameViewController$HK_leftClick, _typeEncoding); }} }
#line 55 "/Users/qiangbaoge/Desktop/桌面1/0519/WechatTest/WechatTestDylib/Logos/WechatTestDylib.xm"
