class Backoffice::AdminsController < BackofficeController
  
  before_action :set_admin, only: [:edit, :update, :destroy]
  
  after_action :verify_authorized, only: [:new, :destroy]
  after_action :verify_policy_scoped, only: :index

  def index
    @admins = policy_scope(Admin)
  end
  
   def new
    @admin = Admin.new
    authorize @admin
  end
  
  def create
    @admin = Admin.new(params_admin)
    if @admin.save	
      redirect_to backoffice_admins_path, notice: I18n.t('messages.created_with', @admin.name)
    else
      render :new
    end
  end
  
  def edit
  end
  
  def update
    if @admin.update(params_admin)
      redirect_to backoffice_admins_path, notice: I18n.t('messages.updated_with', item: @admin.name)
    else
      render :edit
    end      
  end
  
  def destroy    
    authorize @admin
    admin_email = @admin.email

    if @admin.destroy
      redirect_to backoffice_admins_path, notice: I18n.t('message.destroyed_with', item: @admin.name)
    else
      render :index
    end
  end

  private
  
    def set_admin
      @admin = Admin.find(params[:id])
    end
  
    def params_admin
      pass = params[:admin][:password]
      pass_confirmation = params[:admin][:password_confirmation]
  
      if pass.blank? && pass_confirmation.blank?
        params[:admin].except(:password, :password_confirmation)
      end
      
      params.require(:admin).permit(policy(@admin).permitted_attributes)
    end
end
