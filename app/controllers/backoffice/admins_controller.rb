class Backoffice::AdminsController < BackofficeController
  
  before_action :set_admins, only: [:edit, :update]
  
    def index
      @admins = Admin.all
    end
  
    def new
      @admins = Admin.new
    end
  
    def create
      @admins = Admins.new(params_admin)
      if @admin.save 	
        redirect_to backoffice_admins_path, notice: "Administrador (#{@admin.email}) cadastrado com sucesso"
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @admin.update(params_admin)
        redirect_to backoffice_admins_path, notice: "Adminstrador (#{@admin.email}) atualizado com sucesso"
      else
        render :new
      end      
    end
    
    private
  
      def set_admin
        @admin = Admin.find(params[:id])
      end
  
      def params_category
        params.require(:admin).permit(:email, :password, :password_confirmation)
      end
end
