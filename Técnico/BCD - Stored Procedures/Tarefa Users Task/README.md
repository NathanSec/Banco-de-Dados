# BCD-Tecnico
1. Crie uma nova tabela chamada `UserTasks` com as seguintes colunas:
   - `task_id`: INT, AUTO_INCREMENT, PRIMARY KEY
   - `user_id`: INT, NOT NULL, FOREIGN KEY para a tabela `Users`
   - `task_description`: VARCHAR(255), NOT NULL
   - `task_status`: ENUM('pending', 'completed'), NOT NULL, DEFAULT 'pending'

2. Crie três stored procedures adicionais com os seguintes objetivos:
   a) Uma SP para criar uma nova tarefa associada a um usuário específico na tabela `UserTasks`.
   b) Uma SP para listar todas as tarefas associadas a um usuário específico na tabela `UserTasks`.
   c) Uma SP para atualizar o status de uma tarefa específica na tabela `UserTasks`.

3. Após criar as SPs e a tabela adicional, teste cada uma das stored procedures utilizando casos de teste relevantes para garantir que estão funcionando conforme o esperado.