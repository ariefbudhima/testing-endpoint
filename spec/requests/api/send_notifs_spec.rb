require 'swagger_helper'

RSpec.describe 'api/send_notifs', type: :request do
    path '/' do
        post 'send notif and get response back' do
            tags 'send_notifs'
            consumes 'application/json'
            parameter name: :params, in: :body, schema: {
                type: :object,
                properties: {
                any_name: { type: :string }
                }
            }
    
            response '200', 'return same result as parameter' do
                let(:params) { { "test": "test" } }
                run_test!
            end
        end
    end

    # this is for rspec
    describe "POST /" do
        let(:params) { {
                "test": "test"
              } }
        it "returns http success" do
            post "/", params: params
            expect(response.status).to eq(200)
        end
    end
end
