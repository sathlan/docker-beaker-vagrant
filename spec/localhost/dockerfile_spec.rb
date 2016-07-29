require 'spec_helper'
require 'docker'

describe 'docker image' do
  before(:all) do
    compose
  end

  context 'it build the image correctly' do
    it 'should have the image' do
      command 'docker images | grep beaker-vagrant:latest'
    end
  end

  after(:all) do
    `docker-compose down`
  end
end
