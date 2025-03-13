-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: locadora
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `clientes_com_locacao_atrasado`
--

DROP TABLE IF EXISTS `clientes_com_locacao_atrasado`;
/*!50001 DROP VIEW IF EXISTS `clientes_com_locacao_atrasado`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `clientes_com_locacao_atrasado` AS SELECT 
 1 AS `id_pessoa`,
 1 AS `nome_cliente`,
 1 AS `email`,
 1 AS `id_locacao`,
 1 AS `status_locacao`,
 1 AS `id_veiculo`,
 1 AS `cor`,
 1 AS `placa`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vwveiculos_disponiveis`
--

DROP TABLE IF EXISTS `vwveiculos_disponiveis`;
/*!50001 DROP VIEW IF EXISTS `vwveiculos_disponiveis`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vwveiculos_disponiveis` AS SELECT 
 1 AS `Código_Veiculo`,
 1 AS `Placa`,
 1 AS `Estado`,
 1 AS `cor`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `resumo_financeiro_por_filial`
--

DROP TABLE IF EXISTS `resumo_financeiro_por_filial`;
/*!50001 DROP VIEW IF EXISTS `resumo_financeiro_por_filial`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `resumo_financeiro_por_filial` AS SELECT 
 1 AS `id_filial`,
 1 AS `UF`,
 1 AS `receita_total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vwencargos_aluguel`
--

DROP TABLE IF EXISTS `vwencargos_aluguel`;
/*!50001 DROP VIEW IF EXISTS `vwencargos_aluguel`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vwencargos_aluguel` AS SELECT 
 1 AS `Número_Locacao`,
 1 AS `tipo`,
 1 AS `Valor_Seguro`,
 1 AS `descricao`,
 1 AS `Adicional_Cobranca`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `clientes_com_locacao_ativa`
--

DROP TABLE IF EXISTS `clientes_com_locacao_ativa`;
/*!50001 DROP VIEW IF EXISTS `clientes_com_locacao_ativa`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `clientes_com_locacao_ativa` AS SELECT 
 1 AS `id_pessoa`,
 1 AS `nome_cliente`,
 1 AS `email`,
 1 AS `id_locacao`,
 1 AS `status_locacao`,
 1 AS `id_veiculo`,
 1 AS `cor`,
 1 AS `placa`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vwdetahes_aluguel`
--

DROP TABLE IF EXISTS `vwdetahes_aluguel`;
/*!50001 DROP VIEW IF EXISTS `vwdetahes_aluguel`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vwdetahes_aluguel` AS SELECT 
 1 AS `Código`,
 1 AS `Status`,
 1 AS `Código_Veiculo`,
 1 AS `Código_Seguro`,
 1 AS `Nome_Cliente`,
 1 AS `Nome_Funcionário`,
 1 AS `CPF_Cliente`,
 1 AS `Placa_Veiculo`,
 1 AS `Tipo_Seguro`,
 1 AS `Valor_Seguro`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `clientes_com_locacao_atrasado`
--

/*!50001 DROP VIEW IF EXISTS `clientes_com_locacao_atrasado`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clientes_com_locacao_atrasado` AS select `pessoa`.`id_pessoa` AS `id_pessoa`,`pessoa`.`nome` AS `nome_cliente`,`pessoa`.`email` AS `email`,`locacao`.`id_locacao` AS `id_locacao`,`locacao`.`status` AS `status_locacao`,`veiculo`.`id_veiculo` AS `id_veiculo`,`veiculo`.`cor` AS `cor`,`veiculo`.`placa` AS `placa` from ((`locacao` join `pessoa` on((`locacao`.`id_cliente` = `pessoa`.`id_pessoa`))) join `veiculo` on((`locacao`.`id_veiculo` = `veiculo`.`id_veiculo`))) where (`locacao`.`status` = 'Atrasado') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwveiculos_disponiveis`
--

/*!50001 DROP VIEW IF EXISTS `vwveiculos_disponiveis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwveiculos_disponiveis` AS select `v`.`id_veiculo` AS `Código_Veiculo`,`v`.`placa` AS `Placa`,`v`.`status` AS `Estado`,`v`.`cor` AS `cor` from `veiculo` `v` where (`v`.`status` = 'Disponível') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `resumo_financeiro_por_filial`
--

/*!50001 DROP VIEW IF EXISTS `resumo_financeiro_por_filial`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `resumo_financeiro_por_filial` AS select `filial`.`id_filial` AS `id_filial`,`filial`.`UF` AS `UF`,sum(`faturamento`.`faturamento_filial`) AS `receita_total` from ((`locacao` join `faturamento` on((`locacao`.`id_filial` = `faturamento`.`id_filial`))) join `filial` on((`locacao`.`id_filial` = `filial`.`id_filial`))) group by `filial`.`id_filial`,`filial`.`UF` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwencargos_aluguel`
--

/*!50001 DROP VIEW IF EXISTS `vwencargos_aluguel`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwencargos_aluguel` AS select `l`.`id_locacao` AS `Número_Locacao`,`s`.`tipo` AS `tipo`,`s`.`valor` AS `Valor_Seguro`,`t`.`descricao` AS `descricao`,`t`.`valor` AS `Adicional_Cobranca` from ((`locacao` `l` join `seguro` `s` on((`l`.`id_seguro` = `s`.`id_seguro`))) join `tipo_cobranca` `t` on((`l`.`id_tipo_cobranca` = `t`.`id_tipo_cobranca`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `clientes_com_locacao_ativa`
--

/*!50001 DROP VIEW IF EXISTS `clientes_com_locacao_ativa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clientes_com_locacao_ativa` AS select `pessoa`.`id_pessoa` AS `id_pessoa`,`pessoa`.`nome` AS `nome_cliente`,`pessoa`.`email` AS `email`,`locacao`.`id_locacao` AS `id_locacao`,`locacao`.`status` AS `status_locacao`,`veiculo`.`id_veiculo` AS `id_veiculo`,`veiculo`.`cor` AS `cor`,`veiculo`.`placa` AS `placa` from ((`locacao` join `pessoa` on((`locacao`.`id_cliente` = `pessoa`.`id_pessoa`))) join `veiculo` on((`locacao`.`id_veiculo` = `veiculo`.`id_veiculo`))) where (`locacao`.`status` = 'Em Andamento') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwdetahes_aluguel`
--

/*!50001 DROP VIEW IF EXISTS `vwdetahes_aluguel`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwdetahes_aluguel` AS select `l`.`id_locacao` AS `Código`,`l`.`status` AS `Status`,`l`.`id_veiculo` AS `Código_Veiculo`,`l`.`id_seguro` AS `Código_Seguro`,`c`.`nome` AS `Nome_Cliente`,`f`.`nome` AS `Nome_Funcionário`,`d`.`cpf` AS `CPF_Cliente`,`v`.`placa` AS `Placa_Veiculo`,`s`.`tipo` AS `Tipo_Seguro`,`s`.`valor` AS `Valor_Seguro` from (((((`locacao` `l` join `pessoa` `c` on((`l`.`id_cliente` = `c`.`id_pessoa`))) join `pessoa` `f` on((`l`.`id_funcionario` = `f`.`id_pessoa`))) join `veiculo` `v` on((`l`.`id_veiculo` = `v`.`id_veiculo`))) join `dados_pessoais` `d` on((`c`.`id_pessoa` = `d`.`id_pessoa`))) join `seguro` `s` on((`l`.`id_seguro` = `s`.`id_seguro`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping routines for database 'locadora'
--
/*!50003 DROP PROCEDURE IF EXISTS `cadastrar_novo_aluguel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cadastrar_novo_aluguel`(
    IN p_id_veiculo INT,
    IN p_id_filial INT,
    IN p_id_seguro INT,
    IN p_id_cliente INT,
    IN p_id_funcionario INT,
    IN p_data_retirada DATE,
    IN p_data_devolucao DATE,
    IN p_id_tipo_cobranca INT
)
BEGIN
    INSERT INTO locacao (id_veiculo, id_filial, id_seguro,  id_cliente, id_funcionario, data_retirada, data_devolucao, id_tipo_cobranca)
    VALUES (p_id_veiculo, p_id_filial, p_id_seguro,  p_id_cliente, p_id_funcionario, p_data_retirada, p_data_devolucao, p_id_tipo_cobranca);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-28 13:17:18
