class AccueilController < ApplicationController
  skip_before_filter :authorize
end
