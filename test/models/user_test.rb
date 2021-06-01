# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                                                                :bigint           not null, primary key
#  name(名前)                                                        :string(100)      not null
#  email(メールアドレス)                                             :string(100)      not null
#  introduction(自己紹介)                                            :text(65535)
#  password_digest(パスワードハッシュ値)                             :string(255)      not null
#  password_reset_token(パスワード再設定トークン)                    :string(255)      not null
#  password_reset_token_expired_at(パスワード再設定トークン有効期限) :datetime
#  profile_image(プロフィール画像)                                   :string(255)
#  verification_token(有効化トークン)                                :string(255)
#  verification_token_expired_at(有効化トークン有効期限)             :datetime
#  created_at                                                        :datetime         not null
#  updated_at                                                        :datetime         not null
#
require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
