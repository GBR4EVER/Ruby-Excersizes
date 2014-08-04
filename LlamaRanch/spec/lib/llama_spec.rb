# LlamaRanch/spec/lib/llama_spec.rb
require "spec_helper" # this lets us run tests
require "llama" # this is the class we're testing with

describe Llama do
  it "should have a name that we assign to it at creation" do
    d = Llama.new("Rocky", 12)
    expect(d.name).to eql("Rocky")
  end
  
  it "should have a age"
  d = Llama.new("Rocky", 12)
  expect(d.age).to eql(12)
  end

end

