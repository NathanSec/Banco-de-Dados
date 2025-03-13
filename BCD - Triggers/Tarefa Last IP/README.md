# BCD-Tecnico
-- Desafio:
-- Crie um trigger para a tabela login. Cada vez que o campo 'last_ip'
-- for atualizado com um novo valor, o campo 'last_login' deve ser
-- atualizado também para a data e hora atual.

-- Dicas:
-- Função que retorna a data e hora atual -> current_timestamp();
-- Operador de comparação "não igual":  <>
-- Em operações de atualização, existe um registro 'new' e um 'old'
-- Utilize a estrutura condicional IF-THEN para testar o novo IP