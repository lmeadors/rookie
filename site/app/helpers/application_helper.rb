module ApplicationHelper

  def nl2br(s)
    s.gsub(/(\r)?\n/, "<br />")
  end
  
end
