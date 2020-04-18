# README

# postテーブル（投稿）
|Column         |Type   |Options|
|---------------|-------||-------|
|explain        |string ||null:false|
|user           |reference||forein_key|
### Association
belongs_to :user
has_many   :likes

# userテーブル
|Column         |Type   |Options|
|---------------|-------||-------|
|name           |string ||null:false
|image          |text   |
|profile        |text   |
|nickname       |string ||null: false|
|email          |string ||null: false, uniqe: true|
### Association
has_many :posts
has_many   :likes


# likeテーブル
|Column         |Type   |Options|
|---------------|-------||-------|
|user           |reference ||forein_key|
|post           |reference ||forein_key|
### Association
belongs_to :user
belongs_to :post





