Store::Application.routes.draw do |map|
# root :to => HomeController.action(:index)
  # root :to =>  proc { |env| [200,{},["satish the great soul"]]}
  root :to => HomeApp
  
  match "/about" => redirect("/aboutus")
  match "/aboutus" => "info#about"
  
  resources :products
  match "/p/:id" => redirect("/products/%{id}")
  #match "/process" => ProcessApp
  match "/processes" => ProcessesApp.action(:index)
end
