Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # サイトトップ
  root "top#index"

  # 各市町村
  get "/tokushima/" => "tokushima#index"
  get "/naruto/" => "naruto#index"
  get "/anan" => "anan#index"

  # CSVインポート
  get "/import/" => "import#index"
  post "/import/" => "import#update"
end
