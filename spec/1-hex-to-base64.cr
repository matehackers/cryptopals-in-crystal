require "spec"
require "../lib/hex-to-base64"

describe "Convert hexadecimal string to base64 string" do
  describe "base challenge" do
    it "should convert 492 to SS" do
      hexStr = "492"
      result = "SS"
      hexToBase64(hexStr).should eq result
    end

    it "should convert a01 to oB" do
      hexStr = "a01"
      result = "oB"
      hexToBase64(hexStr).should eq result
    end

    it "should convert 4927... to SSdtIG.." do
      hexStr = "49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d"
      result = "SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t"
      hexToBase64(hexStr).should eq result
    end

    it "should convert a01a01 to oBoB" do
      hexStr = "a01a01"
      result = "oBoB"
      hexToBase64(hexStr).should eq result
    end

    pending "should convert a01a01 to oBoB" do
      hexStr = "a01a010"
      result = "oBoBa"
      hexToBase64(hexStr).should eq result
    end
  end

end
