import Foundation
class APIRequest: Requestable {
  var baseURL: URL {
    guard let url = URL(string: Constants.Network.baseUrl) else {
      fatalError("Could not convert url")
    }
    return url
  }
  var path: String
  var httpMethod: HTTPMethod
  var requestTimeOut: Double
  var cachePolicy: NSURLRequest.CachePolicy
  var headers: HTTPHeaderFields?
  var parameterType: ParameterType
  init(httpMethod: HTTPMethod = .get, requestTimeOut: Double = Constants.Network.defaultTimeOut,
       header: HTTPHeaderFields? = nil, cachePolicy: NSURLRequest.CachePolicy = .reloadIgnoringLocalAndRemoteCacheData, parameterType: ParameterType = .urlParameter(urlParameter: nil),
       path: String) {
    self.headers = header
    self.httpMethod = httpMethod
    self.path = path
    self.requestTimeOut = requestTimeOut
    self.parameterType = parameterType
    self.cachePolicy = cachePolicy
  }
}
