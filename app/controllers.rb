Kakeibo.controllers  do

  get :index do
    @budget = Budget.all
    haml :list
  end
  
  post :index do
    current_budget.payments.create do |p|
      p.title = params[:title]
      p.price = params[:price]
      p.genre = params[:genre]
    end
    redirect ''
  end

end
