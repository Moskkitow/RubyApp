class Backoffice::DiagramsController < BackofficeController
    def index
        %x(bundle exec erd --filename='public/fiagram')
    end
end
