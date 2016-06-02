class Picture < ActiveRecord::Base
  # photoをattachファイルとする。stylesで画像サイズを定義できる

 # ファイルの拡張子を指定（これがないとエラーが発生する）
 #validates_attachment :photo, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
 #ファイルの保存場所指定
 # has_attached_file :photo,
 #  :styles => { medium: "300x300>", thumb: "100x100>" }, # 画像サイズを指定
 # :url  => "/assets/images/:id/:style/:basename.:extension", # 画像保存先のURL先
 # :path => "#{Rails.root}/public/assets/images/:id/:style/:basename.:extension" # サーバ上の画像保存先パス
 #  validates_attachment_content_type :photo, content_type: ['gif']
 #  # imageをattachファイルとする。stylesで画像サイズを定義できる
 has_many :jobs
 has_many :pictures, through: :jobs

  has_attached_file :photo,

  styles: { medium: "318x180!" },
	url:  "/images/:basename.:extension", # 画像保存先のURL先
  path: "#{Rails.root}/public/images/:basename.:extension"# サーバ上の画像保存先パス


  # ファイルの拡張子を指定（これがないとエラーが発生する）
  validates_attachment :photo, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
