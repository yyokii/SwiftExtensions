
import RxSwift

extension Observable {
    func subscribeOnBackground() -> Observable {
        return subscribeOn(SerialDispatchQueueScheduler(qos: .default))
    }

    func observeOnMainThread() -> Observable {
        return observeOn(MainScheduler.instance)
    }
}
