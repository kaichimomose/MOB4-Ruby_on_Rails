require 'rails_helper'

RSpec.describe "UserControllers", type: :request do
  describe "GET /user_controllers" do
    context "unauthorized" do
        before {
            get "/users"
        }

        it "fails when there is no authentication" do
            expect(response)
        end
    end
  end
end
