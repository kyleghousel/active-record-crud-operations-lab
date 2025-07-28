class Movie < ActiveRecord::Base
  def self.create_with_title(title)
    Movie.find_or_create_by(title: title)
  end

  #   Read
  #   .first_movie
  #     returns the first item in the movies table (FAILED - 1)
  def self.first_movie
    Movie.order(:id).first
  end

  #   .last_movie
  #     returns the last item in the movies table (FAILED - 2)
  def self.last_movie
    Movie.order(:id).last
  end

  #   .movie_count
  #     returns the number of items in the movies table (FAILED - 3)
  def self.movie_count
    Movie.count
  end

  #   .find_movie_with_id
  #     returns the movie with the corresponding id (FAILED - 4)
  def self.find_movie_with_id(id)
    Movie.find(id)
  end

  #   .find_movie_with_attributes
  #     returns the movie with the corresponding attributes (FAILED - 5)
  def self.find_movie_with_attributes(attr)
    Movie.find_by(attr)
  end

  #   .find_movies_after_2002
  #     returns a list of movies released after 2002 (FAILED - 6)
  def self.find_movies_after_2002
    Movie.where('release_date > 2002')
  end

  # Update
  #   #update_with_attributes
  #     updates one movie (FAILED - 7)
  def update_with_attributes(attr)
    update(attr)
  end

  #   .update_all_titles
  #     updates the title of all the movies (FAILED - 8)
  def self.update_all_titles(updated_titles)
    Movie.update(title: updated_titles)
  end

  # Delete
  #   .delete_by_id
  #     deletes the record with the corresponding id (FAILED - 9)
  def self.delete_by_id(id)
    Movie.destroy(id)
  end

  #   .delete_all_movies
  #     deletes all the movies from the movies table (FAILED - 10)
  def self.delete_all_movies
    Movie.destroy_all
  end
end
