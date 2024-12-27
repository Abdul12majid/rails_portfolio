class ContactModelsController < ApplicationController
  before_action :set_contact_model, only: %i[ show edit update destroy ]

  # GET /contact_models or /contact_models.json
  def index
    @contact_models = ContactModel.all
  end

  # GET /contact_models/1 or /contact_models/1.json
  def show
  end

  # GET /contact_models/new
  def new
    @contact_model = ContactModel.new
  end

  # GET /contact_models/1/edit
  def edit
  end

  # POST /contact_models or /contact_models.json
  def create
    @contact_model = ContactModel.new(contact_model_params)

    respond_to do |format|
      if @contact_model.save
        format.html { redirect_to @contact_model, notice: "Contact model was successfully created." }
        format.json { render :show, status: :created, location: @contact_model }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contact_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contact_models/1 or /contact_models/1.json
  def update
    respond_to do |format|
      if @contact_model.update(contact_model_params)
        format.html { redirect_to @contact_model, notice: "Contact model was successfully updated." }
        format.json { render :show, status: :ok, location: @contact_model }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contact_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_models/1 or /contact_models/1.json
  def destroy
    @contact_model.destroy!

    respond_to do |format|
      format.html { redirect_to contact_models_path, status: :see_other, notice: "Contact model was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_model
      @contact_model = ContactModel.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def contact_model_params
      params.expect(contact_model: [ :name, :email, :message ])
    end
end
