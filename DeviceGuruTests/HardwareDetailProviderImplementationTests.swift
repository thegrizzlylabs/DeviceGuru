// Copyright @DeviceGuru

import XCTest

@testable import DeviceGuru

final class GSKHardwareDetailProviderImplementationTests: XCTestCase {

    func testExample() {
        let hardwareProvider = GSKHardwareDetailProviderImplementation()
        XCTAssertTrue(hardwareProvider.hardwareString.contains("iPhone"))
    }
}
