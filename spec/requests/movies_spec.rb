require 'rails_helper'
RSpec.describe "/movies", type: :request do
  let(:valid_attributes) {
    { name: "Laxmi bomb", description: "Laxmi bomb is latest movie by Akshay kumar" }
  }

  let(:invalid_attributes) {
    { name: "Laxmi bomb", description: "Laxmi bomb" }
  }

  describe "GET /index" do
    it "renders a successful response" do
      Movie.create! valid_attributes
      get movies_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      movie = Movie.create! valid_attributes
      get movie_url(movie)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_movie_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      movie = Movie.create! valid_attributes
      get edit_movie_url(movie)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Movie" do
        expect {
          post movies_url, params: { movie: valid_attributes }
        }.to change(Movie, :count).by(1)
      end

      it "redirects to the created movie" do
        post movies_url, params: { movie: valid_attributes }
        expect(response).to redirect_to(movie_url(Movie.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Movie" do
        expect {
          post movies_url, params: { movie: invalid_attributes }
        }.to change(Movie, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post movies_url, params: { movie: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested movie" do
        movie = Movie.create! valid_attributes
        patch movie_url(movie), params: { movie: new_attributes }
        movie.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the movie" do
        movie = Movie.create! valid_attributes
        patch movie_url(movie), params: { movie: new_attributes }
        movie.reload
        expect(response).to redirect_to(movie_url(movie))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        movie = Movie.create! valid_attributes
        patch movie_url(movie), params: { movie: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested movie" do
      movie = Movie.create! valid_attributes
      expect {
        delete movie_url(movie)
      }.to change(Movie, :count).by(-1)
    end

    it "redirects to the movies list" do
      movie = Movie.create! valid_attributes
      delete movie_url(movie)
      expect(response).to redirect_to(movies_url)
    end
  end
end
