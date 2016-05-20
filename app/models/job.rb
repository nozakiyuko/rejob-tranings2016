class Job < ActiveRecord::Base
  has_many :jobs_areas
  has_many :job, through: :jobs_areas

# throughオプションによりjobs_areas経由でjobsにアクセスできるようになる(productsもN！多！)
# 具体的には、category.productsで商品にアクセスができる
end
