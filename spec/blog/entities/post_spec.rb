require 'spec_helper'

describe Post do
  it "can be initialized with parameters" do
    post = Post.new(title: "My Title", author: "Kevin Bacon", content: "Sample Content")

    post.title.must_equal "My Title"
    post.author.must_equal "Kevin Bacon"
    post.content.must_equal "Sample Content"
  end
end
