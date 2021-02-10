class ApplicationController < ActionController::Base
  def kontakt
    render "/kontakt"
  end
  def news
    render "/news"
  end
  def buch
    render "/buch"
  end
  def impressum
    render "/impressum"
  end
end
