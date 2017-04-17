class HellosController < ApplicationController
  skip_before_action :say_hello, except: [:welcome]

  def welcome
  end

  def goodbye
  end

  def denied
  end
end
