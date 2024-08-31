# README

## 参考資料
https://zenn.dev/shita1112/books/cat-hotwire-turbo

## サーバー起動

```bash
$ PORT=3001 bin/dev
```
> 🐱 jsbundling-railsはバンドラーを使うよ（デフォルトではwebpackではなく、ビルドが高速なesbuildを使う）。ただし $ rails server を起動するだけでは自動でJavaScript・CSSをビルドしてくれないんだ。JavaScript・CSSのビルドをするためにはforemanというプロセス管理のツールを使って、サーバーのプロセスと、JavaScript・CSSの自動ビルドのプロセスを同時に立ち上げる必要があるよ。--css bootstrapを指定した場合、↓のようなファイルが用意されていい感じにやってくれるので、開発する側は$ bin/devを叩くだけでOKだよ。  
> 🐱 JSのビルドに関してはjsbundling-railsが、CSSのビルドに関してはcssbundling-railsが担当するよ。  
> 🐱 ということで、このチュートリアルではサーバー起動には$ bin/devを使っていくよ。

https://zenn.dev/shita1112/books/cat-hotwire-turbo/viewer/tutorial-1#importmap-rails%E3%81%A8jsbundling-rails
