# Space Newsletter Full Stack


Este é um projeto para que possamos ver as suas habilidades como Fullstack Developer.
Nesse projeto foi desenvolvido uma REST API que utilizará os dados do projeto Space Flight News, uma API pública com informações relacionadas a voos espaciais.<br> Também deverá desenvolver um projeto front-end para consumir as informações da sua API.
Foi criado um CRON para ser executado diariamente às 9h e armazenar em seu os novos artigos ao seu banco de dados

# Tecnologias

Para desenvolver o projeto foi usado as tecnologias: Ruby on Rails, React e Postgresql 

### Pré-requisitos Back-end

Para rodar o projeto na sua máquina, deve ter instalado o ruby, rails e Postgres

```
gem 'rails', '~> 6.1.7'
ruby '3.0.1'
Postgresql 
```

### Pré-requisitos Front-end
React<br>
Axios<br>
Caso não tenha o react na sua máquina rode:

```
sudo npm -g install create-react-app
```
Caso já tenha o react acesse a pasta e rode:
```
npm install
npm start
```


Na sua máquina acesse a pasta da Api execute os comandos:
```
bundle install
```

Obs:  
 

Em seguida crie sua base de dados com comandos:

```
rails db:create
rails db:migrate
```
Test:<br>
para rodar os testes de acordo com model desejádo rode o comando<br>
ex:
```
rspec spec/model/user_spec.rb

```

Para subir o projeto local execute:
```
rails s
```

