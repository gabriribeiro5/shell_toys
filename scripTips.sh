#!/bin/bash

:<<'INFO'
 Este é um comentário de várias linhas, a chave 'INFO' é declarada
  no início e utilizada para definir o fim do comentário.

 O cabeçalho acima <#! /bin/bash> indica qual programa (do diretorio
  /bin) será utilizado para tratar o conteúdo deste arquivo.
  Poderia ser <#! /bin/sh>, <#! /bin/cat> ou, ainda, <#! /bin/vim>
INFO

# Abaixo estão as referencias de comandos Shell que aprendi

# 1. VARIÁVEIS E ARRAYS

#> 1.1 VARIÁVEIS DE SISTEMA (criadas e utilizadas pelo seu script)
myVar="valor" # declaração (valida enquanto a sessão estiver aberta)
echo $myVar   # use $ para chamar uma variável


#> 1.2 VARIÁVEIS DE AMBIENTE (

set # exibe todas as variáveis de ambiente 
env # exibe todas as variáveis de ambiente
printenv # exibe todas as variáveis de ambiente

#> 1.3 MANIPULAÇÃO DE VARIÁVEIS

export environmentVar mySystemVar # exporta o valor da variavel de ambiente para uma variavel de sistema, para que vc possa manipular as parada com segurança
unset $myVar # apaga a variável

#> 1.4 MANIPULAÇÃO DE ARRAYS

newlinemyList=("item1" "item2" "3rdItem") 
echo "myList items count: ${#mundo[0]} elements"

# 2. BUSCA

#> 2.1 Filtro com <grep>
set | grep FilterReference # <set> busca variaveis de ambiente e <grep> faz uma filtragem dos resultados que contenham FilterReference

#> 2.2 Buscar comandos executados recentemente
fc -l RefString # retorna comandos recentes que contenham RefString

fc -l First Last # retorna um range onde First é referencia para o primeiro comando desse range, assim como Last é para o ultimo comando retornado na lista

# 3. ESCRITA / RETORNO / OUTPUT
echo $myVar   # print do valor da variável

# 4. NAVEGAÇÃO / FILE SYSTEM
cd path/to/file # Change Directory
ls path/to/file # List items in dir

# 5. PERMISSÕES
chmod +x path/to/file #executável

# 6. AJUDA
man echo # exibe um manual da função echo (se estiver disponível)

# 7. FUNÇÕES
#> 7.1 Declaração
functionName() {
	echo "Hello, World!"
	echo "external variable value: $myvar"
	echo "paramether 1: $1"
	echo "all paramethers $@"
}

#> 7.2 Chamada
functionName parametro1 parametro2 

# 8. EXIT STATUS
:<<'INFO'
 status 0 (zero) = success
 non-zero status = failure

 All builtin commands use this pattern
INFO

# 9. SHELL COMMANDS
command1 | command2 # pipe simples, o output de command1 é passado como input de command2

command1 |& command2 # pipe com redirecionamento implicito de erros, faz o mesmo que um pipe simples além de assegurar que o erro de command1 também seja passado como input de command2

# 10. CONDIÇÕES
# 10.1 True or False
test 1 = 2 ; echo $? # <test> é um validador de condições, <$?> é a variável na qual <test> salva seu output

test -d parametro1 # verifica se <parametro1> é um diretorio

test --help # para mais opções


