# LlamaRanch/spec/lib/llama_spec.rb
require "spec_helper" # this lets us run tests
require "llama" # this is the class we're testing with

describe Llama do
  it "should have a name that we assign to it at creation" do
    llama = Llama.new("Rocky")
    expect(llama.name).to eql("Rocky")
  end
end
