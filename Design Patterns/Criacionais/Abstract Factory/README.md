<h1>ABSTRACT FACTORY</h1>

  <h2>Intenção: </h2>
  
          Fornecer uma interface para criação de familias de objetos sem especificar suas classes concretas.
     
   <h2> Conhecido como : </h2>
   
            Kit
      
  <h2> Motivação: </h2>
  
    Considere um software que permite alterar o seu tema, imagine que poderiamos alterar a barra de rolagem , botões e outros.
    Cada tema tem sua construção , Um software não precisa ter seus widgets codificados rigidamente , por isso temos o Abstract Factory,
    ele fornece uma interface para criação dos widgets -WidgetFactory e uma classe abstrata. Assim os clientes(Quem chama-ra os métodos),
    não conheceram as classes concretas.
    
  <h2> Aplicabilidade: </h2>
  
    *Um Sistema deve Ser independete de como seus produtos são criados, compostos ou representados.
    *Um sistema deve ser configurado como um produto de uma familia de multiplos produtos.
    *uma familia de objetos-produtos for projetada para ser usada em conjuto e voce nescessita garantir esta restriação.
    *você quer fornecer uma biblioteca de classes de produtos e quer revelar somente suas interfaces , mas não sua implementação.
    
   <h2> Participantes: </h2>
  
          *Abstract Factory(WidgetFactory)
            -Declara uma interface para operações que criam objetos-produtos concretos.
           *Concrete factory(Motif Factory)
            -Implementa as operações que cria os objetos-produtos
           *Abstract Product(Window, ScrollBar)
            -Declara uma intterface para um tipo de objeto Produto
           *Concrete Product(Motif Window)
            -define um objeto produto a ser criado pela correspondete fabrica concreta
           *Client
            -Usa somente interfaces declaradas pelas classes abstract factory
      
   <h2>Colaborações:</h2>
   
    *Normalmente uma unica instancia de classe concrete factory e criada em tempo de execução, essa fabrica cria objetos-produtosque tem
      uma implementação particular  para criar diferentes objetos produtos.
     *Abstract Factory adia a criação dos objetos produtos para a suas subclasses Concrete Factory.
     
  <h2> Consequencias: </h2>
  
    *Ele Isola classes concretas.
    *Ele torna facil a troca de familia de produtos.
    *Ela promove a harmonia entre produtos.
    *É dificil de suportar nos tipos de produtos
    
  <h2>Implementação: </h2>
  
    *Podem ser Implementadas com singletons
    *Overriding em criação de produtos.
    *Definir fabricas extensiveis
    
     
     
    
      
