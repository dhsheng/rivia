//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: configuration.proto
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


/// Usage: instantiate `ConfigurationServiceClient`, then call methods of this protocol to make API calls.
public protocol ConfigurationServiceClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: ConfigurationServiceClientInterceptorFactoryProtocol? { get }

  func fetchConfiguration(
    _ request: FetchConfigurationRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<FetchConfigurationRequest, FetchConfigurationResponse>
}

extension ConfigurationServiceClientProtocol {
  public var serviceName: String {
    return "ConfigurationService"
  }

  /// Unary call to FetchConfiguration
  ///
  /// - Parameters:
  ///   - request: Request to send to FetchConfiguration.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func fetchConfiguration(
    _ request: FetchConfigurationRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<FetchConfigurationRequest, FetchConfigurationResponse> {
    return self.makeUnaryCall(
      path: "/ConfigurationService/FetchConfiguration",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeFetchConfigurationInterceptors() ?? []
    )
  }
}

public protocol ConfigurationServiceClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'fetchConfiguration'.
  func makeFetchConfigurationInterceptors() -> [ClientInterceptor<FetchConfigurationRequest, FetchConfigurationResponse>]
}

public final class ConfigurationServiceClient: ConfigurationServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: ConfigurationServiceClientInterceptorFactoryProtocol?

  /// Creates a client for the ConfigurationService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: ConfigurationServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

