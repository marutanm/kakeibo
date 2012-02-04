# Helper methods defined here can be accessed in any controller or view in the application

Kakeibo.helpers do

  def current_budget
    yearmonth = Time.now.strftime("%Y%m")
    Budget.find_or_create_by(yearmonth: yearmonth)
  end

end
