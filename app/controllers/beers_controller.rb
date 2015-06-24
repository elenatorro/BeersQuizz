class BeersController < ApplicationController
	def get
  	@beers = Beer.all
  	render :json => @beers[0]
  end

  def search
		name = params[:name]
  	@results = Beer.where('name LIKE ?', '%' + name + '%').all
  	render :json => @results.to_json
	end

  def random_beers
    random_beers = Beer.all(:order => 'RAND()', :limit => 3)
    beers = []
    random_beers.each_with_index do |beer,index|
      beers[index] = {
        'name' => beer.name,
        'abv'  => beer.abv,
        'category' => get_category(beer.cat_id)
      }
    end
    render :json => beers.to_json
  end

  def get_category(id)
    if (id == -1) 
      return 'No category'
    else 
      return Category.find(id).cat_name
    end
  end

  def categories
    render :json => Category.all.pluck(:cat_name).push('No category').to_json
  end

	def get_brewery(id)
		return Brewery.find(id)
	end
end
