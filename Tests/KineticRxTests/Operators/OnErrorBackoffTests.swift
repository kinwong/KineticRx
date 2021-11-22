import XCTest
@testable import KineticRx
import RxSwift

final class OnErrorBackoffTests: XCTestCase {
    func testExample() throws {
        
        let seq = Observable.from([0, 2, 30, 1, 4, 6]).concat(Observable.range(start: 12, count: 22))
        
        let subscription = seq.subscribe(
            onNext: { n in
                print(n)
            },
            onError: { error in
                print(error)
            },
            onCompleted: {
                
            },
            onDisposed:  {
            print("onDisposed")
        })
        do {subscription.dispose()}
    }
}
