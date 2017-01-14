require 'spec_helper'
require_relative '../../../../apps/web/views/posts/create'

describe Web::Views::Posts::Create do
  let(:exposures) { Hash[] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/posts/create.html.erb') }
  let(:view)      { Web::Views::Posts::Create.new(template, exposures) }
  let(:rendered)  { view.render }
end
