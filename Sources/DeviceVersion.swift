// Copyright @DeviceGuru

import Foundation

public struct GSKDeviceVersion: Comparable {
    public let major: Int
    public let minor: Int

    public init(major: Int, minor: Int) {
        self.major = major
        self.minor = minor
    }

    public static func < (lhs: GSKDeviceVersion, rhs: GSKDeviceVersion) -> Bool {
        if lhs.major == rhs.major {
            return lhs.minor < rhs.minor
        } else {
            return lhs.major < rhs.major
        }
    }

    public static func == (lhs: GSKDeviceVersion, rhs: GSKDeviceVersion) -> Bool {
        lhs.major == rhs.major && lhs.minor == rhs.minor
    }
}
