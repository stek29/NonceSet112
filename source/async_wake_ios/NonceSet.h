#import <dlfcn.h>
#import <objc/runtime.h>
#import <sys/stat.h>
#import <Social/Social.h>
#import <Preferences/PSTableCell.h>
#import <Preferences/PSListController.h>
#import <Preferences/PSSpecifier.h>

@interface PSListController (meh)
-(void)_returnKeyPressed:(id)arg1;
@end

@interface NonceSetController : PSListController
+ (NonceSetController*)shared;
- (void)setNonceValue:(id)value specifier:(PSSpecifier *)specifier;
- (id)readNonceValue:(PSSpecifier*)specifier;
@end

@interface NonceSetApplication : UIApplication <UIApplicationDelegate> {
	UIWindow *_window;
	UIViewController *_viewController;
}
@property (nonatomic, retain) UIWindow *window;
@end

@interface UIProgressHUD : UIView
- (void) showInView:(UIView *)view;
- (void) setText:(NSString *)text;
- (void) done;
- (void) hide;
@end

