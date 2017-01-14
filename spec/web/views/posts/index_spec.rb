require 'spec_helper'
require_relative '../../../../apps/web/views/posts/index'

describe Web::Views::Posts::Index do
  let(:exposures) { Hash[] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/posts/index.html.erb') }
  let(:view)      { Web::Views::Posts::Index.new(template, exposures) }
  let(:rendered)  { view.render }
end
