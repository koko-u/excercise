# encoding: utf-8
# IMPORTANT: This file is generated by cucumber-rails - edit at your own peril.
# It is recommended to regenerate this file in the future when you upgrade to a 
# newer version of cucumber-rails. Consider adding your own code to a new file 
# instead of editing this one. Cucumber will automatically load all features/**/*.rb
# files.


require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

前提 /^"([^"]*)"ページを表示している$/ do |page_name|
  Given %{I am on #{page_name}}
end

もし /^"([^"]*)"ページを表示する$/ do |page_name|
  When %{I go to #{page_name}}
end

もし /^"([^"]*)"ボタンをクリックする$/ do |button|
  When %{I press "#{button}"}
end

もし /^"([^"]*)"リンクをクリックする$/ do |link|
  When %{I follow "#{link}"}
end

もし /^"([^"]*)"の"([^"]*)"リンクをクリックする$/ do |parent, link|
  When %{I follow "#{link}" within "#{parent}"}
end

もし /^"([^"]*)"に"([^"]*)"と入力する$/ do |field, value|
  When %{I fill in "#{field}" with "#{value}"}
end

# less difference to %{I fill in "#{value}" for "#{field}"} with above in Japanese.

もし /^以下の項目を入力する:$/ do |fields|
  When %{I fill in the following:}, fields
end

もし /^"([^"]*)"から"([^"]*)"を選択する$/ do |field, value|
  When %{I select "#{value}" from "#{field}"}
end

もし /^日時として"([^"]*)"を選択する$/ do |time|
  When %{I select "#{time}" as the date and time}
end

もし /^"([^"]*)"の日時として"([^"]*)"を選択する$/ do |datetime_label, datetime|
  When %{I select "#{datetime}" as the "#{datetime_label}" date and time}
end

もし /^時間として"([^"]*)"を選択する$/ do |time|
  When %{I select "#{time}" as the time}
end

もし /^"([^"]*)"の時間として"([^"]*)"を選択する$/ do |time_label, time|
  When %{I select "#{time}" as the "#{time_label}" time}
end

もし /^日付として"([^"]*)"を選択する$/ do |date|
  When %{I select "#{date}" as the date}
end

もし /^"([^"]*)"の日付として"([^"]*)"を選択する$/ do |date_label, date|
  When %{I select "#{date}" as the "#{date_label}" date}
end

もし /^"([^"]*)"をチェックする$/ do |field|
  When %{I check "#{field}"}
end

もし /^"([^"]*)"のチェックを外す$/ do |field|
  When %{I uncheck "#{field}"}
end

もし /^"([^"]*)"を選択する$/ do |field|
  When %{I choose "#{field}"}
end

もし /^"([^"]*)"としてファイル"([^"]*)"を選択する$/ do |field, path|
  When %{I attach the file "#{path}" to "#{field}"}
end

ならば /^"([^"]*)"と表示されていること$/ do |text|
  Then %{I should see "#{text}"}
end

ならば /^"([^"]*)"に"([^"]*)"と表示されていること$/ do |selector, text|
  Then %{I should see "#{text}" within "#{selector}"}
end

ならば /^\/([^\/]*)\/と表示されていること$/ do |regexp|
  Then %{I should see /#{regexp}/}
end

ならば /^"([^"]*)"に\/([^\/]*)\/と表示されていること$/ do |selector, regexp|
  Then %{I should see \/#{regexp}\/ within "#{selector}"}
end

ならば /^"([^"]*)"と表示されていないこと$/ do |text|
  Then %{I should not see "#{text}"}
end

ならば /^"([^"]*)"に"([^"]*)"と表示されていないこと$/ do |selector, text|
  Then %{I should not see "#{text}" within "#{selector}"}
end

ならば /^\/([^\/]*)\/と表示されていないこと$/ do |regexp|
  Then %{I should not see /#{regexp}/}
end

ならば /^"([^"]*)"に\/([^\/]*)\/と表示されていないこと$/ do |selector, regexp|
  Then %{I should not see \/#{regexp}\/ within "#{selector}"}
end

ならば /^入力項目"([^"]*)"に"([^"]*)"と表示されていること$/ do |field, value|
  Then %{the "#{field}" field should contain "#{value}"}
end

ならば /^入力項目"([^"]*)"に"([^"]*)"と表示されていないこと$/ do |field, value|
  Then %{the "#{field}" field should not contain "#{value}"}
end

ならば /^"([^"]*)"がチェックされていること$/ do |label|
  Then %{the "#{label}" checkbox should be checked}
end

ならば /^"([^"]*)"がチェックされていないこと$/ do |label|
  Then %{the "#{label}" checkbox should not be checked}
end

ならば /^"([^"]*)"ページを表示していること$/ do |page_name|
  Then %{I should be on #{page_name}}
end

show_me_the_page = lambda { Then %{show me the page} }

ならば /^ページを表示する$/, &show_me_the_page
ならば /^画面を目視$/, &show_me_the_page

# backword-compat for old japanese translation.
ならば /^デバッグ(?:のため)?$/, &show_me_the_page

