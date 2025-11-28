// Copyright @DeviceGuru

@testable import DeviceGuru

final class GSKLocalStorageMock: GSKLocalStorage {

    var dictionary: [String: Any] = [:]

    var setValueCalled = 0
    func setValue(_ value: Any?, forKey key: String) {
        dictionary[key] = value
        setValueCalled += 1
    }

    var getObjectCalled = 0
    func object(forKey defaultName: String) -> Any? {
        getObjectCalled += 1
        return dictionary[defaultName]
    }
}
