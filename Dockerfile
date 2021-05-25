# Goの最新バージョンをベースにする
FROM golang:latest

# appディレクトリの作成
RUN mkdir /go/src/app

# ワーキングディレクトリの作成
WORKDIR /go/src/app

# ホストのファイルをコンテナの作業ディレクトリに移行
ADD . /go/src/app

# realizeのインストール
RUN go get -u github.com/oxequa/realize