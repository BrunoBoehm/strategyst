class StaticPagesController < ApplicationController
	skip_before_action :authenticate_user!, only: [:frontpage]

  def dashboard
  end

  def frontpage
  end
end
