class SurveysController < ApplicationController
  
  def create
    survey = Survey.new(name: params[:name], email: params[:email], phone: params[:phone], services: params[:items], company: params[:company])

    byebug
    if survey.save
      redirect_to unete_path, notice: 'Hemos recibido tu información, nos pondremos en contacto muy pronto.'
    else
      redirect_to unete_path, notice: 'Tuvimos un error al guardar tu información, por favor vuelve a intentarlo.'
    end


  end


end
