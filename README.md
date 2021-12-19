# アプリケーション名
ペット掲示板
# アプリケーション概要
飼い主同士の情報共有ツール
# URL

# テスト用アカウント

# 利用方法

# アプリケーションを作成した背景
自分は犬を一匹飼っていることもあり、昔から犬や猫などの殺処分について考えることが多々ありました。
殺処分を防ぐために譲渡犬のアプリなどがありそのアプリのおかげで殺処分数が減っているとは思いました。
けれど、元を辿れば飼育放棄をして野良化させてしまったのは飼い主でありその理由の一つとして知識不足があるのではないかと考えました。
そのために飼い主が困っていることを別の飼い主に相談できるようなアプリがあるといいのではないかと思い作成しました。
# 洗い出した要件

# 実装した機能についての画像やGIFおよびその説明

# 実装予定の機能

# テーブル設計

## users テーブル
| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| first_name         | string  | null: false               |
| last_name          | string  | null: false               |
| first_name_kana    | string  | null: false               |
| last_name_kana     | string  | null: false               |
| email              | string  | null: false, unique: true |
| password           | string  | null: false               |
| encrypted_password | string  | null: false               |
| occupation         | string  | null: false               |
| prefectures_id     | integer | null: false               |
| birthday           | date    | null: false               |
- has_many :tweets
- has_many :comments

## tweets テーブル
| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| title              | string     | null: false                    |
| concept            | text       | null: false                    |
| user               | references | null: false, foreign_key: true |
- belongs_to :user
- has_many :comments

## comments テーブル
| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| content            | text       | null: false                    |
| tweet              | references | null: false, foreign_key: true |
| user               | references | null: false, foreign_key: true |
- belongs_to :user
- belongs_to :tweets

# 画面遷移図

# 開発環境

# ローカルでの動作方法
