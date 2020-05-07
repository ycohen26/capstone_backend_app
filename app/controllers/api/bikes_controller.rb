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
      group: params[:group] #HOW TO ADD PHOTOS?
    )
    if @bike.save
      render 'show.json.jb'
    else
      render json: { errors: @bike.errors.full_messages }
    end
  end
  
  
  def update
    the_id = params[:id]
    @bike = Bike.find_by(id: the_id)
    @bike.update(
      buyer_id: params[:buyer_id] || @bike.buyer_id, #will update to the purchaser
      brand: params[:brand] || @bike.brand,  
      model: params[:model] || @bike.model,  
      size: params[:size] || @bike.size,  
      speeds: params[:speeds] || @bike.speeds,  
      plates: params[:plates] || @bike.plates,  
      frame_material: params[:frame_material] || @bike.frame_material,  
      fork_material: params[:fork_material] || @bike.fork_material,  
      year_of_purchase: params[:year_of_purchase] || @bike.year_of_purchase,  
      wheels: params[:wheels] || @bike.wheels,  
      aestetic_condition: params[:aestetic_condition] || @bike.aestetic_condition,  
      mechanical_condition: params[:mechanical_condition] || @bike.mechanical_condition,  
      has_pedals: params[:has_pedals] || @bike.has_pedals,  
      original_receipt: params[:original_receipt] || @bike.original_receipt,  
      im_a_shop: params[:im_a_shop] || @bike.im_a_shop,  
      negotiable_price: params[:negotiable_price] || @bike.negotiable_price,  
      price: params[:price] || @bike.price,  
      group: params[:group || @bike.group]
    )
    @bike.save
    render 'show.json.jb'
  end
  
  def destroy

  end
end
