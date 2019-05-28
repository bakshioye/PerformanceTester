//
//  StaticDispatch.swift
//  PerformanceTester
//
//  Created by Shubham Bakshi on 28/05/19.
//  Copyright © 2019 Shubham Bakshi. All rights reserved.
//

import Foundation

/// Class which DOES NOT have final keyword but which is base class to another class (or we can say it is involved in inheritance) and has its method overridden
class Foo {
    var number: Int = 1
    
    func incrementNumber() {
        number += 1
    }
}

/// Class which has a parent class and thus involve in inheritance and has overridden a method of the parent class
class FooSubclassed: Foo {
    var anotherNumber = 2

    override func incrementNumber() {
        anotherNumber += 1
    }
}

/// Class which DOES NOT have final keyword and WHICH DOES NOT have a subclass (opposite to Foo which has a subclass)
class Baz {
    var number = 1
    
    func incrementNumber() {
        number += 1
    }
    
}

/// Class which has a final keyword and thus can never be involved in inheritance . Best performance as per Apple as it can never have dynamicity (a.k.a Dynamic Dispatch nature) and will always follow Static dispatch
final class Bar {
    var number: Int = 1
    
    func incrementNumber() {
        number += 1
    }
}

/// The Class we will use to test the performance and has all the test cases
class StaticDispatch {
    
    func testFoo(anObject: Foo) {
        for _ in 1...1000000 {
            anObject.incrementNumber()
        }
    }
    
    func testBar(anObject: Bar) {
        for _ in 1...1000000 {
            anObject.incrementNumber()
        }
    }
    
    func testFooSubclassed(anObject: FooSubclassed) {
        for _ in 1...1000000 {
            anObject.incrementNumber()
        }
    }
    
    func testBaz(anObject: Baz) {
        for _ in 1...1000000 {
            anObject.incrementNumber()
        }
    }
    
}

