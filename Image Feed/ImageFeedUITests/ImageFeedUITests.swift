import XCTest
@testable import Image_Feed

final class ImageFeedUITests: XCTestCase {
    private let app = XCUIApplication()
    
    override func setUpWithError() throws {
        
        continueAfterFailure = false
        app.launch()
    }
    
    func testAuth() throws {
        
        app.buttons["Authenticate"].tap()
        
        let webView = app.webViews["UnsplashWebView"]
        sleep(5)
        print(webView.buttons)
        
        let loginTextField = webView.descendants(matching: .textField).element
        sleep(5)
        
        loginTextField.tap()
        loginTextField.typeText("theron@bk.ru")
        loginTextField.swipeUp()
        
        let passwordTextField = webView.descendants(matching: .secureTextField).element
        sleep(5)
        
        passwordTextField.tap()
        passwordTextField.typeText("Adamax19")
        webView.swipeUp()
        
        // Нажать кнопку логина
        let webViewsQuery = app.webViews
        webViewsQuery.buttons["Login"].tap()
        
        let tablesQuery = app.tables
        let cell = tablesQuery.children(matching: .cell).element(boundBy: 0)
        sleep(5)
        
        print(app.debugDescription)
    }
}
