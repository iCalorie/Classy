//
//  Created by Ole Gammelgaard Poulsen on 05/04/14.
//  Copyright (c) 2014 SHAPE A/S. All rights reserved.
//

#import "CASDeviceScreenSize.h"

@implementation CASDeviceScreenSize {

}

- (NSString *)relationString {
    switch (self.relation) {
        case CASRelationLessThan:
            return @"<";
        case CASRelationLessThanOrEqual:
            return @"<=";
        case CASRelationEqual:
            return @"";
        case CASRelationGreaterThanOrEqual:
            return @">=";
        case CASRelationGreaterThan:
            return @">";
        case CASRelationUndefined:
            NSAssert(NO, @"Relation should not be undefined");
            return nil;
        default:
            NSAssert(NO, @"Relation should not be an undefined enum value");
            return nil;
    }
}

- (BOOL)isValid {
    CGSize screenSize = [[UIScreen mainScreen] bounds].size;
    CGFloat sizeInDimension = self.dimension == CASDeviceSelectorScreenDimensionWidth ? screenSize.width : screenSize.height;

    switch (self.relation) {
        case CASRelationLessThan:
            return  sizeInDimension < self.value;
        case CASRelationLessThanOrEqual:
            return sizeInDimension <= self.value;
        case CASRelationEqual:
            return fabsf(self.value - sizeInDimension) < 0.001;
        case CASRelationGreaterThanOrEqual:
            return sizeInDimension >= self.value;
        case CASRelationGreaterThan:
            return sizeInDimension > self.value;
        default:
            NSAssert(NO, @"There should not be undefined relations");
            return NO;
    }
}

- (NSString *)stringValue {
    NSString *dimensionString = self.dimension == CASDeviceSelectorScreenDimensionWidth ? @"width" : @"height";
    return [NSString stringWithFormat:@"(size-%@:%@%.1f)", dimensionString, self.relationString, self.value];
}


@end