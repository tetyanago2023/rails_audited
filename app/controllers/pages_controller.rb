class PagesController < ApplicationController
  before_action :authenticate_user!, only: %i[audit]
  def home
  end

  def audit
    @user_audits  = current_user.audits
    @post_audits = current_user.posts.map(&:audits).flatten
    @user_associated_audits = current_user.associated_audits
    @user_own_and_associated_audits = current_user.own_and_associated_audits

  end
end
