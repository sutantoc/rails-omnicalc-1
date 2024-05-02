Rails.application.routes.draw do
  get("/", {:controller => "pages", :action => "square"})
end
