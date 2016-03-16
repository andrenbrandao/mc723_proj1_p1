# Grupo 4 - Gnuplot

## O que faz? Para que serve?

Gnuplot é uma aplicação de recursos gráficos orientados por linha de comando portátil para Linux, MS Windows, OSX e várias outras plataformas. Originalmente foi criada para auxiliar estudantes e cientistas na visualização matemática de funções e dados de forma interativa. Também é utilizado como um motor de plotagem por aplicações de terceiros tais como Octave. O Gnuplot é uma ferramenta bastante versátil capaz de plotar gráficoss 2D simples, gráficos em 3D e superfícies, funções matemáticas e ajustes, transformações de eixo, animações, etc...

## Por que é bom medir desempenho?

Medir desempenho de aplicações é importante pois permite obter valores tangíveis sobre a execução da aplicação, que são úteis para um melhor entendimento do seu comportamento dentro da máquina. Ter acesso a informações como acesso ao disco, hit/miss de caches, uso de memória em certos trechos de código e assim por diante, permite tomar decisões de desenvolvimento futuas ou até mesmo decisões de otimizações para uma determinada máquina.

Como o Gnuplot é capaz de plotar gráficos, gerando imagens no formato PNG, estaremos medindo o tempo de execução do processamento do gráfico, assim como o uso de memória e o acesso ao disco.


## O que baixar

É preciso baixar o Gnuplot assim como a ferramenta perf, que será utilizada para se obter várias informações a respeito do desempenho da aplicação.

Para baixar o Gnuplot, basta o seguinte comando:

>wget http://downloads.sourceforge.net/project/gnuplot/gnuplot/5.0.3/gnuplot-5.0.3.tar.gz

Para baixar a ferramenta perf é necessário o seguinte comando:

>sudo apt-get install linux-tools-common linux-tools-generic 

OBS: É necessário instalar a versão do perf correspondente à sua versão do kernel.


## Como compilar/instalar

Para compilar o Gnuplot:

Descompacte o arquivo que você acabou de baixar (*gnuplot-5.0.3.tar.gz*) através do comando:

>tar -vzxf gnuplot-5.0.3.tar.gz

Entre no diretório e digite:

>./configure --prefix=$HOME/usr --with-readline=gnu  
> make  
>make install-strip  

Isso fará com o que o Gnuplot seja instalado em ~/usr/bin.

## Como executar

Para excutar o Gnuplot, preparamos um script que está na pasta examples. 

Simplesmente basta executar esse script que ele fará todas as medições necessárias para a coleta de dados.

> ./execute.sh

Caso haja a necessidade de mudar o tipo de arquivo:

> sudo chmod 777 execute.sh

## Como medir o desempenho

O script já executará 10 vezes cada instância. A sua saída conterá a média e desvio padrão de cada instância. Temos as seguintes informações:  

*cycles*: Quantidade de ciclos executados  
*bus-cycles*: Tempo requerido para ler ou escrever entre cpu e memória externa  
*cpu-clock*: Quantidade de clocks da cpu  
*page-faults*: Falha na busca de páginas  
*L1-dcache-store-misses*: Falha na escrita da cache L1 de dados  
*L1-dcache-load-misses*: Falha na leitura da cache L1 de dados  
*mem-stores*: Falha na escrita da memória principal  
*time elapsed*: Tempo de execução do programa  


## Como apresentar o desempenho

O desempenho de cada uma dessas informações será apresentado como a média das 10 amostragens e a margem de erro será o desvio padrão já retornado juntamente com as médias. O desvio padrão é retornado como uma porcentagem, então deve-se multiplicá-lo pela média para se obter o seu valor real.

## Medições base (uma máquina)

Inclua a especificação dos componentes relevantes e os resultados de desempenho.