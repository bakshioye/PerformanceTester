//
//  PerformanceTesterTests.swift
//  PerformanceTesterTests
//
//  Created by Shubham Bakshi on 28/05/19.
//  Copyright © 2019 Shubham Bakshi. All rights reserved.
//

import XCTest
@testable import PerformanceTester

class PerformanceTesterTests: XCTestCase {

    var staticDispatch: StaticDispatch!
    
    var fooObject: Foo!
    var barObject: Bar!
    var bazObject: Baz!
    var fooSubclassedObject: FooSubclassed!

    override func setUp() {
        super.setUp()
        
        staticDispatch = StaticDispatch()
        
        fooObject = Foo()
        barObject = Bar()
        bazObject = Baz()
        fooSubclassedObject = FooSubclassed()
        
    }

    func testPerformanceExample() {
        
        self.measure {
//            self.staticDispatch.testBar(anObject: barObject)     // FINAL CLASS
//            self.staticDispatch.testBaz(anObject: bazObject)     // Class without any final keyword but which is NOT subclassed as well
//            self.staticDispatch.testFoo(anObject: fooObject)     // Class without any final keyword but which is subclassed
//            self.staticDispatch.testFooSubclassed(anObject: fooSubclassedObject) // Class which has a parent class Foo
            
        }
    }

}
