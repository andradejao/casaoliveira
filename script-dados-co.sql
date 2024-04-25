-- Selecionar o database
USE casaoliveira;

-- Exibir todos os database
SHOW DATABASES;

-- Exibir todas as tables de um database
SHOW TABLES;

-- Exibir a estrutura de uma table
DESCRIBE usuario;

-- Exibir os dados presentes na table usuario
-- Para isso se utiliza o comando select
SELECT * FROM usuario;

-- Cadastrar o primeiro usuario
INSERT INTO usuario(nomeusuario,senha,foto)
values("jedi",sha("joaobrabox"),"usuario.jpg");

-- Atualizar os dados da table usuario
-- Nesse caso, atualizar a senha para um novo valor
-- criptografado usando MD5 ou SHA
-- Pequeno teste
SELECT md5("abc123") FROM dual;
SELECT SHA1("abc123") FROM dual;

UPDATE usuario SET foto="jedi.jpg" WHERE idusuario=3;

-- Descrever e inserir dados na table contato
DESCRIBE contato;
INSERT INTO contato(telefoneresidencial,telefonecelular,email)
values("11-2092-6696","11-9445-7262","joaoandradeprime99@gmail.com");
SELECT * FROM contato;

-- Descrever e inserir dados na table endereco
DESCRIBE endereco;
INSERT INTO endereco(tipologradouro,logradouro,numero,complemento,bairro,cep,cidade,estado)
values("Rua","Utaro Kanai","175","Casa 2","Vila Jamil","05533-000","Ferraz de Vasconcelos","SP");
SELECT * FROM endereco;

-- Descrever e inserir dados na table cargo
DESCRIBE cargo;
INSERT INTO cargo(titulocargo,salario,departamento)
values("Supervisor","6000.0","RH");
SELECT * FROM cargo;

-- Descrever e inserir dados na table funcionario
DESCRIBE funcionario;
INSERT INTO funcionario(nomefuncionario,cpf,idcargo,expediente,idusuario,idendereco,idcontato)
values("João Andrade","2222222",2,"Segunda à Sexta. 8h às 18h",2,2,2);
SELECT * FROM funcionario;





