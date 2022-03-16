## MANUAL PARA INSERÇÃO, VALIDAÇÃO E ATUALIZAÇÃO DO CONJUNTO DE DADOS

Saiba como contribuir com a documentação deste conjunto de dados!

A documentação deste conjunto de dados está sendo feita de forma aberta e colaborativa no [Github](https://github.com/). Existem duas alternativas para enviar sua contribuição:

#### 1. Criação de usuário:

Para o envio do conjunto de dados para o Portal de Dados.MG será necessária a criação de uma conta no Github - ferramenta utilizada pela equipe da DTA para armazenamento dos conjunto dados.

1. Acesse o link: [Github](https://github.com/signup?source=login) e siga os passos para a criação de uma conta.


#### 2. Conjunto de Dados:

Após a criação e validação da conta no Github (verificação da conta no seu e-mail) o próximo passo é a preparação dos arquivos que farão parte do repositório.

#### Arquivo 1 - Conjunto de Dados

Esse arquivo em formato de tabela é o conjunto de dados a ser publicado no Portal Dados.MG.

No caso do conjunto de dados para o Acordo Judicial, os dados devem seguir a seguinte estrutura:

| codigo_projeto | projeto | anexo | valor_projeto |
|----------------|---------|-------|---------------|
|                |         |       |               | 
|                |         |       |               | 
|                |         |       |               | 

##### Importante:
- Cada projeto deve ser alocado em uma linha
- Não altere a ordem das colunas
- Salve o arquivo com o nome **projeto_acordo_judicial_vale**
- Salve o arquivo preferencialmente em formato csv, ou em formato xlxs


#### Arquivo 2 - Nome e Descrição das Colunas

Esse arquivo também em formato de tabela é a descrição das colunas do conjunto de dados e também será utilizado pela equipe da DTA para publicar e validar o conjunto de dados.

No caso do conjunto de dados para o Acordo Judicial, deverão ser enviadas uma descrição sobre o conteúdo de cada coluna do arquivo 1. 


| nome_coluna     | descricao | 
|-----------------|-----------|
| codigo_projeto  |           |
| projeto         |           |
| anexo           |           |
| valor_projeto   |           |


##### Importante:
- Cada descrição deve ser alocado em uma linha
- Não altere a ordem das colunas
- Salve o arquivo com o nome **datapackage**
- Salve o arquivo preferencialmente em formato csv, ou em formato xlxs


#### 3. Upload dos arquivos 1 e 2:

Após a finalização dos arquivos 1 e 2, acesse a sua conta do [Github](https://github.com/login) e em seguida acesse o repositório do conjunto de dados por meio do link [Repositório - acordo-judicial-reparacao-vale](https://github.com/transparencia-mg/acordo-judicial-reparacao-vale/tree/61/melhoria-especificacao/data-raw):

#### Passos para o Upload dos arquivos:

1. No GitHub.com, navegue até a página principal do repositório.

2. Acima da lista de arquivos, usando o menu suspenso clique em **Adicionar arquivo** e em seguida clique em **upload de arquivos**.

![](static/upload)


3. Arraste e solte o arquivo 1 ou escolha no seu computador o local onde o arquivo 1 está salvo e adiciona ao repositório.

![](static/arrastar)


4. No final da página, digite uma mensagem na área **commit changes** curta e significativa que descreva a alteração feita no arquivo. Exemplo: adiciona arquivo de conjunto de dados.

![](static/commit)


5. Clique em Commit changes (Fazer commit das alterações).

![](static/botaocommit)


6. Verifique se o arquivo 1 foi inserido corretamente e em seguida realize o mesmo procedimento para o arquivo 2.


#### 4. Validação dos Arquivos:


#### 5. Atualização dos Arquivos:

Sempre que os dados do conjunto de dados forem alterados ou atualizados, as novas informações devem ser atualizadas no conjunto de dados. 

Para isso, siga os dois procedimentos abaixo:



##### passo 1 - ATUALIZANDO O ARQUIVO

1. Acesse o repositório do conjunto de dados da sua conta do Github, por meio do link [Repositório - acordo-judicial-reparacao-vale](https://github.com/transparencia-mg/acordo-judicial-reparacao-vale/tree/61/melhoria-especificacao/data-raw).

2. Clica no arquivo que deseja alterar e faça o download do arquivo.

3. Em seu computador, altere os dados da planilha.

4. Após alterar os dados, realize o Upload do arquivo seguindos os passos do item 3.


##### passo 2 - INFORMANDO AS ALTERAÇÕES REALIZADAS

Após realizar o Upload do arquivo, será necessário informar qual alteração foi realizada nesse conjunto de dados, por meio do seguindo procedimento:

1. Para isso, acesse o arquivo [CHANGELOG.md](https://github.com/transparencia-mg/acordo-judicial-reparacao-vale/blob/61/melhoria-especificacao/CHANGELOG.md) e informe as alterações que foram realizadas no arquivo.

2. Clique na imagem do lápis

![](static/caneta)


3. Na próxima tela, insira as informações referentes as atualizações realizadas:
- inclua o mês da alteração - utilize: ** ### Mês/Ano **
- para cada alteração, utilize o travessão: * - *

4. Ao finalizar as alterações, role até o final da página, digite uma mensagem na área **commit changes** curta e significativa que descreva a alteração feita no arquivo. Exemplo: altera informações referentes ao mês/ano.

![](static/commit)


5. Clique em Commit changes (Fazer commit das alterações).

![](static/botaocommit)


6. Verifique se as informações foram alteradas no arquivo, caso deseje corrigir ou alterar outras informações, realize o mesmo procedimento descrito acima. 
