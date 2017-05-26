//
//  CASUnitToken.m
//  Classy
//
//  Created by Jonas Budelmann on 23/11/13.
//  Copyright (c) 2013 cloudling. All rights reserved.
//

#import "CASUnitToken.h"

@implementation CASUnitToken

#pragma mark - Helpers

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        self.suffix = [aDecoder decodeObjectForKey:NSStringFromSelector(@selector(suffix))];
        self.rawValue = [aDecoder decodeObjectForKey:NSStringFromSelector(@selector(rawValue))];
    }
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder
{
    [super encodeWithCoder:coder];
    
    [coder encodeObject:self.suffix forKey:NSStringFromSelector(@selector(suffix))];
    [coder encodeObject:self.rawValue forKey:NSStringFromSelector(@selector(rawValue))];
}

- (NSString *)stringValue {
    return self.rawValue;
}

@end
