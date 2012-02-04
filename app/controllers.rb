Kakeibo.controllers  do

  get :index do
    @payment = Payment.all
    haml :list
  end
  
end
