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
    current_budget.update_total
    redirect ''
  end

  post '/delete/:id' do
    Payment.find(params[:id]).delete
    current_budget.update_total
  end

end
