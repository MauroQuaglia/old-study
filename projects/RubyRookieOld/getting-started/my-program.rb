#!/usr/bin/env ruby
puts 'Hello'
puts "It is now: #{Time.now}"

# Se lo voglio eseguire con ./my-program.rb devo usare la notazione shebang.
# Se lo voglio eseguire come ruby my-program.rb, la notazione shebang non è necessaria. (Passo il file all'interprete ruby)

# Se il sistema lo supporta posso evitare di mettere il path dell'interprete ruby usando la notazione
# #!/usr/bin/env ruby
# che cercherà in automatico l'interprete ruby ed eseguirà lo script.
