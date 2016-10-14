//
//  CASParser.h
//  Classy
//
//  Created by Jonas Budelmann on 15/09/13.
//  Copyright (c) 2013 cloudling. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CASLexer.h"

extern NSString * const CASParseFailingFilePathErrorKey;
extern NSInteger const CASParseErrorFileContents;

@interface CASParser : NSObject

@property (nonatomic, strong, readonly) NSArray *styleNodes;
@property (nonatomic, strong, readonly) NSSet *importedFileNames;

@property (nonatomic, strong) NSMutableDictionary *styleVars;

/**
 *  Create a parser with the given file path
 */
+ (CASParser *)parserFromFilePath:(NSString *)filePath variables:(NSDictionary *)variables userDefinedClassNames:(NSDictionary *)userDefinedClassNames error:(NSError **)error;

@end
