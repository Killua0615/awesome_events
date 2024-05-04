Rails.application.routes.draw do
  get 'welcome/index'
  get "/auth/:provider/callback" => "sessions#create"


  # # GitHub認証用ルート
  # get '/auth/github', to: redirect('/auth/github/callback')  # 認証の開始
  # get '/auth/github/callback', to: 'sessions#create'  # 認証完了後の処理
  # get '/auth/failure', to: 'sessions#failure'  # 認証失敗時の処理
  
  # # 他のルート定義
end
