#language: ja

  フィーチャ: 販売する商品のリストを用意する
    売り手として、
    Depot サイトで販売する商品の一覧を用意したい。
    なぜなら、どの商品をいくらで販売するか買い手に提示したいからだ。

    シナリオ: 商品の一覧を表示する
      前提    以下の商品がある:
        |タイトル                 |説明                                      |イメージURL      | 値段 |
        |Web Design for Developers|<p><em>Web Design for Developers<em> ...  |/images/wd4d.jpg | 4200 |
        |たのしいRuby             |プログラミング初心者でもRubyの使いこなし..|/images/ruby.jpg | 2730 |
      かつ    "商品一覧"ページを表示している
      ならば  "Web Design for Developers"と表示されていること
      かつ    "たのしいRuby"と表示されていること

    シナリオ: 商品を追加する
      前提    "新規商品"ページを表示している
      もし    "タイトル"に"Rubyベストプラクティス"と入力する
      かつ    "概要"に以下の通り入力する
        """
        本書は、Rubyでのソフトウェア開発経験者を対象に、
        プログラミングの実践的なテクニックとアイデアを、
        実際に使われているライブラリやコードを題材に解説する。
        """
      かつ    "画像URL"に"/images/rb.jpg"と入力する
      かつ    "価格"に"3360"と入力する
      かつ    "登録する"ボタンをクリックする
      ならば  "Rubyベストプラクティス"と表示されていること

    シナリオ: 商品の追加で項目の入力ミスを犯す
      前提    "新規商品"ページを表示している
      もし    "概要"に以下の通り入力する
        """
        タイトルに入力漏れがあった場合のテストシナリオです
        """
      かつ    "画像URL"に"/images/rb.jpg"と入力する
      かつ    "価格"に"4000"と入力する
      かつ    "登録する"ボタンをクリックする
      ならば  "タイトルを入力してください。"と表示されていること

    シナリオ: 価格をゼロ円で登録してしまう
      前提    "新規商品"ページを表示している
      もし    以下の項目を入力する:
         | タイトル | 価格はゼロ円             |
         | 概要     | 価格にゼロを入力した場合 |
         | 画像URL  | /images/zero.jpg         |
         | 価格     | 0                        |
      かつ    "登録する"ボタンをクリックする
      ならば  "価格は0より大きい値にしてください。"と表示されていること

    シナリオ: 同じタイトルの商品は登録できない
      前提    以下の商品がある:
        |タイトル                 |説明                                      |イメージURL      | 値段 |
        |Web Design for Developers|<p><em>Web Design for Developers<em> ...  |/images/wd4d.jpg | 4200 |
      かつ   "新規商品"ページを表示している
      もし   以下の項目を入力する:
         | タイトル | Web Design for Developers |
         | 概要     | 重複したタイトルの登録    |
         | 画像URL  | /images/dupricate.jpg     |
         | 価格     | 3880                      |
      かつ    "登録する"ボタンをクリックする
      ならば  "タイトルはすでに存在します。"と表示されていること

    シナリオ: 画像URLが jpg, gif, png になっていない
      前提    "新規商品"ページを表示している
      もし   以下の項目を入力する:
         | タイトル | Web Design for Developers |
         | 概要     | 重複したタイトルの登録    |
         | 画像URL  | /images/dupricate.jpeg    |
         | 価格     | 3880                      |
      かつ    "登録する"ボタンをクリックする
      ならば  "画像URLは GIF, JPG, もしくは PNGイメージでなければなりません。"と表示されていること

