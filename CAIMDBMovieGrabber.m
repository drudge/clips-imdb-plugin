//
//  CAIMDBMovieGrabber.m
//  Test oembed
//
//  Created by Nicholas Penree on 9/27/08.
//  Copyright 2008 Conceited Software. All rights reserved.
//

#import "CAIMDBMovieGrabber.h"

@implementation CAIMDBMovieGrabber

@synthesize apiEndpointURL;

+ (BOOL) hasExpectedPrefix:(NSString *)anURL
{
	NSString *someURL = [anURL lowercaseString];
	
	//http://*.amazon.(com|co.uk|de|ca|jp)
	BOOL hasPrefix = ([someURL hasPrefix:@"http://imdb.com/title/tt"] || [someURL hasPrefix:@"http://www.imdb.com/title/tt"]);

	return hasPrefix;
}

- (NSString *)apiEndpointURL
{
	return @"http://oohembed.com/oohembed/";
}

@end
