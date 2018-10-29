@_exported import CodyFire
import RxSwift

extension APIRequest {
    public var observable: Observable<ResultType> {
        return Observable.create { observer in
            self.onError { error in
                observer.onError(error)
                observer.onCompleted()
            }.onSuccess { result in
                observer.onNext(result)
                observer.onCompleted()
            }
            return Disposables.create(with: self.cancel)
        }
    }
}
