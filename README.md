# Template_iOSUIKit_VIPER_VIPER
XcodeGenを使ってiOSアプリをUIKitのVIPERアーキテクチャで作るときのテンプレート


# architecture

- 周辺ライブラリ管理

  Mint, Bundler

- アプリ内ライブラリ管理

  SPM, CocoaPods

- プロジェクトファイル管理

  XcodeGen

- リソース管理

  R.swift

- ドキュメント管理

  jazzy

- コード整形

  SwiftLint

- ワークフロー管理

  fastlane

- カバレッジ計測の整形

  slather

# prepare

## hosting

テスト結果,カバレッジ計測結果,ソースコードドキュメントはS3にアップロードされるため、S3でバケットを用意しておく必要がある

もしくは[swift.yml](https://github.com/sakiyamaK/Template_iOSUIKit_VIPER/blob/main/.github/workflows/swift.yml)のS3関係の記述を削除する

## change text

使うときはこのブランチをコピーして以下のファイル内に記載の`Template_iOSUIKit_VIPER`部分を任意なものに変更する

`MakeFile`

`project.yml`

`.github/workflows/swift.yml`

`.slather.yml`

`.jazzy.yaml`


[swift.yml](https://github.com/sakiyamaK/Template_iOSUIKit_VIPER/blob/main/.github/workflows/swift.yml)のみ`templateiosuikit`という記載を任意なものに変更する


# start

```
make
```


# CI
`main`, `master`, `develop`ブランチをプッシュすることでGithubActionsが動く

# document
https://templateiosuikit.s3-ap-northeast-1.amazonaws.com/static_html/index.html
