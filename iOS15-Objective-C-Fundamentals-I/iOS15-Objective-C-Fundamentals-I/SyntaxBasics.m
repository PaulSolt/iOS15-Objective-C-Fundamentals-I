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

- (void)explorePrimitives {
    //
    // Primitives - number types
    //
    NSLog(@"---------------Primitives---------------");
    // Integer
    // 4 bytes wide, -2,147,483,648 through 2,147,483,647
    int age = 34;
    NSLog(@"Hello! You are %d years old.", age);
    
    // Long integer
    // 8 bytes wide, -9,223,372,036,854,775,808 through 9,223,372,036,854,775,807
    long aLong = 9223372036854;
    NSLog(@"%ld", aLong);
    
    // Single precision floating-point, 32-bit number
    float aFloat = -21.09f;
    NSLog(@"%f", aFloat);
    NSLog(@"%.2f", aFloat);
    
    // Double precision floating-point, 64-bit number
    double aDouble = -21.09;
    NSLog(@"%.2f", aDouble);
    NSLog(@"%e", aDouble);  // %e = scientific notation
    
    // Boolean
    // only two value choices, YES for true, NO for false
    BOOL isOn = NO;
    NSLog(@"%d", isOn);  // prints 1 for YES, 0 for NO
    NSLog(@"%@", isOn ? @"YES" : @"NO");
    
    //
    // Math
    //
    
    // All standard arithmetic operators apply: +, -, *, /, %
    
    // Integer division, result is always a whole number and not rounded
    int integerResult = 5 / 4;
    NSLog(@"Integer division: %d", integerResult);
    
    // Double division, 1 double and 1 int operand, result is promoted to double
    double doubleResult = 5.0 / 4;
    NSLog(@"Floating-point division: %f", doubleResult);
    
    // Floating point imprecision
    // Print statements show floating point numbers aren't as precise as they appear
    NSLog(@"%.17f", .1);
    NSLog(@"%.17f", 4.2 - 4.1); // actual answer: 0.10000000000000053
    
    //
    // NSInteger
    //
    
    // autosizes itself based on current platform
    NSInteger anInteger = -6;
    NSUInteger aPositiveInteger = 8;
    NSLog(@"anInteger: %ld", (long)anInteger);
    NSLog(@"aPositiveInteger: %ld", (long)aPositiveInteger);
    
    NSLog(@"---------------End Primitives---------------\n\n");
}

- (void)exploreObjects {
    //
    // Objects (class-based types)
    //
    NSLog(@"---------------Objects---------------");
    // NSString
    
    NSString *lambda = @"Lambda School";
    NSLog(@"%@", lambda);
    
    // String concatenation/interpolation
    
    // Swift
    //let width = 94
    //let label = "The wdith is \(width)"
    
    NSString *label = @"The width is";
    int width = 94;
    NSString *widthLabel = [NSString stringWithFormat:@"%@ %d", label, width];
    NSLog(@"%@", widthLabel);
    
    // id type used to store an object of any type
    // Swift
    // let anyObject: Any = "Hello"
    
    id mysteryObject = @"An NSString object";
    NSLog(@"%@", [mysteryObject description]);
    mysteryObject = @{@"model": @"Ford", @"year": @1967};
    NSLog(@"%@", [mysteryObject description]);
    
    NSLog(@"---------------End Objects---------------");
}

- (void)exploreCollectionsWithArray:(NSArray *)shipCaptains {
    
}

- (void)exploreNumbers {
    
}


@end
