%subclass SBLogosSubclassIcon: SBApplicationIcon <UIAlertViewDelegate>

- (void)launch {
	UIAlertView *x = [[UIAlertView alloc] initWithTitle:@"It Works!" 
						    message:[NSString stringWithFormat:@"self = %@", self]
						   delegate:self
					  cancelButtonTitle:nil
					  otherButtonTitles:@"... okay?", nil];
	[x show];
	[x release];
}

%new(v@:@i)
- (void)alertView:(UIAlertView *)av clickedButtonAtIndex:(int)index {
}

%end
