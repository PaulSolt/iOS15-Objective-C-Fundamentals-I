//
//  main.m
//  iOS15-Objective-C-Fundamentals-I
//
//  Created by Paul Solt on 5/11/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h> // Frameworks use <>
#import "SyntaxBasics.h"  // Always include the .h file to prevent duplicate symbols errors

// File naming
// .h = header file
// .m = implementation file (source)

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hey Paul!");
        
        // Swift
        // let basics = SyntaxBasics(largeNumber:923_403_030, smallNumber:27)
        
        // alloc = allocate space
        SyntaxBasics *basics = [[SyntaxBasics alloc] initWithLargeNumber:@923403030 smallNumber:27];

        // Swift
        // print("largeNumber: \(basics.largeNumber) smallNumber: \(basics.smallNumber)")

        // Use Tokens for string interpolation
        // %@ = object
        // %d or %i
        NSLog(@"largeNumber: %@ smallNumber: %d", basics.largeNumber, basics.smallNumber);
        
        // Call properties with the "dot syntax" or "method syntax"
        
        // Call a method (function)
        // Swift
        // basics.explorePrimitives()
        
        [basics explorePrimitives]; // write ] last
//        [basics explorePrimitives]; // write [] first
        
        [basics exploreObjects];
        
        
        // Swift
        //basics.exploreCollections(array: ["Malcolm Reynolds", "Jean-Luc Picard", "James T. Kirk", "Kathryn Janeway"])
        
        // @[]  // = empty array literal
        [basics exploreCollectionsWithArray:@[@"Malcolm Reynolds",
                                              @"Jean-Luc Picard",
                                              @"James T. Kirk",
                                              @"Kathryn Janeway"]];

    }
    return 0;
}
