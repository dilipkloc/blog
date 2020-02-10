class Article < ApplicationRecord
  belongs_to :category
  validates_presence_of :title,:body,:category_id,:publish_date,:feature_image_url,:is_published
  validate :article_published?
  
  before_create :check_published
  
  def check_published
    if self.publish_date < Date.today
      self.is_published = true
    end
  end

  def article_published?
    if publish_date > 1.month.from_now
      errors.add(:publish_date,"date greater than a month")
    end
  end

end
