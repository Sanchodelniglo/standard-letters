class Category < ApplicationRecord
  belongs_to :purpose, optional: true
  belongs_to :parent, class_name: 'Category', optional: true
  has_many :children, foreign_key: :parent_id, class_name: 'Category'

  has_many :category_companies
  has_many :companies, through: :category_companies


  def to_param
    "#{id} #{name}".parameterize
  end

  def to_s
    to_param
  end

  def root_level
    root ||= ancestors.first
  end

  def ancestors
    ancestors_objects = []
    category = self
    while category
      ancestors_objects << category
      return ancestors_objects.reverse if category.parent.nil?
      category = category.parent
    end
  end
end
