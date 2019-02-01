class RepliesController < OpenReadController
  before_action :set_reply, only: [:update, :destroy]

  # GET /replies
  def index
    @replies = Reply.all.where(discussion_id: params[:id]).order(updated_at: :desc)

    render json: @replies
  end

  # GET /replies/1
  def show
    @replies = Reply.all.where(discussion_id: params[:id]).order(updated_at: :desc)

    render json: @replies
  end

  # POST /replies
  def create
    @reply = Reply.new(reply_params)

    if @reply.save
      render json: @reply, status: :created, location: @reply
    else
      render json: @reply.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /replies/1
  def update
    if @reply.update(reply_params)
      render json: @reply
    else
      render json: @reply.errors, status: :unprocessable_entity
    end
  end

  # DELETE /replies/1
  def destroy
    @reply.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reply
      @reply = Reply.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def reply_params
      params.require(:reply).permit(:user_id, :discussion_id, :body)
    end
end
