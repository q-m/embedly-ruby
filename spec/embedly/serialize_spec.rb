require "spec_helper"
require "yaml"

describe Embedly::EmbedlyObject do
  let(:serialized_embedly_object) do
    "--- !ruby/object:Embedly::EmbedlyObject
table:
  :provider_url: https://www.youtube.com/"
  end

  subject { YAML.load(serialized_embedly_object) }

  it "deserializes the EmbedlyObject" do
    expect(subject).to be_a described_class
  end

end
