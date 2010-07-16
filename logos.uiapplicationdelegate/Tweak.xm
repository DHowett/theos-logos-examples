%group DelegateHooks
%hook UIApplicationDelegate
- (void)applicationDidFinishLaunching:(UIApplication *)a {
	%log;
	%orig;
	// Awesome!
}
%end
%end

%hook UIApplication
// From iphone-backgrounder - ashikase is, after all, the reason this feature exists!
- (void)_loadMainNibFile {
	%orig;
	// Delegate if it exists, UIApplication subclass if not.
	Class delegateClass = [[self delegate] class] ?: [self class];
	%init(DelegateHooks, UIApplicationDelegate = delegateClass);
}
%end

static __attribute__((constructor)) void localInit() {
	%init;
}
