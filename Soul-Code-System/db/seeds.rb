
#Criando Usuários
User.create name: 'Fernando', status: :active, kind: :manager, email: 'fernandolinhares1920@globo.com', password: 'tortadecebola'
User.create name: 'Colaboradores', status: :active, kind: :collaborator, email: 'soulcodejr@gmail.com', password: 'S0ulC0d3121Jr'
User.create name: 'Colaboradores', status: :active, kind: :collaborator, email: 'teste@teste.com', password: 'S0ulC0d3121Jr'

#Criando Projetos
Project.create name: 'Yolo Hostel', company_name: 'Yolo Hostel', status: :active

#Criando Membro
Member.create name: 'Fernando', email: 'fernandolinhares1920@globo.com', position: 'Diretor de Projetos'