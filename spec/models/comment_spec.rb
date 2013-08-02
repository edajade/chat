require 'spec_helper'

describe Comment do

  before do
    @comment = Comment.new(text: "I'm a little comment, short and stout.", user_name: "alice")
  end

  subject { @comment }

  it { should respond_to(:text) }
  it { should respond_to(:user_name) }
  it { should respond_to(:attachment) }

  it { should be_valid }

  describe "when text is missing" do
    before { @comment.text = nil }
    it { should_not be_valid }
  end

  describe "when user_name is missing" do
    before { @comment.user_name = nil }
    it { should_not be_valid }
  end

end
