import Flutter
import UIKit
import Combine

extension FlutterError: Error {}

public class KnockPlugin: NSObject, FlutterPlugin, KnockHostApi {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let instance = KnockPlugin()
        KnockHostApiSetup.setUp(binaryMessenger: registrar.messenger(), api: instance)
        
        registrar.addApplicationDelegate(instance)
    }
    
    private let apnsTokenSubject = PassthroughSubject<Result<Data, Error>, Error>()

    func getFcmToken(completion: @escaping (Result<String, Error>) -> Void) {
        completion(.failure(FlutterError(code: "unsupported", message: "getFcmToken is not supported on iOS", details: nil)))
    }
    
    func getApnsToken(completion: @escaping (Result<String, Error>) -> Void) {
        var cancellable: AnyCancellable!
        cancellable = apnsTokenSubject
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { _ in }, receiveValue: { result in
                do {
                    let deviceToken = try result.get()
                    let token = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
                    completion(.success(token))
                } catch {
                    completion(.failure(error))
                }
                
                cancellable.cancel()
            })
        
        UIApplication.shared.registerForRemoteNotifications()
    }
}

// MARK:- UIApplicationDelegate
extension KnockPlugin: UIApplicationDelegate {
    public func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        apnsTokenSubject.send(Result.success(deviceToken))
    }
    
    public func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
        apnsTokenSubject.send(Result.failure(error))
    }
}
