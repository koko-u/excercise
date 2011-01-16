# -*- coding: utf-8 -*-
require 'spec_helper'

describe Product do
  it "タイトルと概要と画像URLを持つ" do
    Product.new(:title => "title", :description => "desc", 
                :image_url => "url.jpg", :price => 1000).should be_valid
  end
  it "タイトル、概要、画像URLのいずれかがなければ不正" do
    Product.new(:description => "desc", :image_url => "url.jpg", :price => 1000).should_not be_valid
    Product.new(:title => "title", :image_url => "url.jpg", :price => 1000).should_not be_valid
    Product.new(:title => "title", :description => "desc", :price => 1000).should_not be_valid
  end
  it "価格がゼロ円の商品は不正" do
    Product.new(:title => "tilte", :description => "desc", :image_url => "url.jpg", :price => 0).should_not be_valid
  end
  it "重複したタイトルの商品は登録できない" do
    Product.create!(:title => "title", :description => "desc1",
                    :image_url => "url1.jpg", :price => 1000)
    Product.new(:title => "title", :description => "desc2",
                :image_url => "url2.jpg", :price => 2000).should_not be_valid
  end
  it "画像URLにはjpg,gif,pngしか許されない" do
    Product.new(:title => "title(jpg)", :description => "desc",
                :image_url => "url.jpg", :price => 1000).should be_valid
    Product.new(:title => "title(gif)", :description => "desc",
                :image_url => "url.gif", :price => 1000).should be_valid
    Product.new(:title => "title(png)", :description => "desc",
                :image_url => "url.png", :price => 1000).should be_valid
    Product.new(:title => "title(hoge)", :description => "desc",
                :image_url => "url.hoge", :price => 1000).should_not be_valid
  end
end
