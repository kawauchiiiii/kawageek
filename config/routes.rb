Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

get 'kawasofts/index' => 'kawasofts#index'
get 'kawasofts/character' => 'kawasofts#character'
get 'kawasofts/character_2' => 'kawasofts#character_2'
get 'kawasofts/character_3' => 'kawasofts#character_3'
get 'kawasofts/story' => 'kawasofts#story'
get 'kawasofts/special' => 'kawasofts#special'
get 'reviews/index' => 'reviews#index'
get 'reviews/new' => 'reviews#new'
get 'kawasofts/review' =>'reviews/index'
post 'reviews' => 'reviews#create'
get 'reviews/:id' => 'reviews#show',as: 'review'
root 'kawasofts#index'
end

