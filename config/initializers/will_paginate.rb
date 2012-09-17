# Manually added to solve rails_admin conflict will_paginate & kaminari
# https://github.com/mislav/will_paginate/issues/174 
if defined?(WillPaginate)
  module WillPaginate
    module ActiveRecord
      module RelationMethods
        alias_method :per, :per_page
        alias_method :num_pages, :total_pages
      end
    end
  end
end