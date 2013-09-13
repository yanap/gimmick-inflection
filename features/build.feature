# language: ja

機能: Gemのビルド

  シナリオ: gemコマンドを使ったビルド
    前提 プロジェクトルートにいる
    かつ ディレクトリ"pkg"が削除されている
    もし rakeタスク"build"を実行する
    ならば 標準出力が下記の正規表現にマッチする:
      """
      gimmick-inflection \d.\d.\d(.\w+)? built to pkg/gimmick-inflection-\d.\d.\d(.\w+)?.gem
      """
    かつ 終了コードが"0"である
    かつ ディレクトリ"pkg"が存在している
    かつ 下記のファイルが存在している:
      |pkg/gimmick-inflection-0.0.1.gem|
