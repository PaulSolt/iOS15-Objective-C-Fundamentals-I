//
//  SyntaxBasics.m
//  iOS15-Objective-C-Fundamentals-I
//
//  Created by Paul Solt on 5/11/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "SyntaxBasics.h"

// .m = implementation file

@implementation SyntaxBasics

// All your logic goes inside the @implementation / @end for the
// Objc class

// instancetype = class name (SyntaxBasics)

// Swift
//init(largeNumber: NSNumber, forSmallNumber smallNumber: Int) {
//    self.largeNumber = largeNumber
//    self.smallNumber = smallNumber
//    super.init()
//}

- (instancetype)initWithLargeNumber:(NSNumber *)largeNumber smallNumber:(int)smallNumber {
    self = [super init];
    if (self != nil) {  // if self != nil {
        _largeNumber = largeNumber;
        _smallNumber = smallNumber;
    }
    return self;
}

@end
