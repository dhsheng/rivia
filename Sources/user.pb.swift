// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: user.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

enum UserState: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case init_ // = 0
  case normal // = 1
  case banned // = 2
  case UNRECOGNIZED(Int)

  init() {
    self = .init_
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .init_
    case 1: self = .normal
    case 2: self = .banned
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .init_: return 0
    case .normal: return 1
    case .banned: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension UserState: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [UserState] = [
    .init_,
    .normal,
    .banned,
  ]
}

#endif  // swift(>=4.2)

struct User {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var id: Int64 = 0

  var nickname: String = String()

  var avatar: String = String()

  var gender: String = String()

  var state: UserState = .init_

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Location {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var country: String = String()

  var city: String = String()

  var lng: Double = 0

  var lat: Double = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct FetchUserRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var userID: Int64 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct FetchUserResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var user: User {
    get {return _user ?? User()}
    set {_user = newValue}
  }
  /// Returns true if `user` has been explicitly set.
  var hasUser: Bool {return self._user != nil}
  /// Clears the value of `user`. Subsequent reads from it will return its default value.
  mutating func clearUser() {self._user = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _user: User? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension UserState: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "INIT"),
    1: .same(proto: "NORMAL"),
    2: .same(proto: "BANNED"),
  ]
}

extension User: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "User"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "nickname"),
    3: .same(proto: "avatar"),
    4: .same(proto: "gender"),
    5: .same(proto: "state"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.nickname) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.avatar) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.gender) }()
      case 5: try { try decoder.decodeSingularEnumField(value: &self.state) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.id != 0 {
      try visitor.visitSingularInt64Field(value: self.id, fieldNumber: 1)
    }
    if !self.nickname.isEmpty {
      try visitor.visitSingularStringField(value: self.nickname, fieldNumber: 2)
    }
    if !self.avatar.isEmpty {
      try visitor.visitSingularStringField(value: self.avatar, fieldNumber: 3)
    }
    if !self.gender.isEmpty {
      try visitor.visitSingularStringField(value: self.gender, fieldNumber: 4)
    }
    if self.state != .init_ {
      try visitor.visitSingularEnumField(value: self.state, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: User, rhs: User) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.nickname != rhs.nickname {return false}
    if lhs.avatar != rhs.avatar {return false}
    if lhs.gender != rhs.gender {return false}
    if lhs.state != rhs.state {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Location: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "Location"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "country"),
    2: .same(proto: "city"),
    10: .same(proto: "lng"),
    11: .same(proto: "lat"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.country) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.city) }()
      case 10: try { try decoder.decodeSingularDoubleField(value: &self.lng) }()
      case 11: try { try decoder.decodeSingularDoubleField(value: &self.lat) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.country.isEmpty {
      try visitor.visitSingularStringField(value: self.country, fieldNumber: 1)
    }
    if !self.city.isEmpty {
      try visitor.visitSingularStringField(value: self.city, fieldNumber: 2)
    }
    if self.lng != 0 {
      try visitor.visitSingularDoubleField(value: self.lng, fieldNumber: 10)
    }
    if self.lat != 0 {
      try visitor.visitSingularDoubleField(value: self.lat, fieldNumber: 11)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Location, rhs: Location) -> Bool {
    if lhs.country != rhs.country {return false}
    if lhs.city != rhs.city {return false}
    if lhs.lng != rhs.lng {return false}
    if lhs.lat != rhs.lat {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension FetchUserRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "FetchUserRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "user_id"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.userID) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.userID != 0 {
      try visitor.visitSingularInt64Field(value: self.userID, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: FetchUserRequest, rhs: FetchUserRequest) -> Bool {
    if lhs.userID != rhs.userID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension FetchUserResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "FetchUserResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "user"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._user) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._user {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: FetchUserResponse, rhs: FetchUserResponse) -> Bool {
    if lhs._user != rhs._user {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}