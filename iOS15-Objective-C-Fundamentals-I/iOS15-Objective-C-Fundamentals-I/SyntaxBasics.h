//
//  SyntaxBasics.h
//  iOS15-Objective-C-Fundamentals-I
//
//  Created by Paul Solt on 5/11/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

// .h = header file
// Control + Command + Up/Down Arrow: flip between .h/.m
// Control + Option + Command + Enter: Show Assistant Editor

NS_ASSUME_NONNULL_BEGIN // optionals in Swift

// Swift
//class SwiftBasics: NSObject {
//    var largeNumber: NSNumber
//    var smallNumber: Int  // 64-bit integer
//}


@interface SyntaxBasics : NSObject

// Pointer: variable that stores a memory address
// home address: a location on the world where you live
// work address: 125 Tech Park Drive
// gps: -57,107
// every variable has an address in memory

// @property (attributes) type variableName;
@property NSNumber *largeNumber;    // Class or Object (star = pointer)
@property int smallNumber;          // primitive data type (no star)

@end

NS_ASSUME_NONNULL_END
