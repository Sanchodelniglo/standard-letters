class CategoriesController < ApplicationController
  def index
    category_id = params[:categories].split('/').last
    @category = Category.find(category_id)
    if @category and @category.children.any?
      render :children
    else
      render "companies/index"
    end
  end
end
