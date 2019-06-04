## 仮想環境の起動方法

1. ターミナルアプリを起動（Windows なら PowerShell を推奨）
1. このプロジェクトのディレクトリまで移動
1. `cd vagrant`
1. セキュリティソフトのネットワークファイアウォールを一時的に無効化（NFS のマウントに必要）
1. `vagrant up`（仮想環境を起動）
1. `vagrant ssh`（仮想環境にログイン）
1. `sudo setenforce 0`（SELinux を無効化）
1. `exit`（仮想環境からログアウト）

以上で起動完了です。下記 URL でアプリケーションや phpMyAdmin にアクセスできます。

- `localhost:8080/application`
- `localhost:8080/phpmyadmin`

また、SELinux は`vagrant\playbooks\roles\common\tasks\main.yml`にて無効化していますが、何故か反映されていないので手動で無効化しています。

## 仮想環境のシャットダウン方法

`vagrant`ディレクトリ上で下記を実行

1. `vagrant halt`
