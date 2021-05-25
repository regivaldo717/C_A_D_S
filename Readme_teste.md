# C_A_D_S
## Ciência e Análise de Dados em Saúde

# Projeto: Uma Abordagem Preditiva para Potenciais Casos de Acidente Vascular Cerebral (AVC)
# Project: A Predictive Approach to Potential Cases of Stroke

# Apresentação
>
>O presente projeto foi originado no contexto das atividades da disciplina de pós-graduação Ciência e Visualização de Dados em Saúde, oferecida no primeiro semestre de 2021, na Unicamp.
>
| Nome                            | RA            | Especialização
| :------------------------------ | :-------------: |:----------------
| Amanda Consulin Amorim          | 234942        | Saúde (FCM)
| Louise Idalgo Vasques           | 142399        | Saúde (FCM)
| Márcia Jacobina Andrade Martins | 225269        | Computação (IC)
| Regivaldo Sousa Ferreira        | 225153        | Computação (FEEC)
>
# Descrição Resumida do Projeto
> O Projeto tem o objetivo de identificar um modelo preciso que permita a detecção preventiva do Acidente Vascular Cerebral (AVC). Segundo a Academia Brasileira de Neurologia, o AVC é a segunda maior causa de morte e a primeira de incapacidade no Brasil . Causa seis milhões de óbitos por ano, deste total, 50% das pessoas ficam dependentes de outra para atividades do dia a dia e 70% não conseguem retornar mais ao trabalho. (ACADEMIA BRASILEIRA DE NEUROLOGIA, 2020)
> 
> Apesar da incidência ser maior em pessoas acima dos 60 anos, ultimamente, vem crescendo em pacientes com menos de 55 anos e a Organização Mundial de AVC (World Stroke Organization) acredita que 1 a cada 6 pessoas terá um AVC ao longo de sua vida. (SOCIEDADE BRASILEIRA DE DOENÇAS CEREBROVASCULARES, 2020)
> 
> Detectar previamente o AVC é um desafio que tem mobilizado a ciência, já que as consequências da doença geram um enorme impacto econômico e social.
> 
> É possível assistir a apresentação acessando: https://drive.google.com/file/d/1jhNYPVPnujG1aPY06JCsdSWi8SkRWGq9/view?usp=sharing

# Perguntas de Pesquisa
> Perguntas de pesquisa que o projeto pretende responder ou hipóteses a serem avaliadas:
> * É possível, através da análise de parâmetros de comorbidades, prever se o indivíduo terá um Acidente Vascular Cerebral (AVC) durante a vida?
> * É possível, através da análise de parâmetros de comorbidades, prever se o indivíduo não terá um Acidente Vascular Cerebral (AVC) durante a vida?
>

# Metodologia
>  A metodologia adotada será o Knowledge Database Discovery (KDD) que envolve as seguintes etapas: seleção de dados, pré-processamento, transformação, mineração e 
interpretação/avaliação. A técnica que iremos explorar é de **aprendizagem de máquina e análise estatística**. 
>
>  A ideia é prever os casos de Acidente Vascular Cerebral (AVC) baseado em características da população examinada. Para isso, serão testados alguns algoritmos de aprendizagem supervisionada como regressão, árvore de decisão, classificadores bayesianos etc. e será escolhido aquele com melhor acurácia e performance para detecção do AVC.
>

## Bases de Dados e Evolução
>  As bases de dados utilizadas no projeto provêm dos orgãos e sites listados abaixo que disponibilizam bases de dados públicas para consumo:
>  1. Kaggle - Comunidade online de cientistas de dados e profissionais de aprendizado de máquina.
>  2. John Snow LAB - Empresa Privada que trabalha com Inteligência Artificial para Saúde.
>

### Bases Estudadas mas Não Adotadas

> Para cada base, coloque uma mini-tabela no modelo a seguir e depois detalhamento sobre como ela foi analisada/usada, conforme exemplo a seguir.

Base de Dados | Endereço na Web | Resumo descritivo
----- | ----- | -----
International Stroke Trial | https://www.johnsnowlabs.com/ |  Base do laboratório John Snow Labs dos EUA que contém dados de 19 mil pacientes do mundo todo e possui 112 variáveis. Foi feito um teste do uso de heparina e AAS em pacientes com AVC e verificou se o paciente continuou com vida ou morreu.

> Conclusão sobre a base:
> * Objetivo do Banco:
> 
>   Este estudo é um grande ensaio prospectivo, randomizado controlado, com dados de linha de base 100% completos e mais de 99% dos dados de acompanhamento completos. Para cada > paciente randomizado, os dados foram extraídos nas variáveis avaliado na randomização; o desfecho inicial foi de 14 dias após a randomização ou antes alta, e aos 6 meses e
> fornecido como um banco de dados analisável. O objetivo principal deste estudo era fazer com que os dados individuais dos pacientes do International Stroke Trial (IST), um dos > maiores ensaios randomizados já conduzidos em AVC agudo, torna-se disponíveis para uso público, para facilitar o planejamento de ensaios futuros e para permitir análises 
> secundárias adicionais. E o objetivo do julgamento do estudo era estabelecer se a administração precoce de aspirina, heparina, ambos ou nenhum influenciou o curso clínico de  > um acidente vascular cerebral isquêmico agudo.
>   
> * O que descobriu sobre esse banco?
> 
>   O conjunto de dados do IST inclui dados de 19435 pacientes com AVC agudo, com acompanhamento completo de 99%. Mais de 26,4% dos pacientes tinham mais de 80 anos no início do 
> estudo. Os cuidados básicos com o AVC foram limitados e nenhum dos pacientes recebeu terapia trombolítica. Esse conjunto de dados fornece uma fonte de dados primários que 
> podem ser usados para o planejamento de novos ensaios, para cálculos de tamanho de amostra e para novas análises secundárias.
>  
>
### Bases Estudadas e Adotadas

> A base de dados adotada foi a do site Kaggle sobre Predição do AVC.

Base de Dados | Endereço na Web | Resumo descritivo
----- | ----- | -----
Stroke Prediction Dataset | https://www.kaggle.com/fedesoriano/stroke-prediction-dataset | Este conjunto de dados é usado para prever se um paciente tem probabilidade de desenvolver AVC com base nos parâmetros de entrada como sexo, idade, várias doenças e tabagismo. Cada linha dos dados fornece informações relevantes sobre o paciente.

> Abaixo serão respondidas questões sobre a base de dados adotada, permitindo uma melhor compreensão dos dados.
> 
> * Qual o esquema/dicionário desse banco (o formato é livre)?
> 
>
| Coluna                          | Descrição       | Tipo | Conteúdo
| :------------------------------- | :--------------- |:----------------|:--------------
| Id                              | Identificador único do paciente | int | 
| gender                          | Gênero do paciente | char | Male/Female/Other
| age                             | Idade do paciente | int | 
| hypertension                    | Identifica se o paciente é hipertenso ou não  | int | 0: não hipertenso 1: hipertenso
| heart_disease                   | Identifica se o paciente possui doença do coração ou não  | int | 0: não possui 1: possui
| ever_married                    | Se o paciente foi casado uma ou mais vezes ou está casado  | int | 0: foi ou é casado, 1: não é casado
| work_type                       | Tipo do trabalho exercido pelo paciente, caso seja criança, aparece como "children" | char | children/Govt_job/Never_worked/Private
| Residence_type                  | Tipo de residência, se rural ou urbana  | int | Rural/Urban
| avg_glucose_level               | Taxa média de glicose no sangue  | float | 
| bmi                             | Índice de Massa Muscular  | float | 
| smoking_status                  | Identifica se o paciente é fumante ou já fumou | char |formely smoked/never_smoked/smokes/Unknown
| stroke                          | Identifica se o paciente teve um AVC ou se nunca teve um AVC | int | 0: Não teve AVC 1: Teve AVC

> * O que descobriu sobre esse banco?
> 
>   Existem 5110 pacientes nesta base e 12 atributos desses pacientes.
>   
>   Analisando as estatísticas, percebe-se que existem 209 dados missing na columa bmi (indicador de massa corporal). A média da idade é em torno de 43 anos, a maioria não é 
>   hipertenso (média próxima de 0), a maioria não tem doença do coração (média próxima de 0), a média do nível de glicose fica em torno de 106, o percentual da massa muscular é
>   de 28.8 e poucos pacientes tiveram AVC, pois a média é próxima de 0.
>  
>   Em relação às variáveis categóricas, a maior parte dos pacientes são do sexo feminino, já foram casados e o tipo de trabalho que exercem é privado. A maior parte deles,
>   também, nunca fumou. Aproximadamente, metade dos pacientes possuem residência urbana.
>  
>   Variáveis categóricas da base são: *gender, ever_married, work_type, residence_type, smoking_status*.
>  
>   Abaixo são listadas as variáveis numéricas e categóricas da base com seus quantitativos:
>
| Coluna                          | Quantitativos      
| :------------------------------ | :------------- 
| gender                          | Female: 2994 Male: 2115 Other:1
| age                             | Crianças: 698 Adultos: 4412 
| hypertension                    | Não hipertensos: 4612 hipertensos: 498
| smoking_status                  | never smoked: 1892 Unknown: 1544 formerly smoked: 885 smokes: 789
| work_type                       | Private: 2925 Self-employed: 819 children: 687 Govt_job: 657 Never_worked: 22
| Residence_type                  | Urban: 2596 Rural: 2514
| heart_disease                   | Não tem doença do coração: 4834 Tem doença do coração: 276
| stroke                          | Não teve AVC: 4861 Teve AVC: 249
>
> * Quais as transformações e tratamentos (e.g., dados faltantes e limpeza) feitos?
> 
>   Foi modificado o nome da coluna *Residence_type* para *residence_type*, para que todas ficassem padronizadas com letra minúscula. Os dados "missing" da variável bmi (índice 
>   de massa corporal) foram substituídos pela média do gênero em questão. 
>  
>   Embora haja dados "Unknown" na variável *smoking_status*, não foi feita nenhuma substituição, pois a quantidade de dados "Unknown" é um percentual grande da base, 1544
>   registros. Outra alteração efetuada foi a remoção de um registro em que a variável *gender* está como "Other". 
>   
>   Após as transformações efetuadas, a base resultante ficou com 5109 pacientes para serem analisados.
>  
> * Apresente aqui uma Análise Exploratória (inicial) sobre esta base.
>
>   Toda a análise exploratória foi realizada usando a linguagem python no jupyter notebook do google colab. 
>  
>   Inicialmente foram extraídas as estatísticas descritivas e feita uma análise preliminar do conteúdo da base.
>   Após entendimento, tratamento e limpeza da base, foi verificada a correlação entre as variáveis utilizando Pearson e Spearman.
>   E, finalmente, foi analisada a base apenas com os pacientes que tiveram AVC para um melhor entendimento do perfil desses pacientes.
>  
>   **ANÁLISE BASE TODOS PACIENTES**
>  
>    Vários gráficos foram apresentados e feita uma análise geral da base:
>  
>	* O total da base de dados é de 5110 registros.
>  	* Em relação ao gênero, 41,4% é do gênero masculino e 58,6% é do gênero feminino. Existe um outlier que não tem o gênero identificado e será removido na etapa de tratamento
>  de dados. 
>  	* A partir do bmi, idade e das outras features, tentou-se inferir o gênero, mas não houve um indicativo do sexo, optando-se por removê-lo.
>  	* Sobre a hipertensão, a maioria dos pacientes não são hipertensos. Existem 498 hipertensos.
>  	* A distribuição das idades não é uma distribuição normal. Percebe-se que a concentração da idade dos pacientes fica na faixa etária entre 40 e 60 anos.
>  	* Existe uma grande quantidade de pacientes que nunca fumaram (1892), dados desconhecidos (1544) e fumantes e ex-fumantes que totalizam 1674. Os dados desconhecidos não serão
>  	 preenchidos e como o volume é muito alto, também não poderão ser removidos.
>  	* Em torno de 65% dos pacientes são ou foram casados contra 35% dos pacientes solteiros.
>  	* A maior parte dos pacientes possuem o nível de glicose abaixo de 120.
>  	* Existem 698 pacientes que são crianças (idade até 16 anos). Em relação aos adultos, 2925 trabalham em empregos privados, 819 são autônomos, 657 trabalham para o 	governo e apenas 22 nunca trabalharam.
>  	* O tipo de residência é bem equilibrado, ficando em torno de 50% rural e 50% urbana.
>  	* Apenas 5,4% possuem doença do coração.
>  	* O índice de massa corporal possui uma distribuição assimétrica à direita ou positiva, sendo que a maior parte dos pacientes possui esse índice entre 25 e 35.
>  	* E, finalmente, o percentual de pessoas predispostas ao AVC mostra-se baixo entre os pacientes, apenas 4,9%.
>
>    **ANÁLISE DAS CORRELAÇÕES**
>
>    Com base na correlação de Pearson e Spearman, foi encontrada uma correlação moderada entre as variáveis *age* e *ever_married*.
>    Algumas correlações fracas foram encontradas: 
>   * *age x stroke*
>   * *age x bmi*
>   * *age x heart_disease*
>   * *age x hypertension* 
>   * *bmi x ever_married*
>
>    Percebe-se que **não há uma correlação forte** entre a **variável target *stroke* e outros atributos** numéricos do conjunto de dados.
>
>    Na sequência, foi realizada uma análise da "Distribuição AVC baseado no índice massa corporal e nível de glicose" e, também, da "Distribuição AVC baseado no índice 
>    massa corporal e idade". Conclui-se que para as pessoas que tiveram AVC, o nível médio de glicose no sangue é superior a 150, tendo uma tendência, nesses casos, para uma
>    massa corporal mais elevada. Embora não seja um indicativo tão forte.
>
>    Na análise da massa corporal com a idade, verificou-se que existe uma variação nesse índice, porém há uma tendência a uma massa corporal mais elevada. Além disso, 
>    o que pode ser destacado é que a faixa etária de quem teve o AVC é acima de 40 anos.
>   
>    **ANÁLISE BASE PACIENTES QUE TIVERAM AVC**
>
>    Análise dos gráficos pacientes que tiveram AVC:
>
> 	* O total da base de dados é de 249 registros, ou seja, 249 pacientes tiveram AVC no conjunto de 5110 pacientes.
> 	* Em relação ao gênero, 43,4% é do gênero masculino e 56,6% é do gênero feminino. Ou seja, percebe-se que não há uma correlação forte do gênero em relação a quem teve o AVC 
> 	* e o percentual dos gêneros se aproxima ao da base original.
> 	* Sobre a hipertensão, a maioria dos pacientes não são hipertensos. Existem apenas 66 hipertensos.
> 	* A distribuição das idades não é uma distribuição normal. Percebe-se que a faixa etária dos pacientes que tiveram AVC está acima de 40 anos, com uma concentração entre 60 e 80 anos. O mesmo resultado encontrado nos gráficos analisados anteriormente.
> 	* 90 pacientes nunca fumaram e 70 são ex-fumantes. Apenas 42 fumam e 47 não tem essa informação.
> 	* Em torno de 88% dos pacientes são ou foram casados contra 11% dos pacientes solteiros. Ou seja, a maior parte dos pacientes que sofreram AVC eram casados.
> 	* A maior parte dos pacientes possuem o nível de glicose abaixo de 120, embora tenham alguns que sofreram o AVC com um nível de glicose mais elevado, na entre 160 e 220, 
> 	em torno de 84 pacientes.
> 	* Foi identificado apenas 2 pacientes crianças que tiveram AVC. Em relação aos adultos, a maior parte trabalha em empregos privados, 149 pacientes, 65 são autônomos e 33 
> 	trabalham no governo.
> 	* O tipo de residência é bem equilibrado, ficando em torno de 50% rural e 50% urbana.
> 	* 18% possuem doença do coração, esse percentual é bem superior ao observado na base origina.
> 	* O índice de massa corporal possui uma distribuição assimétrica à direita ou positiva, sendo que a maior parte dos pacientes possui "bmi" entre 25 e 35. É a mesma tendência encontrada na base completa.
>

### Integração entre Bases e Análise Exploratória

> Embora tenhamos trabalhado com duas bases de dados, optamos por apenas uma delas para a continuidade do projeto. Não foi possível integrá-las porque os dados eram individualizados por pacientes e os objetivos finais eram diferentes.
> 
> Na base estudada e adotada, o objetivo era prever se o paciente tem predisposição para o AVC. 
> 
> Na base estudada, mas não adotada, o objetivo era prever se o uso da heparina para pacientes que tiveram o AVC levaria a uma melhora do paciente em relação a não ter um infarto recorrente e, consequentemente, não morrer.
> 
> Desse modo, não foi possível uma integração entre as bases analisadas.
> 
# Ferramentas
>
> As ferramentas destacadas em negrito são as utilizadas para entrega do projeto, já as outras mencionadas serão exploradas e servirão de suporte durante o projeto:
> 
>* **Jupyter Notebook**
>* **Linguagem Python**
>* Knime
>* **Orange**
>* R

# Cronograma
> A duração do projeto está prevista para quatro meses considerando etapas já executadas descritas no cronograma abaixo.
 

|ATIVIDADE              |Abril|Maio|Junho| Julho |
|----------------------   |---------------   |---------   |----------   |  ---------- |
|Definição da pergunta de pesquisa bibliográfica | x|
|Pesquisa bibliográfica e seleção dos dados|x
|Entrega 1 (E1)|x
|Avaliação das bases de dados|x
|Tratamento dos dados||x
|Entrega 2 (E2)   ||x
|Interpretação e validação ||x
| Resultados e discussões ||x|x
| Resultado final|||x|x
| Entrega final (EF) |||x|x

# Referências
> Acidente Vascular Cerebral Isquêmico. Hospital Albert Einstein. Disponível em: <https://www.einstein.br/guia-doencas-sintomas/info/#4> Acesso em: 11 abr 2021.
>
> Acidente Vascular Cerebral. Hospital Albert Einstein. Disponível em: <https://www.einstein.br/doencas-sintomas/avc> Acesso em: 11 abr 2021.
>
> Hankey GJ. Stroke. Lancet. 2017 Feb 11;389(10069):641-654. doi: 10.1016/S0140-6736(16)30962-X. Epub 2016 Sep 13. PMID: 27637676.
>
> Fisher M, Moores L, Alsharif MN, Paganini-Hill A. Definition and Implications of the Preventable Stroke. JAMA Neurol. 2016 Feb;73(2):186-9. doi: 10.1001/jamaneurol.2015.3587. PMID: 26641201; PMCID: PMC4767801.
>
> Thrift AG, Thayabaran Nathan T, Howard G, Howard VJ, Rothwell PM, Feigin VL, Norrving B, Donnan GA, Cadilhac DA. Global stroke statistics. Int J Stroke. 2017 Jan;12(1):13-32. doi: 10.1177/1747493016676285. Epub 2016 Oct 28. PMID: 27794138.
>
> Feigin VL, Forouzanfar MH, Krishnamurthi R, Mensah GA, Connor M, Bennett DA, Moran AE, Sacco RL, Anderson L, Truelsen T, O'Donnell M, Venketasubramanian N, Barker-Collo S, Lawes CM, Wang W, Shinohara Y, Witt E, Ezzati M, Naghavi M, Murray C; Global Burden of Diseases, Injuries, and Risk Factors Study 2010 (GBD 2010) and the GBD Stroke Experts Group. Global and regional burden of stroke during 1990-2010: findings from the Global Burden of Disease Study 2010. Lancet. 2014 Jan 18;383(9913):245-54. doi: 10.1016/s0140-6736(13)61953-4. Erratum in: Lancet. 2014 Jan 18;383(9913):218. PMID: 24449944; PMCID: PMC4181600.
>
> *ACIDENTE VASCULAR CEREBRAL*. Sociedade Brasileira de Doenças Cerebrovasculares, 2020. Disponível em:  http://www.sbdcv.org.br/publica_avc.asp. Acesso em: 10 abr. 2021.
>
> *GLOBAL STROKE ALLIANCE: UNIÃO E FORÇA CONTRA O AVC*. Academia Brasileira de Neurologia, 2020. Disponível em: https://www.abneuro.org.br/post/global-stroke-alliance-uni%C3%A3o-e-for%C3%A7a-contra-o-avc. Acesso em: 10 abr. 2021.



Instruções básicas arquivos:
data “ pasta com dados utilizadas neste trabalho”
	external{Stroke_avc.xlsx} “tabela usada para predição do avc”
		{Stroke_avc.csv}  “ mesma tabela em formato .csv”
	interim  { dados intermediários }
	processed{ dados após só primeiros tratamentos}
	raw
notebooks “ códigos desenvolvidos ao longo do projeto
src
	readme.md { este arquivo}
assets
