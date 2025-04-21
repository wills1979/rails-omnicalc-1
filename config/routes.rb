Rails.application.routes.draw do

  get("/", { :controller => "calculation", :action => "square_new"})

  get("/square/new", { :controller => "calculation", :action => "square_new"})
  get("/square/results", { :controller => "calculation", :action => "square_results"})

  get("/square_root/new", { :controller => "calculation", :action => "square_root_new"})
  get("/square_root/results", { :controller => "calculation", :action => "square_root_results"})

  get("/payment/new", { :controller => "calculation", :action => "payment_new"})
  get("/payment/results", { :controller => "calculation", :action => "payment_results"})

  get("/random/new", { :controller => "calculation", :action => "random_new"})
  get("/random/results", { :controller => "calculation", :action => "random_results"})

end
