require 'rspec'
require_relative '../../../lib/xml/builder'

class XML
  include Xml::Builder
  def gen
    html {
      head {
        title { '123' }
      }
      body {
        div(class: 'v1') { 'div1' }
        div(class: 'v2') { 'div2' }
      }
    }
  end

  def gen_for_to_str
    html {
      head {
        title { '123' }
      }
      body {}
    }
  end
end

describe Xml::Builder do
  before(:each) do
    @xml = XML.new
  end

  it 'should gen' do
    expect_val = '<html><head><title>123</title></head><body><div class="v1">div1</div><div class="v2">div2</div></body></html>'
    really_val = @xml.gen
    expect(expect_val).to eq really_val
  end

  it 'should gen_for_to_str' do
    expect_val = '<html><head><title>123</title></head><body></body></html>'
    really_val = @xml.gen_for_to_str
    expect(expect_val).to eq really_val
  end
end