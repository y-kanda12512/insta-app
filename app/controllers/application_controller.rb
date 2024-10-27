class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.

  # お使いのデバイスはサポートされていませんエラーを下記コメントアウトすることで解消
  # allow_browser versions: :modern

  # サインインした後にルートパスへ遷移するよう記載
  def after_sign_in_path_for(resource)
    profile_path
  end
end
