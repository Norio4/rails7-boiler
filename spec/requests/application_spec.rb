require 'rails_helper'

describe 'Application', type: :request do
  describe 'GET healthcheck_path' do
    before do
      get healthcheck_path
    end
    it 'response status code 200' do
      expect(response.status).to eq 200
    end
    it 'response body nil' do
      expect(response.body).to eq ''
    end
  end
end
