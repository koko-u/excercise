# -*- coding: utf-8 -*-
class Product < ActiveRecord::Base
  validates :title, :description, :image_url, :presence => true
  validates :price, :numericality => {:greater_than => 0}
  validates :title, :uniqueness => true
  validates :image_url, :format => {
    :with => %r{\.(gif|jpg|png)$}i,
    :message => 'は GIF, JPG, もしくは PNGイメージでなければなりません。'
  }
end
