Kakeibo.controllers  do

  get :index do
    @budget = Budget.all
    haml :list
  end
  
  post :index do
    Payment.create do |p|
      p.title = params[:title]
      p.price = params[:price]
    end
    redirect ''
  end

end
