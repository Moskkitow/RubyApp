class Site::CategoriesController < SiteController
    def show
        @categories = Category.order_by_description
        @ads = Ad.descending_order(10)
    end
end
