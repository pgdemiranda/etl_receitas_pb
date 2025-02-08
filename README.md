# ETL Execução da Receita do Estado da Paraíba
## Sumário
### Objetivos

# Dicionário de Dados
As descrições dos dados a seguir foram disponibilizadas pelo própria Plataforma de Dados Abertos do Estado da Paraíba. 
Buscamos os dados da Execução Orçamentária e enriquecemos esse conjunto com os dados das Unidades Gestoras e Fontes de Recursos, como foram de obter maior legibilidade para o conjunto de dados.

## Receitas - Execução
| CAMPO                               | TIPO DE CONTEÚDO | TAMANHO | DESCRIÇÃO                                                     |
|-------------------------------------|------------------|---------|---------------------------------------------------------------|
| EXERCICIO                           | Inteiro          |         | Exercício fiscal, o ano da receita                            |
| MES                                 | Inteiro          |         | O mês de arrecadação da receita                               |
| CODIGO_UNIDADE_GESTORA              | Texto            |       6 | Código SIAF do Órgão (Unidade Gestora)                        |
| CODIGO_ITEM_RECEITA                 | Texto            |       9 | Código completo do item da receita                            |
| NOME_ITEM_RECEITA                   | Texto            |     200 | Descrição do item da receita                                  |
| CODIGO_FONTE_RECURSO                | Texto            |       5 | Código da Fonte de Recurso                                    |
| VALOR_MES                           | Numérico         |    18,2 | Importância arrecadada no mês                                 |
| VALOR_ATE_MES                       | Numérico         |    18,2 | Importância arrecadada no mês anterior                        |
| CODIGO_CATEGORIA_RECEITA            | Texto            |       1 | Código da categoria econômica da receita                      |
| CODIGO_ORIGEM_RECEITA               | Texto            |       1 | Código da origem da receita                                   |
| CODIGO_ESPECIE_RECEITA              | Texto            |       1 | Código da espécie da receita                                  |
| CODIGO_RUBRICA_RECEITA              | Texto            |       1 | Código da rubrica da receita                                  |
| CODIGO_ALINEA_RECEITA               | Texto            |       2 | Código da alínea da receita                                   |
| CODIGO_SUBALINEA_RECEITA            | Texto            |       2 | Código da sub alínea da receita                               |
| RECEITA_COVID                       | Lógico           |         |                                                               |

RECEITA_COVID

## Unidade Gestora
| CAMPO                               | TIPO DE CONTEÚDO | TAMANHO | DESCRIÇÃO                                                     |
|-------------------------------------|------------------|---------|---------------------------------------------------------------|
| EXERCICIO                           | Inteiro          |         | Exercício fiscal, o ano da despesa                            |
| CODIGO_UNIDADE_GESTORA              | Texto            |       6 | Código SIAF do Órgão (Unidade Gestora)                        |
| SIGLA_UNIDADE_GESTORA               | Texto            |      20 | Sigla do Órgão (Unidade Gestora)                              |
| NOME_UNIDADE_GESTORA                | Texto            |     100 | Nome do Órgão (Unidade Gestora)                               |
| TIPO_ADMINISTRACAO_UNIDADE_GESTORA  | Texto            |       1 | Identificação do Tipo de Administração da Unidade Gestora     |

## Fonte de Recursos
| CAMPO                               | TIPO DE CONTEÚDO | TAMANHO | DESCRIÇÃO                                                     |
|-------------------------------------|------------------|---------|---------------------------------------------------------------|
| EXERCICIO                           | Inteiro          |         | Exercício fiscal, o ano da despesa                            |
| CODIGO_FONTE_RECURSO                | Texto            |       5 | Código da Fonte de Recurso                                    |
| NOME_FONTE_RECURSO                  | Texto            |     150 | Denominação da Fonte de Recurso                               |

# Tecnologias Utilizadas
- Python 3.12
    - Poetry (requisição e gerenciamento de bibliotecas em Python)
    - Pandas
    - Requests

- Infraestrutura
    - Docker e Docker Compose
    - Terraform
    - PostgreSQL
    - Big Query 

- Orquestramento
    - Apache Airflow

- Transformação
    - dbt

- Relatório
    - Looker