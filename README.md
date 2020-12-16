```
## ALBはお金かかる？

## タスクがrunningだと課金されるの？

タスクが終了するまで課金。終了とはストップなのか？

## EC2より高い？

EC2タイプとFargateタイプがあるが、EC2タイプはその名の通り、作成したEC2上でコンテナを動かすもの。この場合は、このEC2の利用料がかかる。Fargateタイプは前述のEC2をユーザーが意識しないで良い。その上にレイヤーがあって、そこでコンテナを動かすイメージ。こちらの方が料金は高くなる。

## webサーバーに必要なメモリ量って？

## S3やEFSのマウントは出来るの？

S3は元々出来る。EFSも出来るようになった。

https://dev.classmethod.jp/articles/efs-fargate/

## SSMでSSH

SSHを扱うためのIAMロールが必要

Activation Code   IU3u/EUVZFj7uTmQoqph
Activation ID   42e9cb87-0a8f-4805-b8f2-e513b450af61

```

# コンテナにsshで入る

## 参考

https://qiita.com/ryurock/items/fa18b25b1b38c9a0f113
https://enokawa.hatenablog.jp/entry/2019/09/05/104545

- DockerImageにssm-agentをインストール
- ハイブリッドアクティベーションを作成
ロールを与る、registerLimitを多めに設定（コンテナが起動するたびに必要）
- 上記アクティベーションをパラメーターストアへ登録
- コンテナでハイブリットアクティベーションを使う設定をする
- コンテナでssm-agentの起動スクリプト（自前で用意）を叩く
シェルスクリプトを用意、シェルスクリプト中の変数はパラメーターストアのもの
- 本当に入れるかの確認

## 注意

ssm-agentをコンテナに入れると、１コンテナ当たり約$5かかる

## Dockerfileの注意

Pythonをインストールする
コンテナで使うssm-agentがpythonを必要としているため