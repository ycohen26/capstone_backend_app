class Api::BikesController < ApplicationController
  before_action :authenticate_user
  
  def index
    @bikes = Bike.all
    render 'index.json.jb'
  end

  def show
    the_id = params[:id]
    @bike = Bike.find_by(id: the_id)
    p @bike
    render 'show.json.jb'
  end
  
  def create
    @bike = Bike.new(
      seller_id: current_user.id,
      brand: params[:brand],  
      model: params[:model],  
      size: params[:size],  
      speeds: params[:speeds],  
      plates: params[:plates],  
      frame_material: params[:frame_material],  
      fork_material: params[:fork_material],  
      year_of_purchase: params[:year_of_purchase],  
      wheels: params[:wheels],  
      aestetic_condition: params[:aestetic_condition],  
      mechanical_condition: params[:mechanical_condition],  
      has_pedals: params[:has_pedals],  
      original_receipt: params[:original_receipt],  
      im_a_shop: params[:im_a_shop],  
      negotiable_price: params[:negotiable_price],  
      price: params[:price],  
      price: params[:category],  
      group: params[:group] #HOW TO ADD PHOTOS?
    )
    if @bike.save
      # params[:image_url].each do |image|
      #   @bike.photos = Photo.new(
      #     bike_id = @bike.id,
      #     image_url = image
      #   )
      #   image.save 
      # end
      render 'show.json.jb'
    else
      render json: { errors: @bike.errors.full_messages }
    end
  end
  
  
  def update
    @bike = Bike.find_by(id: params[:id])
    @bike.buyer_id = params[:buyer_id] || @bike.buyer_id, #will update to the purchaser
    @bike.brand = params[:brand] || @bike.brand,  
    @bike.model = params[:model] || @bike.model,  
    @bike.size = params[:size] || @bike.size,  
    @bike.speeds = params[:speeds] || @bike.speeds,  
    @bike.plates = params[:plates] || @bike.plates,  
    @bike.frame_material = params[:frame_material] || @bike.frame_material,  
    @bike.fork_material = params[:fork_material] || @bike.fork_material,  
    @bike.year_of_purchase = params[:year_of_purchase] || @bike.year_of_purchase,  
    @bike.wheels = params[:wheels] || @bike.wheels,  
    @bike.aestetic_condition = params[:aestetic_condition] || @bike.aestetic_condition,  
    @bike.mechanical_condition = params[:mechanical_condition] || @bike.mechanical_condition,  
    @bike.has_pedals = params[:has_pedals] || @bike.has_pedals,  
    @bike.original_receipt = params[:original_receipt] || @bike.original_receipt,  
    @bike.im_a_shop = params[:im_a_shop] || @bike.im_a_shop,  
    @bike.negotiable_price = params[:negotiable_price] || @bike.negotiable_price,  
    @bike.price = params[:price] || @bike.price,  
    @bike.group = params[:group] || @bike.group,
    @bike.group = params[:category] || @bike.category,
    @bike.photos
    @bike.save
    render 'show.json.jb'
  end
  
  def destroy

  end
end
