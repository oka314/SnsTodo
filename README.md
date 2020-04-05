# README

# postテーブル（投稿）
  |Column         |Type   |Options|
  |---------------|-------|-------|
| name          |string| null:false
|user_id        |integer|null:false, forein_key|
### Association
belongs_to :user

# userテーブル
  |Column         |Type   |Options|
  |---------------|-------|-------|
| name          |string| null:false
|user_id        |integer|null:false, forein_key|



