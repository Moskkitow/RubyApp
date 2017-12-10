class Ad < ActiveRecord::Base

  belongs_to :member, optional: true
  belongs_to :category, optional: true

  scope :descending_order, -> (quantity) { limit(quantity).order(created_at: :desc) }

  has_attached_file :picture, styles: { large: "800x300#", medium: "320x150#", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

  monetize :price_cents

end