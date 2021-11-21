class Album < ApplicationRecord
  belongs_to :singer

  include PgSearch::Model
  pg_search_scope :global_search,
                  against: { title: 'A', synopsis: 'B' },
                  associated_against: {
                    singer: [ :first_name, :last_name ]
                  },
                  using: {
                    tsearch: { prefix: true }
                  }
  # include AlgoliaSearch

  # algoliasearch do
  #   attributes :title, :year, :synopsis, :singer

  #   searchableAttributes ['title', 'singer', 'unordered(synopsis)']
  #   customRanking ['desc(ranking)']
  # end
end
