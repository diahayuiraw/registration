class RegistrationsController < ApplicationController
	def index
		data = Registration.all
		render json:{
			data: data
		},status:200
	end
	
	def create
		data = Registration.new(registration_params)
		if data.save
			render json:{
				data: data
			},status:201
		else 
			render json:{
				data: 'error'
			},status:422 
		end

	end

	private 
		def registration_params
			params.permit(:full_name, :NIM, :Email, :Gender, :Department, :phone_Number, :line_ID, :batch, :achivment)
			
		end
end