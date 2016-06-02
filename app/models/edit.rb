class Edit < ActiveRecord::Base
  has_attached_file :photo,
  styles: { medium: "300x300>", thumb: "100x100>" },
  url:  "/images/:basename.:extension", # 画像保存先のURL先
  path: "#{Rails.root}/public/images/:basename.:extension"# サーバ上の画像保存先パス


  # ファイルの拡張子を指定（これがないとエラーが発生する）
  validates_attachment :photo, content_type: { content_type: ["image.jpg" "image/jpg", "image/jpeg", "image/png", "image/gif"] }

end
