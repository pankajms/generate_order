class AccountRequestsController < ApplicationController
  # GET /account_requests
  # GET /account_requests.json
  def index
    @account_requests = AccountRequest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @account_requests }
    end
  end

  # GET /account_requests/1
  # GET /account_requests/1.json
  def show
    @account_request = AccountRequest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @account_request }
    end
  end

  # GET /account_requests/new
  # GET /account_requests/new.json
  def new
    @account_request = AccountRequest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @account_request }
    end
  end

  # GET /account_requests/1/edit
  def edit
    @account_request = AccountRequest.find(params[:id])
  end

  # POST /account_requests
  # POST /account_requests.json
  def create
    @account_request = AccountRequest.new(params[:account_request])

    respond_to do |format|
      if @account_request.save

        AccountRequestMailer.welcome_email(@account_request).deliver

        format.html { redirect_to @account_request, notice: 'Account request was successfully created.' }
        format.json { render json: @account_request, status: :created, location: @account_request }
      else
        format.html { render action: "new" }
        format.json { render json: @account_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /account_requests/1
  # PUT /account_requests/1.json
  def update
    @account_request = AccountRequest.find(params[:id])

    respond_to do |format|
      if @account_request.update_attributes(params[:account_request])
        format.html { redirect_to @account_request, notice: 'Account request was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @account_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /account_requests/1
  # DELETE /account_requests/1.json
  def destroy
    @account_request = AccountRequest.find(params[:id])
    @account_request.destroy

    respond_to do |format|
      format.html { redirect_to account_requests_url }
      format.json { head :no_content }
    end
  end
end
