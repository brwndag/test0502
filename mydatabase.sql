-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql:3306
-- Tempo de geração: 06/02/2025 às 00:24
-- Versão do servidor: 8.0.41
-- Versão do PHP: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mydatabase`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_CLIENTES`
--

CREATE TABLE `TB_CLIENTES` (
  `id` int NOT NULL,
  `nomeCliente` text NOT NULL,
  `nomeFinal` text NOT NULL,
  `primeiroNome` text NOT NULL,
  `numero` int NOT NULL,
  `endereçoLINHA1` text NOT NULL,
  `enderecoLINHA2` text NOT NULL,
  `cidade` text NOT NULL,
  `estado` text NOT NULL,
  `caixaPostal` int NOT NULL,
  `país` text NOT NULL,
  `funcionarioQueVendeu` text NOT NULL,
  `limiteCredito` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_CLIENTES`
--

INSERT INTO `TB_CLIENTES` (`id`, `nomeCliente`, `nomeFinal`, `primeiroNome`, `numero`, `endereçoLINHA1`, `enderecoLINHA2`, `cidade`, `estado`, `caixaPostal`, `país`, `funcionarioQueVendeu`, `limiteCredito`) VALUES
(1, 'Roger Silva', 'Silva', 'Roger', 859333786, 'rua da gentileza, 355', 'BrasÍia, DF', 'BRASÍLIA', 'Distrito Federal', 80976406, 'Brasil', 'Sergio Moro', 10000),
(2, 'André Solimões', 'Solimões', 'André', 85488986, 'rua Goncalves neto, 678', 'Belo hoizonte, MG', 'Belo horizontes', 'MINAS GERAIS', 76303090, 'Brasil', 'Alexandre de Moraes', 250000);

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_DETALHEPEDIDO`
--

CREATE TABLE `TB_DETALHEPEDIDO` (
  `id` int NOT NULL,
  `codigoProduto` int NOT NULL,
  `quantidadePedido` int NOT NULL,
  `preçoIndividual` int NOT NULL,
  `linhaNumeroPedido` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_DETALHEPEDIDO`
--

INSERT INTO `TB_DETALHEPEDIDO` (`id`, `codigoProduto`, `quantidadePedido`, `preçoIndividual`, `linhaNumeroPedido`) VALUES
(1, 1, 1, 1800, 1),
(2, 2, 3, 65, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_ESCRITORIOS`
--

CREATE TABLE `TB_ESCRITORIOS` (
  `id` int NOT NULL,
  `cidade` text NOT NULL,
  `telefone` int NOT NULL,
  `enderecoLinha1` text NOT NULL,
  `enderecoLinha2` text NOT NULL,
  `estado` text NOT NULL,
  `país` text NOT NULL,
  `caixaPostal` int NOT NULL,
  `territorio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_ESCRITORIOS`
--

INSERT INTO `TB_ESCRITORIOS` (`id`, `cidade`, `telefone`, `enderecoLinha1`, `enderecoLinha2`, `estado`, `país`, `caixaPostal`, `territorio`) VALUES
(1, 'Fortaleza', 859999999, 'RUA DOS SONHOS, 401', 'VILA UNIÃO', 'Ceára', 'Brasil', 78889788, 'NACIONAL'),
(2, 'Fortaleza', 857898789, 'RUA DAS PITANGAS, 498', 'CENTRO', 'Ceára', 'Brasil', 92019788, 'NACIONAL');

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_FUNCIONARIOS`
--

CREATE TABLE `TB_FUNCIONARIOS` (
  `id` int NOT NULL,
  `ultimoNome` text NOT NULL,
  `primeiroNome` text NOT NULL,
  `extensao` text NOT NULL,
  `email` text NOT NULL,
  `codigoEscritorio` int NOT NULL,
  `reportarPara` text NOT NULL,
  `titulo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_LINHAPRODUTOS`
--

CREATE TABLE `TB_LINHAPRODUTOS` (
  `id` int NOT NULL,
  `descricaoTexto` text NOT NULL,
  `htmlDescriçao` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_LINHAPRODUTOS`
--

INSERT INTO `TB_LINHAPRODUTOS` (`id`, `descricaoTexto`, `htmlDescriçao`, `image`) VALUES
(1, 'Móveis', '<p>Os melhores móveis para sua casa', 'moveis.jpg'),
(2, 'cosméticos', '<p>Os melhores cosméticos para você', 'cosmeticos.jpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_ORDEMPEDIDOS`
--

CREATE TABLE `TB_ORDEMPEDIDOS` (
  `ordemPedidos_id` int NOT NULL,
  `dataPedido` date NOT NULL,
  `dataIdeal` date NOT NULL,
  `dataEnviado` date NOT NULL,
  `status` date NOT NULL,
  `comentários` text NOT NULL,
  `clienteNumero` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_PAGAMENTOS`
--

CREATE TABLE `TB_PAGAMENTOS` (
  `numCliente_id` int NOT NULL,
  `id` int NOT NULL,
  `dataPagamento` date NOT NULL,
  `quantia` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_PRODUTOS`
--

CREATE TABLE `TB_PRODUTOS` (
  `id` int NOT NULL,
  `nomeProduto` varchar(100) NOT NULL,
  `escalaProduto` text NOT NULL,
  `vendedorProduto` varchar(250) NOT NULL,
  `descriçãoProduto` varchar(250) NOT NULL,
  `qtdEstoque` int NOT NULL,
  `preço` int NOT NULL,
  `valorRecomendado` int NOT NULL,
  `Produto_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_PRODUTOS`
--

INSERT INTO `TB_PRODUTOS` (`id`, `nomeProduto`, `escalaProduto`, `vendedorProduto`, `descriçãoProduto`, `qtdEstoque`, `preço`, `valorRecomendado`, `Produto_id`) VALUES
(1, 'Cama queen', '1:1', 'Ortobom', 'Cama queen Ortobom', 120, 1800, 2000, 1),
(2, 'Sérum hialurónico', '1:1', 'Principia', 'Sérum hialurónico Principia 50ml', 250, 65, 70, 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `TB_CLIENTES`
--
ALTER TABLE `TB_CLIENTES`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `TB_DETALHEPEDIDO`
--
ALTER TABLE `TB_DETALHEPEDIDO`
  ADD PRIMARY KEY (`id`,`codigoProduto`);

--
-- Índices de tabela `TB_ESCRITORIOS`
--
ALTER TABLE `TB_ESCRITORIOS`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `TB_FUNCIONARIOS`
--
ALTER TABLE `TB_FUNCIONARIOS`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `TB_LINHAPRODUTOS`
--
ALTER TABLE `TB_LINHAPRODUTOS`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `TB_ORDEMPEDIDOS`
--
ALTER TABLE `TB_ORDEMPEDIDOS`
  ADD PRIMARY KEY (`ordemPedidos_id`);

--
-- Índices de tabela `TB_PAGAMENTOS`
--
ALTER TABLE `TB_PAGAMENTOS`
  ADD PRIMARY KEY (`numCliente_id`,`id`);

--
-- Índices de tabela `TB_PRODUTOS`
--
ALTER TABLE `TB_PRODUTOS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `linhaProduto` (`Produto_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `TB_CLIENTES`
--
ALTER TABLE `TB_CLIENTES`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `TB_ESCRITORIOS`
--
ALTER TABLE `TB_ESCRITORIOS`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `TB_FUNCIONARIOS`
--
ALTER TABLE `TB_FUNCIONARIOS`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `TB_LINHAPRODUTOS`
--
ALTER TABLE `TB_LINHAPRODUTOS`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `TB_PRODUTOS`
--
ALTER TABLE `TB_PRODUTOS`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `TB_ORDEMPEDIDOS`
--
ALTER TABLE `TB_ORDEMPEDIDOS`
  ADD CONSTRAINT `TB_ORDEMPEDIDOS_ibfk_1` FOREIGN KEY (`ordemPedidos_id`) REFERENCES `TB_DETALHEPEDIDO` (`id`);

--
-- Restrições para tabelas `TB_PAGAMENTOS`
--
ALTER TABLE `TB_PAGAMENTOS`
  ADD CONSTRAINT `TB_PAGAMENTOS_ibfk_1` FOREIGN KEY (`numCliente_id`) REFERENCES `TB_CLIENTES` (`id`);

--
-- Restrições para tabelas `TB_PRODUTOS`
--
ALTER TABLE `TB_PRODUTOS`
  ADD CONSTRAINT `TB_PRODUTOS_ibfk_1` FOREIGN KEY (`Produto_id`) REFERENCES `TB_LINHAPRODUTOS` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
