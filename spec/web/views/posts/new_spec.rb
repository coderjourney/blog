require 'spec_helper'
require_relative '../../../../apps/web/views/posts/new'

describe Web::Views::Posts::New do
  let(:exposures) { Hash[] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/posts/new.html.erb') }
  let(:view)      { Web::Views::Posts::New.new(template, exposures) }
  let(:rendered)  { view.render }
end
