RailsAdmin.config do |config|


  #Configuração de nomes
  config.main_app_name = ["Soul Code Jr", "Versão 2.0"]

  config.navigation_static_links = {
  'Soul Code Jr' => 'http://soulcodejr.com',
  'Facebook' => 'https://www.facebook.com/Soulcodejr/',
  'Instagram' => 'https://www.instagram.com/soulcodejr/',
}
 
config.navigation_static_label = "Nossos Perfis"


  ### Popular gems integration

  ## == Devise ==
   config.authenticate_with do
     warden.authenticate! scope: :user
   end
   config.current_user_method(&:current_user)

  ## == Cancan ==
   config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

#Configurando os ícones do menu
config.model Client do
    navigation_icon 'fa fa-address-card-o'
end

config.model Department do
  navigation_icon 'fa fa-address-book-o'
end  

config.model Member do
  navigation_icon 'fa fa-user-circle-o'
end  

config.model Project do
  navigation_icon 'fa fa-briefcase'
end

config.model User do
  navigation_icon 'fa fa-user'
end  


  #Configurações que apareceram no formulário

  config.model User do
    create do
      field :photo
      field :name
      field :kind
      field :status
      field :notes
      field :email
      field :password
      field :password_confirmation
    end  
    edit do
      field :photo
      field :name
      field :kind
      field :status
      field :notes
      field :email
      field :password
      field :password_confirmation
    end  
    show do
      field :photo, :carrierwave do
          pretty_value do
            bindings[:view].tag(:img, { :src => bindings[:object].photo.medium })
          end
        end 
      field :photo
      field :name
      field :kind
      field :status
      field :notes
      field :email
    end  
    list do
      field :name
      field :kind
      field :email
      field :status
      field :created_at
    end  
  end  

  config.model Client do
    create do
      field :photo
      field :name
      field :company_name
      field :rg
      field :cpf
      field :phone
      field :email
      field :status
      field :birthday
      field :notes
      field :addresses
      field :projects
      field :document_one
      field :document_two
      field :document_three
    end  
    edit do
      field :photo
      field :name
      field :company_name
      field :rg
      field :cpf
      field :phone
      field :email
      field :status
      field :birthday
      field :notes
      field :addresses
      field :projects
      field :document_one
      field :document_two
      field :document_three
    end  
    show do
      field :photo, :carrierwave do
          pretty_value do
            bindings[:view].tag(:img, { :src => bindings[:object].photo.medium })
          end
        end 
      field :name
      field :company_name
      field :rg
      field :cpf
      field :phone
      field :email
      field :status
      field :birthday
      field :notes
      field :addresses
      field :projects
      field :document_one do
        label "Contrato"
      end  
      field :document_two
      field :document_three
    end  
    list do
      field :name
      field :phone
      field :email
      field :status
      field :birthday
    end  
  end  

  config.model Member do
      create do
        field :photo
        field :name
        field :rg
        field :cpf
        field :phone
        field :email
        field :department
        field :scrum
        field :position
        field :projects 
        field :document_one
        field :document_two
      end  
      edit do
        field :photo
        field :name
        field :rg
        field :cpf
        field :phone
        field :email
        field :department
        field :scrum
        field :position
        field :projects 
        field :document_one
        field :document_two
      end  
      list do
        field :name
        field :phone
        field :email
        field :department
        field :position
      end 
      show do
        field :photo, :carrierwave do
          pretty_value do
            bindings[:view].tag(:img, { :src => bindings[:object].photo.medium })
          end
        end   
        field :name
        field :rg
        field :cpf
        field :phone
        field :email
        field :department
        field :scrum
        field :position
        field :projects 
        field :document_one
        field :document_two
      end  
  end  

  config.model Project do
    create do
      field :name
      field :description
      field :sale_date
      field :deadline
      field :company_name
      field :phone
      field :status
      field :client
      field :cliente_note
      field :members
    end  
    edit do
      field :name
      field :description
      field :sale_date
      field :deadline
      field :company_name
      field :phone
      field :status
      field :client
      field :cliente_note
      field :members
    end  
    list do
      field :name
      field :deadline
      field :company_name
      field :client
      field :status
    end  
  end  


  config.model Address do
    visible false
  end 
  config.model Categorization do
    visible false
  end  


  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
