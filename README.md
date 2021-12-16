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
