<h1> Factory Methods </h1>

<h3>Intenção </h3>
Definir uma interface para criar um objeto, mas deixar as subclasses decidirem que classe instanciar. o Factory Methods Permite adir a instanciação para subclasses.

<h3> Também conhecido como:</h3>
    virtual constructor.

<h3> Motivação </h3>
    Os frameworks usam classes abstratas para manter um relacionamento entre objetos. pense em um framewok que pode apresentar varios documentos ,
    Temos a classe Application e document. As duas classes são abstratas e os cliente devem prover as subclasses para realizar suas implementações.Por exemplo
    para criar uma aplicação de desenho , definimos as classses DrawingApplication e DrawingDocument. A classes application e responsavel pela adimistração de documente ir acriar conforme o exigido - 
    quando o usúario seleciona Abrir - Salvar - Modificar.
        Uma vez que a subclasse document  a ser instanciada é propria da aplicação especifica, a classe application não pode prever subclasses.
       o Factory Method oferece uma solução . Ele encapsula o conhecimento a subclasses de document que deve ser criada e move este conhecimento par fora do framework.
    As subclasses de application redefinem uma operação abstrata CreateDocument em appplication para retornar as subclasses.

<h3>  Aplicabilidade </h3>

    *uma classes não pode antecipar a classes objetos que devem criar.
    *uma classe quer que suas subclasses especifiquem os objetos que criam.
    *Classes delegam responsabilidade para uma dentre varias subclasses que auxiliares, e você
        quer localizar o conhecimento de qual subclasse auxiliar e delegada.

<h3> Participantes </h3>

    -Product : (Document)
        *Define uma interface de objetos que o método fabrica cria.
    -Concrete Product : (MyDocument)
        *Implementa a Interface de Product.
    -Creator : (Application)
        -Declara o método fabrica, o qual retorna um objeto de tipo product. Creator 
        pode também definir uma implementação por emissão do método factory.
    -Concrete Creator : (MyApplication)
        *Redefine o método fabrica para retornar uma instancia de concrete Product.

<h3>Colaborações</h3>

    *Creator depende das subclasses para definir o método fpabrica de maneira que retorna um instancia
    de concrete product apropriado.

<h3>Consequencias</h3>

    Os factory Methods Eliminam a nescessidades de anexar classes especificas das aplicação de codigo.
    Umas das grandes desvantagens do factoryMethods e que as vezes para acessar alguns metodos unicos 
    temos que forncer um product para o creator.(Tentar não implementar dessa forma)

    -Fornece ganchos para aplicação.
    -Conecta Classes de Heraquias de classes paralelas.
    -
<h3>Implementação</h3>

    -Duas variedades
        *A Classe creator  e uma classes abstrata e não fornece uma implementação para o método fabrica.
        *quando  a classes creator e uma classes concrete e fornce uma impementação por omissão.
    -Métodos fabricas parametrizados.
