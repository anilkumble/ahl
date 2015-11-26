class StaticPagesController < ApplicationController
  def home
      @reports = Report.all.order(created_at: :desc)
  end

  def about
  end
end
