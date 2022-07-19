<h1>Bridge</h1>
  
<h2>Intenção:</h2>
<p> Desacoplar uma abstração da sua implementação de modo que as duas possam variar.</p> 

<h2>Conhecido também como:</h2>
Handle/body

<h2>Motivação></h2>
<p>Quando criamos objetos que ultiliza herança para fazer derterminadas funcionalidades , nossos código fica enjessado , não conseguiriamos aplicar determinanda
flexibilidade nessa herança. o Bridge vem para Resolver Esse problema conseguimos desacomplar essa herança e podemos ter essa variação e flexibilidade nas classes.</p>

<h2>Aplicabilidade:</h2>
*Use quando:
  -Deseja evitar um vinculo permanente da abstração com sua implementação. Isso pode ocorrer quando a implementação pode ser alterada em tempo de execução.
  -Tanto suas abstração e as implementações precisam ser extendidas por meio das subclasses.
  -Quando a mudança da abstração do cliente não poder ter impacto.
  -Desejar compartilhar uma implementação entre múltiplos objetos.
  
 <h2>Participantes:</h2>
  *Abstraction:
    -Define a interface de Abstração.
    -mantém uma refêrencia para um objeto do tipo implementor.
   *Implementor:
    -Estende a classe definida por abstraction.   
   *Refined Abstraction:
    -Define uma interface para as classes de implementação. Essa interface não precisa corresponder extamente á interface de abstraction; de fato
    ,as duas interfaces podem ser bem diferente. A interface de implementor fornece somente operações primitivas e abstraction define operação de nivel 
    mais alto baseada nessas primitivas.
     *ConcreteImplementor:
      -Implementa a interface de implementor define suas implementação concreta.
    
 <h2>Colaborações:</h2>
 Abstraction repassa as solicitações dos clientes para seu objeto implementor.
 
 <h2>Consequências:</h2>
 -Desacopla a interface da implementação.
 -Extensibilidade Melhorada.
 -OCultação da implementação dos clientes.
 
 <h2>Implemetação:</h2>
 Considere alguns casos quando:
  -Há somente um implementor:Quando há somente uma implementação , não e nescessario criar uma classe abstrata de implementor isso e um caso degenerado
  do padrão bridge. Mas mesmo assim caso você queira que a mudança não afete o cliente e Muito útil de se ultilizar.
  -Implementado de forma correta:Como , quando e onde você decide qual classe implementor usar, quando se existe mais de uma?. Se abstraction tem conhecimento de todas
  as classes conctreteImplementor,Então pode se instanciar ela atrávez do constructor ultilizando os parâmetros.
  -Compartilhando Implementors:Coplien Ilustra Com expressão Handle/body em c++. Ele ultilizar um contador de refêrencias , ultiliza o body para armazenar o contador e 
  a handle para incrementar e decrementar.  assim facilitando o compartilhamente de objetos.
  -Ultilizando Herança Múltipla.
 
 
