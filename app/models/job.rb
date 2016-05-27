class Job < ActiveRecord::Base

  has_many :job_users
  has_many :users, through: :job_users

# throughオプションによりjobs_areas経由でjobsにアクセスできるようになる(productsもN！多！)
# 具体的には、category.productsで商品にアクセスができる
end
