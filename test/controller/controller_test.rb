# -*- encoding: utf-8 -*-
require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

def app() Sinatra::Application end

describe 'root' do
  it 'should display layout' do
    get '/'
    assert last_response.ok?
    assert_send [last_response.body, :include?, "かけいぼ！"]
  end
end
