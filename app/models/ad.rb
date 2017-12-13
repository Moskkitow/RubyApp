class Ad < ActiveRecord::Base

  before_save :md_to_html

  validates :description, :description_md, :description_short, :category, :picture, :finish_date, presence: true
  validates :price, numericality: { greater_than: 0 }

  belongs_to :member, optional: true
  belongs_to :category, counter_cache: true, optional: true

  scope :descending_order, -> (quantity) { limit(quantity).order(created_at: :desc) }
  scope :to_the, -> (member) { where(member: member) }
  scope :where_category, -> (id) { where(category: id) }

  has_attached_file :picture, styles: { large: "900x400#", medium: "150x75#", thumb: "50x50#" }, default_url: "/images/:style/missing.png" 
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

  monetize :price_cents

  private

    def md_to_html
      options = {
          filter_html: true,
          link_attributes: {
              rel: "nofollow",
              target: "_blank"
          }
      }
    
      extensions = {
          space_after_headers: true,
          autolink: true
      }
    
      renderer = Redcarpet::Render::HTML.new(options)
      markdown = Redcarpet::Markdown.new(renderer, extensions)
  
      self.description = markdown.render(self.description_md)
    end

end