# -*- coding: utf-8 -*-
前提 /^以下の商品がある:$/ do |table|
  table.rows.each do |title, description, image_url, price|
    Product.create!(:title => title, :description => description,
                    :image_url => image_url, :price => price)
  end
end

もし /^"([^"]*)"に以下の通り入力する$/ do |field, string|
  When %{I fill in "#{field}" with "#{string}"}
end

