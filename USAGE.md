# Instruções para atualização, validação e publicação do conjunto de dados

## 1- Criação de usuário

Para o envio do conjunto de dados para o Portal de Dados Abertos do Estado de Minas Gerais - PDA/MG (https://dados.mg.gov.br/) será necessária a criação de uma conta no Github (ferramenta utilizada pela equipe da Diretoria Central de Transparência Ativa - DTA para armazenamento dos conjunto dados) e no Portal de Dados Abertos.

#### Github

  - Acesse o Github através do [link](https://github.com/signup?source=login) e siga os passos para a criação de uma conta.
  - O nome do usuário deverá ser apenas letras, sem caracteres especiais e números.
  - Após criação do usuário informar a equipe da DTA os usuários para que possamos vinculá-los ao repositório.

#### Portal de Dados Abertos

Preencher e enviar para a DTA o formulário de criação de usuário disponível no SEI:

- Tipo de Processo: Governo Aberto, Transparência e Controle Social
- Tipo de Documento: CGE- Cadastro de Usuário no Portal de Dados Abertos

#### Identificação do usuário para atualização

Para identificação do usuário responsável pela atualização dos dados no PDA/MG será necessário, uma única vez, informar o usuário responsável:

- No Portal de Dados Abertos clique no nome do usuário e copie a chave da API (essa  chave é individual para cada usuário).
- No repositório do Acordo Judicial dentro do GitHub clique em  em *Settings* e em seguida clique em *Secrets* e em *Actions*.
- Clique em  *New repository secrets* e insira o nome do usuário no campos *Name* **CKAN_KEY_NOMEUSUARIO** e a chave da API no campo *Value* e clique em *Add secret*.


## 2- Atualização e validação no GitHub

#### 2.1 Atualização

Sempre que os dados forem alterados as novas informações devem ser atualizadas no repositório do GitHub.

**Premissas:**

- Cada projeto deve ser alocado em uma linha;
- A ordem das colunas não podem ser alteradas;
- Salve o arquivo com o nome **projetos_acordo_judicial_reparacao_vale**
- O arquivo deve ser salvo no formato .xlxs

#### 2.2 Upload

Após a atualização dos dados, acesse a sua conta do [Github](https://github.com/login) e em seguida acesse o repositório do conjunto de dados por meio do link [Repositório - acordo-judicial-reparacao-vale](https://github.com/transparencia-mg/acordo-judicial-reparacao-vale/tree/main/upload).

- Na pasta **/upload/** clique em *Add file* (Adicionar arquivo) e em seguida clique em *upload files* (upload de arquivos*);

![](static/upload.png)

- Arraste o arquivo ou clique em *choose your files* para selecionar o arquivo no computador o local.

![](static/arrastar.png)

- Após o arquivo ser carregado digite na área *Commit changes* uma mensagem curta e significativa que descreva a alteração feita no arquivo e clique no botão verde *Commit changes*                    
 ***Exemplo***: *Atualiza arquivo conforme a Deliberação XX.*

![](static/commit.png)

## 3. Validação

Após realizar o *commit* do arquivo é necessário verificar se o mesmo foi validado, ou seja, se o arquivo está de acordo com as regras de validação estabelecidas.

- Na página do [Repositório](https://github.com/transparencia-mg/acordo-judicial-reparacao-vale) clique em *Actions*. O campo *All workflows* irá apresentar todos os *commits* realizados no repositório.
- Clique no *commit* desejado e verifique o fluxo de validação.

![](static/actions.png)

- Se o processo for exibido como concluído em todas as etapas, apenas verifique no Portal de Dados Abertos se os dados alterados realmente foram carregados.

![](static/fluxo-validacao.png)

- Se aparecer algum problema durante a validação, siga os passos abaixo:

  - Clique em *validate* e no link que apresenta o erro de validação;
  - Em seguida verifique qual o erro apresentado e faça as correções necessárias.

![](static/erro.png)

---

![](static/erro-link.png)

-------

![](static/erro-frictionless.png)


* Faça novamente o *upload* do arquivo corrigido e repita os passos executados anteriormente.
