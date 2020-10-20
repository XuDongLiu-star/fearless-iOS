import Foundation
import RobinHood

final class AccountInfoSubscription: BaseStorageChildSubscription {
    override func handle(result: Result<DataProviderChange<ChainStorageItem>?, Error>) {
        if case .success(let optionalChange) = result, optionalChange != nil {
            DispatchQueue.main.async {
                self.eventCenter.notify(with: WalletBalanceChanged())
            }
        }
    }
}
