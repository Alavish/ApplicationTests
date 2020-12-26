  func testUpperButton() throws{
        
        //Testing Active Option in the layered button
        let appActiv = XCUIApplication()
        appActiv.launch()
        
        let layersButton = appActiv.buttons["Layers"]
        layersButton.tap()
        XCTAssert(appActiv.tables.staticTexts["Confirmed"].exists)
        
        //Testing Confirmed option in the layered button
        let appConfirmed = XCUIApplication()
        appConfirmed.launch()
        
        let layersButton_2 = appConfirmed.buttons["Layers"]
        layersButton_2.tap()
        XCTAssert(appConfirmed.tables.staticTexts["Active"].exists)
        
        //Testing Recovered Option in the layered button
        let appRecovered = XCUIApplication()
        appRecovered.launch()
        
        let layersButton_3 = appRecovered.buttons["Layers"]
        layersButton_3.tap()
        XCTAssert(appRecovered.tables.staticTexts["Recovered"].exists)
        
        //Teting Deaths Option in the layred button
        let appDeaths = XCUIApplication()
        appDeaths.launch()
        
        let layersButton_4 = appDeaths.buttons["Layers"]
        layersButton_4.tap()
        XCTAssert(appDeaths.tables.staticTexts["Deaths"].exists)
        
        
        
    }
    //Testing the launch
    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
.
    }

    //tests performance for each launch
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
