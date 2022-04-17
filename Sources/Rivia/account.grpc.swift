//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: account.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import GRPC
import NIO
import SwiftProtobuf


/// Usage: instantiate `AccountServiceClient`, then call methods of this protocol to make API calls.
internal protocol AccountServiceClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: AccountServiceClientInterceptorFactoryProtocol? { get }

  func loginWithOAuth(
    _ request: LoginWithOAuthRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<LoginWithOAuthRequest, LoginResponse>

  func loginWithEmail(
    _ request: LoginWithEmailRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<LoginWithEmailRequest, LoginResponse>
}

extension AccountServiceClientProtocol {
  internal var serviceName: String {
    return "account.AccountService"
  }

  /// Unary call to LoginWithOAuth
  ///
  /// - Parameters:
  ///   - request: Request to send to LoginWithOAuth.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func loginWithOAuth(
    _ request: LoginWithOAuthRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<LoginWithOAuthRequest, LoginResponse> {
    return self.makeUnaryCall(
      path: "/account.AccountService/LoginWithOAuth",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeLoginWithOAuthInterceptors() ?? []
    )
  }

  /// Unary call to LoginWithEmail
  ///
  /// - Parameters:
  ///   - request: Request to send to LoginWithEmail.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func loginWithEmail(
    _ request: LoginWithEmailRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<LoginWithEmailRequest, LoginResponse> {
    return self.makeUnaryCall(
      path: "/account.AccountService/LoginWithEmail",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeLoginWithEmailInterceptors() ?? []
    )
  }
}

internal protocol AccountServiceClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'loginWithOAuth'.
  func makeLoginWithOAuthInterceptors() -> [ClientInterceptor<LoginWithOAuthRequest, LoginResponse>]

  /// - Returns: Interceptors to use when invoking 'loginWithEmail'.
  func makeLoginWithEmailInterceptors() -> [ClientInterceptor<LoginWithEmailRequest, LoginResponse>]
}

internal final class AccountServiceClient: AccountServiceClientProtocol {
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: AccountServiceClientInterceptorFactoryProtocol?

  /// Creates a client for the account.AccountService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: AccountServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}
