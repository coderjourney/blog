module Web::Controllers::Posts
  class Index
    include Web::Action

    expose :posts

    def call(params)
      @posts = PostRepository.new.all
    end
  end
end
