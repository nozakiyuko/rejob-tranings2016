class Job < ActiveRecord::Base

  has_many :jobs_users
  has_many :user, through: :jobs_users

# throughオプションによりjobs_areas経由でjobsにアクセスできるようになる(productsもN！多！)
# 具体的には、category.productsで商品にアクセスができる
end
