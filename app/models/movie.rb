class Movie < ActiveRecord::Base
  def self.all_ratings
    ['G', 'PG', 'PG-13', 'R']
  end
  def self.with_ratings(ratings_list)
    # if ratings_list is an array such as ['G', 'PG', 'R'], retrieve all
    #  movies with those ratings
    # if ratings_list is nil, retrieve ALL movies
    sorted_ratings_list = nil
    if ratings_list!=nil
      sorted_ratings_list = @movies.where(rating: ratings_list)
    else
      sorted_ratings_list = @movies.all
    end
    sorted_ratings_list
  end
end
