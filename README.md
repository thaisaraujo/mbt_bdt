Repositório com compilado das ferramentas na elaboração do relatório:
> Avaliação de método combinando testes baseados em modelos e testes dirigidos pelo comportamento para APIs
- Papyrus
	- Alterar a seguinte string xmlns:uml="http://www.eclipse.org/uml2/5.0.0/UML" no arquivo .uml
para xmlns:uml="http://www.eclipse.org/uml2/4.0.0/UML"

- Restat
	- seguir o padrão do arquivos request.txt e response.txt como ilustado no artigo:  [2108.08209.pdf (arxiv.org)](https://arxiv.org/pdf/2108.08209.pdf) 
	- requisitos: python.
- Feature Service
	- API Rest utilizada como objeto de estudo, comandos para rodar o projeto:
	- requisitos: java 8 e maven
   		```
		mvn clean install -DskipTest
		mvn spring-boot:run
