-- Classe(tabela) Pessoa com variaveis inicializadas.

local Pessoa = {nome = 'João', idade = 30, nacionalidade = 'brasileira'}

-- Construtor de Pessoa.
-- atribue name a pessoa, sua idade e nacionalidade e 
-- seta o index pra pessoa.
-- retorna um objeto do tipo pessoa com os atributos listados anteriormente


function Pessoa:new(pessoa)
pessoa = pessoa or {}
pessoa.nome = pessoa.nome or self.nome
pessoa.idade = pessoa.idade or self.idade
pessoa.nacionalidade = pessoa.nacionalidade or self.nacionalidade
setmetatable(pessoa, self) ; self.__index = self
return pessoa
end


-- Criando dois objetos de Pessoa usando o construtor,
-- o primeiro sem passagem de parametro para o construtor
-- e o segundo com passagem de parâmetros.
-- nesse momento ele cria um objeto do tipo pessoa, um com 
-- minemonico a variavel cliente e outro com fornecedor.


local cliente = Pessoa:new()

local fornecedor = Pessoa:new{nome = 'Luis', idade = 21}

-- aqui eu mostro o conceito de eranca em Lua
-- com isso mostro a facilidade de programar na mesma
-- uma vez que instanciar a classe e utiliza-la foi de pouco custo
-- alem de nao verboso.
local gerente = Pessoa:new{nome = 'Luis', idade = 21, nacionalidade = brasileira}

-- Criando um objeto similar mas sem usar a classe.
-- nesse caso estou criando funcionario sem usar classe, 
-- isso serve como forma de mostrar a flexibilidade do scrpt Lua.

local funcionario = {nome = 'Robert', nacionalidade = 'americana',
idade = 42, cargo = 'gerente',
filho = {
{nome = 'Fernando', idade = 18, nacionalidade = 'mexicana'},
{nome = 'Mônica', idade = 13, nacionalidade = 'japonesa'}
} 
}

-- Criando um cachorro, nao e uma pessoa mas possui
-- alguns atributos iguais.

local cachorro = {dono = 'Fernando', nome = 'Rex', idade = '5',
nacionalidade = 'brasileira'}

-- Tabela sociedade vai armazenar todas as pessoas e o cachorro.
 
-- aqui ele varre ( lista)
local sociedade = {fornecedor, funcionario, gerente, cliente, funcionario.filho[1],
funcionario.filho[2], cachorro}

-- Imprime dados dos objetos(tabelas) criados. Observe que
-- este metodo tambem e usado para apresentar as informacoes
-- do cachorro, que apesar de nao ser uma pessoa, possui
-- todos os atributos tratados neste metodo.
-- essa parte vai listar todas as pessoas e o cachorro.

function showPessoa(pessoa)
print('--------------------------------------')
print('Nome: '..pessoa.nome)
print('Idade: '..pessoa.idade)
print('Nacionalidade: '..pessoa.nacionalidade)
end

function initialize() -- Varre a tabela sociedade.
for i=1, table.getn(sociedade), 1 do
showPessoa(sociedade[i])
end
end

initialize()

-- Inicia a aplicação.
