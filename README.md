# ios-public-app

![Swift](https://github.com/amarillons/ios-public-app/workflows/Swift/badge.svg)

歴史の情報を表示する iOS アプリ

### 自動ビルドについて

- GitHub Actions を使用した自動ビルドをしています。
- workflow は [.github/workflows/swift.yml](https://github.com/amarillons/ios-public-app/blob/develop/.github/workflows/swift.yml) にあります。

### 機能について

- 三十六歌仙の情報を自作の PHP API から取得して UITableView に表示します。

<img width="402" alt="screenshot 2020-06-24 at 14 04 54" src="https://user-images.githubusercontent.com/2384963/85505550-89cc3f80-b629-11ea-933d-a58265da05c0.png">

- シングルトンパターンを使っています。[Utils.swift](https://github.com/amarillons/ios-public-app/blob/e50023d6ab918837d2c99b4208fa6437091d72cc/sampl/Utils.swift#L16)
- 通信は、URLSession を使っています。[Utils.swift](https://github.com/amarillons/ios-public-app/blob/e50023d6ab918837d2c99b4208fa6437091d72cc/sampl/Utils.swift#L29)
- レイアウトは、AutoLayout を使っています。[SecondViewController.swift](https://github.com/amarillons/ios-public-app/blob/e50023d6ab918837d2c99b4208fa6437091d72cc/sampl/Controllers/SecondViewController.swift#L31)
- UITableView に Custom Table View Cell を設定して、表示しています。
[KasenTableViewCell.swift](https://github.com/amarillons/ios-public-app/blob/e50023d6ab918837d2c99b4208fa6437091d72cc/sampl/Controllers/SecondViewController%2BUITableViewDelegate%2BUITableViewDataSource.swift#L29)
- コードの書き方は、主に [Lets Build That App](https://www.youtube.com/channel/UCuP2vJ6kRutQBfRmdcI92mA) の Brian さんの書き方を参考にしています。

### テストについて

- 通信テストを XCTest で実装しています。 [samplTests.swift](https://github.com/amarillons/ios-public-app/blob/1af0f7067db4fd366b79645af1365e735386e27c/samplTests/samplTests.swift#L14) 

### 使った技術

- UIKit 
- CocoaPods （ライブラリ管理）
- XCTest （テストフレームワーク）
- [PINRemoteImage](https://github.com/pinterest/PINRemoteImage) （画像取得・表示）
- PHP + PDO + xserver + MySQL（RDB バックエンド）
