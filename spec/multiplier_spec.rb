require 'spec_helper'
require 'sitespec'

Sitespec.configure do
  self.application = App.new
  self.build_path = "build"
  self.raise_http_error = true
end

describe "Sitespec" do
  include Sitespec

  it "generates static site from your rack application & spec definition" do
    for x in 1..10 do
      for y in 1..10 do
        get "/multiplier/#{x}/x/#{y}"
      end
    end
  end
end
