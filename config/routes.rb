Rails.application.routes.draw do
  get("/", {:controller => "pages", :action => "square"})

  get("/square/new", {:controller => "pages", :action => "square"})

  get("/square/results", {:controller => "pages", :action => "square_results"})
  
  
end
