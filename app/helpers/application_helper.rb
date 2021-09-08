module ApplicationHelper
  def full_title page_title = ""
    base_title = "Food Supply Management"
    page_title.empty? ? base_title : "#{page_title} | #{base_title}"
  end
end
