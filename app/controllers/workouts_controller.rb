class WorkoutsController < ApplicationController
	before_action :set_workout, :except=>[:index,:new,:create]

	def index
		@workouts = Workout.all.order("created_at DESC")
	end

	def new
		@workout = Workout.new
	end
	def create
		@workout = Workout.new(workout_params)
		if @workout.save
			redirect_to @workout
		else
			render "new"
		end
	end

	def edit
	end

	def update

		if @workout.update(workout_params)
			redirect_to @workout
		else
			render "edit"
		end
	end


	def show
				@workout = Workout.find(params[:id])

	end

	def destroy
 		@workout.destroy
		redirect_to workouts_path
	end

	private

	def set_workout
		@workout = Workout.find(params[:id])
	end
	
	def workout_params
		params.require(:workout).permit!
	end

end
