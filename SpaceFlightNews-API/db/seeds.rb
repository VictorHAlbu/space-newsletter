require './lib/write_in_database'

puts 'Iniciando o seed de Articles'

ActiveRecord::Base.transaction do 
    WriteInDatabase::write_articles
    puts 'Seed de Articles realizado com sucesso!'
end
