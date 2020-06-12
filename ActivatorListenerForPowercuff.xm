#import <libactivator/libactivator.h>
#import <UIKit/UIKit.h>
#import <notify.h>

@interface NSUserDefaults (UFS_Category)
- (id)objectForKey:(NSString *)key inDomain:(NSString *)domain;
- (void)setObject:(id)value forKey:(NSString *)key inDomain:(NSString *)domain;
@end

@interface ActivatorListenerForPowercuffNone : NSObject <LAListener>
@end
@implementation ActivatorListenerForPowercuffNone
+ (void)load {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[[LAActivator sharedInstance] registerListener:[self new] forName:@"com.tomaszpoliszuk.activatorlistenerforpowercuff.none"];
	[pool release];
}
- (void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event {
	if (@available(iOS 13.0, *)) {
		[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"PowerMode" inDomain:@"/var/mobile/Library/Preferences/com.rpetrich.powercuff.plist"];
		[[NSUserDefaults standardUserDefaults] setObject:@NO forKey:@"RequireLowPowerMode" inDomain:@"/var/mobile/Library/Preferences/com.rpetrich.powercuff.plist"];
	}
}
- (void)dealloc {
	[super dealloc];
}
@end

@interface ActivatorListenerForPowercuff : NSObject <LAListener>
@end
@implementation ActivatorListenerForPowercuff
+ (void)load {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[[LAActivator sharedInstance] registerListener:[self new] forName:@"com.tomaszpoliszuk.activatorlistenerforpowercuff.nominal"];
	[pool release];
}
- (void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event {
	if (@available(iOS 13.0, *)) {
		[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"PowerMode" inDomain:@"/var/mobile/Library/Preferences/com.rpetrich.powercuff.plist"];
		[[NSUserDefaults standardUserDefaults] setObject:@NO forKey:@"RequireLowPowerMode" inDomain:@"/var/mobile/Library/Preferences/com.rpetrich.powercuff.plist"];
	}
}
- (void)dealloc {
	[super dealloc];
}
@end

@interface ActivatorListenerForPowercuffLight : NSObject <LAListener>
@end
@implementation ActivatorListenerForPowercuffLight
+ (void)load {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[[LAActivator sharedInstance] registerListener:[self new] forName:@"com.tomaszpoliszuk.activatorlistenerforpowercuff.light"];
	[pool release];
}
- (void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event {
	if (@available(iOS 13.0, *)) {
		[[NSUserDefaults standardUserDefaults] setObject:@2 forKey:@"PowerMode" inDomain:@"/var/mobile/Library/Preferences/com.rpetrich.powercuff.plist"];
		[[NSUserDefaults standardUserDefaults] setObject:@NO forKey:@"RequireLowPowerMode" inDomain:@"/var/mobile/Library/Preferences/com.rpetrich.powercuff.plist"];
	}
}
- (void)dealloc {
	[super dealloc];
}
@end

@interface ActivatorListenerForPowercuffModerate : NSObject <LAListener>
@end
@implementation ActivatorListenerForPowercuffModerate
+ (void)load {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[[LAActivator sharedInstance] registerListener:[self new] forName:@"com.tomaszpoliszuk.activatorlistenerforpowercuff.moderate"];
	[pool release];
}
- (void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event {
	if (@available(iOS 13.0, *)) {
		[[NSUserDefaults standardUserDefaults] setObject:@3 forKey:@"PowerMode" inDomain:@"/var/mobile/Library/Preferences/com.rpetrich.powercuff.plist"];
		[[NSUserDefaults standardUserDefaults] setObject:@NO forKey:@"RequireLowPowerMode" inDomain:@"/var/mobile/Library/Preferences/com.rpetrich.powercuff.plist"];
	}
}
- (void)dealloc {
	[super dealloc];
}
@end

@interface ActivatorListenerForPowercuffHeavy : NSObject <LAListener>
@end
@implementation ActivatorListenerForPowercuffHeavy
+ (void)load {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[[LAActivator sharedInstance] registerListener:[self new] forName:@"com.tomaszpoliszuk.activatorlistenerforpowercuff.heavy"];
	[pool release];
}
- (void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event {
	if (@available(iOS 13.0, *)) {
		[[NSUserDefaults standardUserDefaults] setObject:@4 forKey:@"PowerMode" inDomain:@"/var/mobile/Library/Preferences/com.rpetrich.powercuff.plist"];
		[[NSUserDefaults standardUserDefaults] setObject:@NO forKey:@"RequireLowPowerMode" inDomain:@"/var/mobile/Library/Preferences/com.rpetrich.powercuff.plist"];
	}
}
- (void)dealloc {
	[super dealloc];
}
@end
