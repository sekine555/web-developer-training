## 環境構築

### Docker構築

- MySQL

  - just コマンドは[cargo](https://doc.rust-lang.org/cargo/getting-started/installation.html)をインストール後に、`cargo install just`でインストール可能

  `just load`

### 自動フォーマット設定
`Preferences > Editor > Code Style > Scala`の`Formatter` を`scalafmt`に選択後、
`Reformat on file save`にチェックを入れる

## アプリケーション起動

- 起動

  `sbt run`
