class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  before_action :say_hello

  private

  def say_hello
      puts 'Hello there!'
  end
end
