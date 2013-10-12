#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
module ApplicationHelper


  def get_date()
    @var = Time.now.strftime("%B %e, %Y at %I:%M %p")
  end


  def count()


    if cookies[:init_date].nil?
      cookies[:init_date] = Time.now.strftime("%B %e, %Y at %I:%M %p")
    else
         @days = DateTime.now.mjd -  DateTime.parse(cookies[:init_date]).mjd
         cookies[:bet_date]=@days
    end

    if @days.nil?
      @days=0;
    end

    if @days <= 120
      @days_output = 'Initial Date:' + cookies[:init_date]
    else
      @days_output = 'Your last visited was too long ago'
    end

  end
end