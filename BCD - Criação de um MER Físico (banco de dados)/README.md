# BCD-Tecnico
Desenvolvimento de Modelo de Entidade-Relacionamento e Banco de Dados utilizando MySQL Workbench
Nesta tarefa, você aplicará seus conhecimentos de modelagem e design de banco de dados usando o MySQL Workbench. Você criará o Modelo de Entidade-Relacionamento Lógico (diagrama) e Físico (banco de dados) com base em um determinado modelo conceitual descritivo. Além disso, você preencherá as entidades com dados de teste, criará visualizações para cada tabela e seus relacionamentos, implementará triggers e desenvolverá stored procedures para adicionar funcionalidade útil ao modelo.

Entendendo o Modelo Conceitual
O modelo conceitual é composto por várias entidades, cada uma com atributos e relações específicas. Inclui entidades como «pessoa», «veiculo», «locacao», «tipo_pessoa», «filial», «marca», «modelo», «categoria», «faturamento», «tipe_cobranca», «seguro», «endereco», «telefone», «dados_pessoais» e «dados_financeiros». Cada entidade tem seu próprio conjunto de atributos e relacionamentos com outras entidades.

Criando o Modelo de Entidade-Relacionamento Lógico e Físico
Modelo Lógico Entidade-Relacionamento: Comece criando um diagrama lógico que represente as entidades, seus atributos e as relações entre elas. Use as ferramentas disponíveis no MySQL Workbench para projetar visualmente o modelo lógico.

Modelo de Entidade-Relacionamento Físico: Quando o modelo lógico estiver concluído, converta-o em um modelo de banco de dados físico. Defina os tipos de dados para cada atributo, chaves primárias e estrangeiras e quaisquer restrições necessárias.

Preenchendo entidades com dados de teste: Depois de criar o modelo físico, preencha as entidades com dados de teste suficientes. Você pode gerar esses dados manualmente ou usar ferramentas como https://generatedata.com/generator.


Entidades
`pessoa`: Uma pessoa pode ser um cliente ou funcionário, identificado pelo `tipo_pessoa`.

`veiculo`: Um veículo tem um modelo, uma categoria e uma marca, identificados com o id de cada uma das entidades correspondentes.

`locacao`: Uma locação tem a identificação de um cliente (pessoa) que faz a locação, um funcionário (pessoa) que registra a locação, uma filial responsável e um veículo que será alugado.

`tipo_pessoa`: Contém a descrição dos tipos 'cliente' e 'funcionário'.

`filial`: Registra as filiais da locadora em diversas localidades.

`marca`: Registra as marcas dos veículos.

`modelo`: Registra os modelos dos veículos.

`categoria`: Registra as categorias de locação dos veículos.

`faturamento`: Registra a cobrança da locação e de outras relacionadas. Uma cobrança deve identificar à qual locação pertence e pode ser de vários tipos, por exemplo, 'locação', 'seguro', 'taxa de limpeza', 'combustível', 'reparos', etc.

`tipo_cobranca`: Registra os tipos das cobranças da tabela `faturamento`.

`seguro`: registra o seguro contratado e possui a identificação da locação e da cobrança correspondente.

`endereco`, `telefone`, `dados_pessoais` e `dados_financeiros`: registram os endereços, telefones, dados pessoais e dados financeiros das pessoas, sejam clientes ou funcionários (que também podem alugar, com desconto). Possuem a identificação da pessoa à qual corresponde os dados.
Criando views
Crie views para cada tabela e seus relacionamentos para fazer sentido dentro do contexto do modelo de negócios de uma locadora de veículos. Os seguintes modos de exibição devem ser criados:

Visualização de detalhes do aluguel: Visualize os detalhes de cada locação, incluindo informações do cliente, detalhes do veículo e status do aluguel.
Veículos Disponíveis: Exibe uma visão de todos os veículos disponíveis para aluguel.
Encargos de aluguel: Visualize os diferentes tipos de encargos associados ao aluguel, como taxas de locação, seguros, taxas de limpeza, taxas de combustível e reparos, para cada locação de cada cliente.
Clientes com Locação Ativa: Exibe uma visão dos clientes que atualmente têm locações ativas.
Clientes com Locação Atrasada: Visualize clientes que possuem aluguéis vencidos.
Resumo Financeiro por Filial: Crie uma exibição que resuma os aspectos financeiros de cada filial quanto a receita total com as locações.
Implementando triggers
Implemente os seguintes triggers para adicionar funcionalidade ao banco de dados:

Status do Veículo: Crie um trigger que atualize o status de um veículo para 'alugado' quando for alugado e volte para 'disponível' quando for devolvido.
Status de Locação: Implemente um trigger que identifique o status de uma locação como 'ativo', 'finalizado', 'atrasado' ou 'encerrado com sinistro'.
Taxa de Limpeza Adicional: Crie um trigger que lança uma taxa de limpeza para a entidade de faturamento quando um veículo devolvido requer limpeza adicional.
Desconto de funcionário: Implemente um trigger que aplique um desconto de 20% no aluguel de qualquer categoria de veículo para funcionários.
Desenvolvendo stored procedures
Desenvolva os seguintes SPs para aprimorar a funcionalidade do banco de dados:

Cadastrar Novo Aluguel: Crie um SP que permita o cadastro de uma nova locação no sistema, incluindo dados do cliente, informações do veículo, funcionário responsável, filial, data de locação e outros detalhes relevantes.
Excluir pessoas com dados relacionados: Desenvolva SPs para excluir pessoas que tenham endereço, número de telefone, dados pessoais e financeiros em outras tabelas.
Cálculo da Cobrança Total: Crie um SP que retorne o valor total da cobrança de cada aluguel, incluindo taxas e seguro.