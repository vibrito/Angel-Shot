//
//  DrinkListTests.swift
//  Angel-ShotTests
//
//  Created by  on 04/07/23.
//

import XCTest
@testable import Angel_Shot

final class DrinkListTests: XCTestCase {
    
    private var drinkList: DrinkList!
    private var drinkStorage: DrinkStorage!
    private let app = XCUIApplication()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    override func setUp() {
        app.launch()
        
        super.setUp()
        drinkStorage.drinks.append(Drink(id: UUID(), name: "Caipirinha"))
    }
    
    func testDrinkList() throws {
        setUp()
        XCTAssertEqual(app.staticTexts["name"].label, "Caipirinha")
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
