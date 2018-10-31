class LettersController < ApplicationController
  def show
    company = Company.find(params[:company_id])
    category_id = params[:categories].split('/').last
    category = Category.find(category_id)
    letter_url = Letter.forge_url(category, company)
    @letter = Letter.find_by(url: letter_url)
  end
end
