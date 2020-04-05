# README

# postテーブル（投稿）
|Column         |Type   |Options|
|---------------|-------||-------|
| name          |string ||null:false|
|explain        |string ||null:false|
|user_id        |integer||null:false, forein_key|
### Association
belongs_to :user

# userテーブル
|Column         |Type   |Options|
|---------------|-------||-------|
|name           |string ||null:false
|profile-image  |text   ||
|nickname       |string ||null: false|
|email          |string ||null: false, uniqe: true|
### Association
has_many :posts



