//
//  CASStyle.h
//  Classy
//
//  Created by Peyman Khanjan on 26/05/2017.
//  Copyright © 2017 Zeta Project Berlin Gmbh. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CASStyleNode;
@class CASStyleProperty;

@interface CASStyle : NSObject<NSCoding>
- (_Nonnull instancetype)initWithStyleNodes:(NSArray<CASStyleNode *>*_Nonnull)styleNodes styleVars:(NSDictionary<NSString *, CASStyleProperty *>*_Nullable)styleVars;

@property(nonatomic, strong, readonly) NSArray<CASStyleNode *>  * _Nonnull styleNodes;
@property(nonatomic, strong, readonly) NSDictionary<NSString *, CASStyleProperty *> * _Nullable styleVars;
@end
