require 'spec_helper'

describe "#time" do
  let(:redis) { @redises.mock }

  it "responds with an array" do
    redis.time.should be_a(Array)
  end

  it "responds with the server time" do
    redis.time[0].should be_a(Integer)
    redis.time[1].should be_a(Integer)
  end
end
