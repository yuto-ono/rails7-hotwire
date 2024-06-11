# README

## ローカルでの起動手順

Ruby と Node.js のバージョン管理に [asdf](https://asdf-vm.com/) を使っています。

初回セットアップ

```
bundle install
yarn
bin/rails db:create
bin/rails db:migrate
```

ローカルサーバ起動

```
bin/dev
```
