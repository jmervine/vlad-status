# -*- ruby -*-

require 'rubygems'
require 'hoe'

Hoe.plugin :hg

Hoe.spec 'vlad-status' do
  developer('Joshua P. Mervine', 'joshua@mervine.net')
  extra_deps << ['vlad', '~> 2.0']
  clean_globs << '.yardoc'
end

# vim: syntax=ruby
