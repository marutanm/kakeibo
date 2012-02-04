Kakeibo.controllers  do

  get :index do
    @payment = Payment.all
    haml :list
  end
  
  post :index do
    Payment.create do |p|
      p.title = params[:title]
      p.price = params[:price]
    end
    @payment = Payment.all
    haml :list
  end

end
