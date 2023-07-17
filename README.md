Repositório com compilado das ferramentas na elaboração do relatório:
> Avaliação de método combinando testes baseados em modelos e testes dirigidos pelo comportamento para APIs
- Papyrus
	- Alterar a seguinte string xmlns:uml="http://www.eclipse.org/uml2/5.0.0/UML" no arquivo .uml
para xmlns:uml="http://www.eclipse.org/uml2/4.0.0/UML"
	- tutorial Moka (utlizadao para validar o modelo): https://wiki.eclipse.org/Papyrus/UserGuide/ModelExecution 
	- OBS: para poder gerar o estado Given na etapa de geração dos testes pelo skyfire é necessário que a transição inicial comece com initialize(CompletarComVariável).

- Restat
	- seguir o padrão do arquivos request.txt e response.txt como ilustado no artigo:  [2108.08209.pdf (arxiv.org)](https://arxiv.org/pdf/2108.08209.pdf) 
	- preencher o arquivo config.json com path da pasta que devem ser salvos os arquivos de saída e onde estão os arquivos request e response (formato txt) e swagger da aplicação.
	- requisitos: python 3
   		```
		python3 app.py
- Feature Service
	- API Rest utilizada como objeto de estudo, comandos para rodar o projeto:
	- requisitos: java 8 e maven
   		```
		mvn clean install -DskipTest
		mvn spring-boot:run
- Skyfire
	- projeto em maven 
		- requisitos: java 7 e maven
   		```
		Na IDE Eclipse selecionar Run as -> Java Application
