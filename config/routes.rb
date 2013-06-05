Ncvocals::Application.routes.draw do
  
  root to: "home_pages#index"

  match '/help',      to: 'home_pages#help'
  match '/about',     to: 'home_pages#about'
  match '/contact',   to: 'home_pages#contact'
end
