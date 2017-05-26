//
//  CASStyle.m
//  Classy
//
//  Created by Peyman Khanjan on 26/05/2017.
//  Copyright © 2017 Zeta Project Berlin Gmbh. All rights reserved.
//

#import "CASStyle.h"

@implementation CASStyle
- (instancetype)initWithStyleNodes:(NSArray *)styleNodes styleVars:(NSDictionary *)styleVars
{
    if (self = [super init]) {
        _styleNodes = styleNodes;
        _styleVars = styleVars;
    }
    
    return self;
}

#pragma mark NSCoding
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super init]) {
        _styleNodes = [aDecoder decodeObjectForKey:NSStringFromSelector(@selector(styleNodes))];
        _styleVars = [aDecoder decodeObjectForKey:NSStringFromSelector(@selector(styleVars))];
    }
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder
{
    [coder encodeObject:self.styleNodes forKey:NSStringFromSelector(@selector(styleNodes))];
    [coder encodeObject:self.styleVars forKey:NSStringFromSelector(@selector(styleVars))];
}
@end
