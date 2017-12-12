class Ad < ActiveRecord::Base

  validates :file, :description, :category, :picture, :finish_date, presence: true
  validates :price, numericality: { greater_than: 0 }

  belongs_to :member, optional: true
  belongs_to :category, optional: true

  scope :descending_order, -> (quantity) { limit(quantity).order(created_at: :desc) }
  scope :to_the, -> (member) { where(member: member) }

  has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png" 
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

  monetize :price_cents

end