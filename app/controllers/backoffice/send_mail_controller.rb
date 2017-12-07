class Backoffice::SendMailController < ApplicationController
    def edit
        @admin = Admin.find(params[:id])        
        respond_to do |format|
            format.js
        end
    end

    def create
        begin
            AdminMailer.send_email(current_admin, params[:'recipient-name'], params[:'subject-text'], params[:'messase-text']).deliver_now
            @notify_message = "Email enviado com sucesso!"
            @notify_flag = "success"
        rescue 
            @notify_message = "Erro ao enviar email. Tnete novamente"
            @notify_flag = "error"
        end        
        respond_to do |format|
            format.js
        end        
    end
end
