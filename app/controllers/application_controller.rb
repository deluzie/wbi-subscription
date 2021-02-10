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
  def agb
    render "/agb"
  end
end
