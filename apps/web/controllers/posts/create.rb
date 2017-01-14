module Web::Controllers::Posts
  class Create
    include Web::Action

    expose :post

    params do
      required(:post).schema do
        required(:title).filled(:str?)
        required(:author).filled(:str?)
        required(:content).filled(:str?)
      end
    end

    def call(params)
      if params.valid?
        @post = PostRepository.new.create(params[:post])
        redirect_to '/posts'
      else
        self.status = 422
      end
    end
  end
end
