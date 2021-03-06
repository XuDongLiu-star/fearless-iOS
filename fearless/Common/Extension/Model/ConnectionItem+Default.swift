import Foundation
import IrohaCrypto

extension ConnectionItem {
    static var defaultConnection: ConnectionItem {
        ConnectionItem(title: "Kusama, Parity node",
                       url: URL(string: "wss://kusama-rpc.polkadot.io")!,
                       type: SNAddressType.kusamaMain)
    }

    static var supportedConnections: [ConnectionItem] {
        [
            ConnectionItem(title: "Kusama, Parity node",
                           url: URL(string: "wss://kusama-rpc.polkadot.io")!,
                           type: SNAddressType.kusamaMain),
            ConnectionItem(title: "Kusama, Web3 Foundation node",
                           url: URL(string: "wss://cc3-5.kusama.network")!,
                           type: SNAddressType.kusamaMain),
            ConnectionItem(title: "Polkadot, Parity node",
                           url: URL(string: "wss://rpc.polkadot.io")!,
                           type: SNAddressType.polkadotMain),
            ConnectionItem(title: "Polkadot, Web3 Foundation node",
                           url: URL(string: "wss://cc1-1.polkadot.network")!,
                           type: SNAddressType.polkadotMain),
            ConnectionItem(title: "Westend, Parity node",
                           url: URL(string: "wss://westend-rpc.polkadot.io")!,
                           type: SNAddressType.genericSubstrate)
        ]
    }
}
