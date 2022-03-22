<h1> Builder</h1>

<h3>Intenção</h3>
Separar a construção de um objeto complexo da sua representação de modo que o mesmo mode de construção
possa criar diferentes objetos.

<h3>Motivação</h3>
Um leitor RTF(Rich text format) deveria ser capaz de convertes RTF em varios formatos,O builder em um pattern 
excelente para isso , com ele conseguimos adicionar novas conversões sem modificar o Leitor.
Uma das solução e colocar uma método no meu RTFReader com uma funcionalidade TextConverter para poder por outros 
formatos de Texto. As subclasses TextConverter ficão responsaveis por fazer a conversão e exibir os dados.
    Assim teremos uma escalabilidade maior. As classes que Fazem a consversão são chamadas de builder e quem monta os 
    objetos são os directors, Lembrando que nos builder temos uma função de Product(Produto final) pois o client busca 
    o product direto dele.

<h3> Aplicabilidade </h3>

    *O algoritimo  de criação de um objeto complexo deve ser indepemdente das partes que compôem o objeto e de como elas são montadas.
    *o processo de construção dever permitir diferentes representações oara o objeto construido.


<h3>Pariticipantes</h3>

    #Builder : (TextCOnverter)
      -Especifica uma interface abstrata para criação das partes do objetos.
    #Concrete Builder: (ASCIIConverte, TeX, TextWidget)
        -Controi e monta partes do produto pela implementação da interface de builder.
        -define e mantem uma representação que cria.
        -fornece uma interface para recuperação do produto. 
    #Director(RTFReader)
        -constroi um objeto usando a interface do builder.
    #Product
        -Reresneta o objeto complexo em construção. Concrete builder controi a representação interna do produto e define o processo 
            pelo qual ele montado.
        -inclui classes que definem as partes constituentes, inclusive as interfaces para montagem das partes do resultado final.
        
<h3>Colaborações</h3>

    *O Cliente cria o objeto Director e o configura com o objeto builder desejado.
    *Director notifica o constructor sempre que uma parte do produto deve ser construida.
    *Builder trata solicitações do director e acresnceta partes ao produto.
    *O Cliente Recupera o produto do constructor.

<h3>Consequencias</h3>

    *Permite variar a representação do produto.
    *Isola o codigo para a construção e representação.
    *oferece um controle mais fino sobre o processo de construção.

<h3>Implementação</h3>

    *Interface de Montagem de Construção.
    *Por que não classes abstrata para produtos.
    *Métodos vazios por emissão em builder.
