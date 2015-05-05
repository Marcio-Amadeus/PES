-- Classe(tabela) Pessoa com variaveis inicializadas.

local Pessoa = {nome = 'João', idade = 30, nacionalidade = 'brasileira'}

-- Construtor de Pessoa.
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

local cliente = Pessoa:new()

local fornecedor = Pessoa:new{nome = 'Luis', idade = 21}

-- Criando um objeto similar mas sem usar a classe.

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

local sociedade = {fornecedor, funcionario, cliente, funcionario.filho[1],
funcionario.filho[2], cachorro}

-- Imprime dados dos objetos(tabelas) criados. Observe que
-- este metodo tambem e usado para apresentar as informacoes
-- do cachorro, que apesar de nao ser uma pessoa, possui
-- todos os atributos tratados neste metodo.

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
