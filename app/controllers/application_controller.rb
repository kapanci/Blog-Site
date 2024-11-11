class ApplicationController < ActionController::Base
  before_action :authenticate_user!  # Giriş yapmamış kullanıcıyı giriş sayfasına yönlendir

  # Kullanıcı giriş yaptıktan sonra posts index sayfasına yönlendir
  def after_sign_in_path_for(resource)
    posts_path
  end
end
