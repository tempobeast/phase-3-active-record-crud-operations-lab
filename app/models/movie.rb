class Movie < ActiveRecord::Base

    def self.create_with_title(movie)
        Movie.create(title: "#{movie}")
    end

    def self.first_movie
        Movie.first
    end

    def self.last_movie
        Movie.last
    end

    def self.movie_count
        Movie.count
    end

    def self.find_movie_with_id(num)
        Movie.find(num)
    end

    def self.find_movie_with_attributes(attribute)
        Movie.find_by(attribute)
    end

    def self.find_movies_after_2002
        Movie.where("release_date > ?", 2002)
    end

    def update_with_attributes(updates)
        self.update(updates)
    end

    def self.update_all_titles(title)
        Movie.update(title: title)
    end

    def self.delete_by_id(id)
        Movie.find(id).destroy
    end

    def self.delete_all_movies
        Movie.destroy_all
    end



end