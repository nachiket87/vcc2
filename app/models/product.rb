class Product < ApplicationRecord
  include CableReady::Broadcaster

  acts_as_list 
  default_scope { order(position: :desc) }
  validates :rating, numericality: { only_integer: true, less_than_or_equal_to: 5, greater_than_or_equal_to: 0 }
  validates :name, presence: true
  validates :price, presence: true
  validates :photo, presence: true
  attribute :in_cart, :boolean, default: false
  has_one_attached :photo

  delegate :render, to: :ApplicationController

  after_update do
    cable_ready["products"].morph(
      selector: "#{dom_id(self)}-container",
      position: "afterbegin",
      html: render(ProductComponent.new(product: self), layout: false)
    )
    cable_ready.broadcast
  end
end
