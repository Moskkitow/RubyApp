class AdminMailer < ApplicationMailer
    def update_email(current_admin, admin)
        @current_admin = current_admin
        @admin = admin
        mail(to: @admin.email, subject: "Seus dados foram alterados")             
    end

    def send_email(current_admin, recipient, subject, email)
        @current_admin = current_admin
        @recipient = recipient
        @subject = subject
        @email = email
        mail(to: @recipient, subject: @subject)             
    end
end
