class BookVersionsController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_action :set_book_version, only: [:show, :edit, :update, :destroy]
  before_filter :teacher_only , only: [:edit,:update,:destroy]

  # GET /book_versions
  # GET /book_versions.json
  def index
    @book_versions = BookVersion.all
  end

  # GET /book_versions/1
  # GET /book_versions/1.json
  def show
  end

  # GET /book_versions/new
  def new
    @book_version = BookVersion.new(:book_id => params[:book_id])
  end

  # GET /book_versions/1/edit
  def edit
  end

  # POST /book_versions
  # POST /book_versions.json
  def create
    @book_version = BookVersion.new(book_version_params)

    respond_to do |format|
      if @book_version.save
        format.html { redirect_to @book_version, notice: 'Book version was successfully created.' }
        format.json { render action: 'show', status: :created, location: @book_version }
      else
        format.html { render action: 'new' }
        format.json { render json: @book_version.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_versions/1
  # PATCH/PUT /book_versions/1.json
  def update
    respond_to do |format|
      if @book_version.update(book_version_params)
        format.html { redirect_to @book_version, notice: 'Book version was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @book_version.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_versions/1
  # DELETE /book_versions/1.json
  def destroy
    @book_version.destroy
    respond_to do |format|
      format.html { redirect_to book_versions_url }
      format.json { head :no_content }
    end
  end

  def teacher_only
    if current_user.role != "Teacher"
      redirect_to books_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_version
      @book_version = BookVersion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_version_params
      params.require(:book_version).permit(:book_id, :grade, :content, :ri)
    end
end
