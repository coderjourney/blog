require 'spec_helper'
require_relative '../../../../apps/web/controllers/posts/create'

describe Web::Controllers::Posts::Create do
  let(:action) { Web::Controllers::Posts::Create.new }
  let(:params) do
    {
      post: {
        title: "Example",
        author: "Kevin Bacon",
        content: "stuff",
      }
    }
  end

  it 'redirects when successful' do
    response = action.call(params)
    response[0].must_equal 302
  end

  it 'returns a 422 with invalid params' do
    response = action.call(Hash[])
    response[0].must_equal 422
  end
end
