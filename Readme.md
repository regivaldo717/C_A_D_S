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
| Márcia Jacobina Andrade Martins | 225269        | Computação (IC)
| Regivaldo Sousa Ferreira        | 225153        | Computação (FEEC)
>
# Descrição Resumida do Projeto
> 
> O Projeto tem o objetivo de identificar um modelo de aprendizado de máquina que permita a detecção preventiva do Acidente Vascular Cerebral (AVC). Para isso, buscou-se 
> padrões nos dados dos pacientes e, a partir desses padrões, foram analisados modelos estatísticos e comparados seus desempenhos. Por fim, foi apresentado o algoritmo mais
> adequado para a predição do AVC.
> 
# Vídeos do Projeto

## Vídeo da Proposta
> É possível assistir ao vídeo da proposta acessando: [Vídeo Proposta Projeto Predição Casos AVC](https://drive.google.com/file/d/1jhNYPVPnujG1aPY06JCsdSWi8SkRWGq9/view?usp=sharing).
> 
## Vídeo da Apresentação Final
> Para assistir ao vídeo da Apresentação Final do Projeto, acesse: [Vídeo Apresentacao_Final_Projeto_Predicao_AVC](https://drive.google.com/file/d/1ea6DpKmja7LBOw3kqBzlOeaKxAUzQko2/view)

# Slides do Projeto

## Slides da Proposta
> É possível visualizar a a apresentação da proposta do projeto acessando: [Proposta Projeto Predição Casos AVC](/docs/Uma_Abordagem_Preditiva_Potenciais_Casos_AVC.pdf).

## Slides da Apresentação Final
> Para visualizar a Apresentação Final do projeto, acesse: [Apresentacao_Final_Projeto_Predicao_AVC](docs/Apresentacao_Projeto_Final_Predicao_AVC.pdf).
> 
# Introdução e Referenciais Teóricos

> Segundo a Academia Brasileira de Neurologia, o AVC é a segunda maior causa de morte e a primeira de incapacidade no Brasil. Causa seis milhões de óbitos por ano, deste total, 
> 50% das pessoas ficam dependentes de outra para atividades do dia a dia e 70% não conseguem retornar mais ao trabalho (ACADEMIA BRASILEIRA DE NEUROLOGIA, 2020).
> 
> Apesar da incidência ser maior em pessoas acima dos 60 anos, ultimamente, vem crescendo em pacientes com menos de 55 anos e a Organização Mundial de AVC (World Stroke
> Organization) acredita que 1 a cada 6 pessoas terá um AVC ao longo de sua vida (SOCIEDADE BRASILEIRA DE DOENÇAS CEREBROVASCULARES, 2020).
>  
> Suas causas são complexas e suas chances de acometimento podem ser aumentadas quando o indivíduo possui um ou mais fatores de risco relacionados à doença como: alto nível de
> glicose no sangue, alta taxa de colesterol e triglicérides e doenças cardiovasculares, como hipertensão arterial e arritmias cardíacas, além de hábitos de vida prejudiciais à
> saúde como sedentarismo, tabagismo e etilismo. 
>
> De acordo com (HOSPITAL ALBERT EINSTEIN, 2021), 90% dos casos de AVC são causados por fatores modificáveis, como hipertensão, obesidades, tabagismos entre outros . Diante do  exposto, fazer a previsão ou o diagnóstico precoce do Acidente Vascular Cerebral (AVC) é crucial, pois muitas mortes ou vidas incapacitadas poderiam ser evitadas. Detectar previamente o AVC é um desafio que tem mobilizado a ciência, já que as consequências da doença geram um enorme impacto econômico e social.
> 
> Em função da importância de um diagnóstico precoce, existem pesquisas que buscam encontrar formas de prever a doença. Isso é notado no trabalho de (SITAR-TĂUT, et al., 2009) que sugere a utilização de ferramentas de mineração de dados e tenta prever de forma não invasiva doenças cardioovasculares considerando fatores de risco. Também é possível observar, no trabalho realizado por (Dongmei, et al., 2019), a busca por classificadores com o objetivo de identificar precocemente indivíduos com diabetes. Além disso, o artigo de (Fisher, et al., 2016) demonstra a importância de medidas preventivas do AVC, a partir da análise de dados de pacientes que tiveram AVC e que com tratamento precoce poderiam ter sido evitados ou minimizados 
>
> Nosso projeto buscou identificar padrões nas características dos pacientes para efetuar uma predição das pessoas que possuem risco de terem AVC durante a sua vida. Neste estudo
> foram avaliados cinco modelos, *Logistic Regression, SVM, Random Forest, K nearest neighbors e Naive Bayes*, para identificar indivíduos com predisposição ao AVC baseado em
> dez características, como gênero, idade, doença do coração, hipertensão, nível de glicose no sangue, tipo de trabalho, tipo de residência, índice de massa corporal (IMC),
> hipertensão, doença do coração, tabagismo e estado civil. A base de dados utilizada foi uma base pública disponível no site do Kaggle e nos forneceu dados de 5110 pacientes. 
> A mineração de dados foi efetuada no linguagem Python com algumas explorações realizadas no Orange. Os algoritmos para predizer o AVC foram treinados na linguagem Python
> utilizando a biblioteca científica *scikit-learn* e, por fim, foi identificado o algoritmo mais adequado para predizer o AVC, a partir da análise das métricas e da questão a ser respondida.
> 
> Os resultados indicaram que o algoritmo com um melhor desempenho em quase todas as métricas foi o Random Forest (acurácia=0,86, precisão=0,98, sensibilidade=0,89,
> especificidade=0,4, roc_auc=0,96, f1-score=0,92) e as variáveis preditivas utilizadas foram idade, índice de massa corporal, hipertensão e média de glicose no sangue.
> Entretanto, entende-se que é mais relevante identificar os pacientes propensos ao AVC do que os não propensos. Desse modo, o algoritmo de Regressão Logística mostrou-se mais
> adequado, por possuir um maior equilíbrio entre sensibilidade, especificidade e acurácia (acurácia=0,73, precisão=0,98, sensibilidade=0,73, especificidade=0,74, roc_auc=0,82,
> f1-score=0,84).
> 
# Perguntas de Pesquisa
> Perguntas de pesquisa que o projeto busca responder:
> * É possível, através da análise de parâmetros de comorbidades, prever se o indivíduo terá um Acidente Vascular Cerebral (AVC) durante a vida?
> * É possível, através da análise de parâmetros de comorbidades, prever se o indivíduo não terá um Acidente Vascular Cerebral (AVC) durante a vida?
>

# Metodologia
>  A metodologia adotada será o Knowledge Database Discovery (KDD) que envolve as seguintes etapas: seleção de dados, pré-processamento, transformação, mineração e 
interpretação/avaliação. 
>
> ![Metodologia KDD](https://github.com/regivaldo717/C_A_D_S/blob/main/assets/Kdd_metodologia.PNG)
> 
> A técnica que iremos explorar é de **aprendizagem de máquina e análise estatística**. 
> 
> A ideia é prever os casos de Acidente Vascular Cerebral (AVC) baseado em características da população examinada. Para isso, serão testados alguns algoritmos de aprendizagem
> supervisionada como regressão, árvore de decisão, classificadores bayesianos etc. e será escolhido aquele com melhor acurácia e performance para detecção do AVC.
>

## Bases de Dados e Evolução
>  As bases de dados utilizadas no projeto provêm dos orgãos e sites listados abaixo que disponibilizam bases de dados públicas para consumo:
>  1. Kaggle - Comunidade online de cientistas de dados e profissionais de aprendizado de máquina.
>  2. John Snow LAB - Empresa Privada Americana que trabalha com Inteligência Artificial voltada para Saúde.
>  
>

### Bases Estudadas mas Não Adotadas

> Para cada base, coloque uma mini-tabela no modelo a seguir e depois detalhamento sobre como ela foi analisada/usada, conforme exemplo a seguir.

Base de Dados | Endereço na Web | Resumo descritivo
----- | ----- | -----
International Stroke Trial | https://www.johnsnowlabs.com/ |  Base do laboratório John Snow Labs dos EUA que contém dados de 19 mil pacientes do mundo todo e possui 112 variáveis. Foi feito um teste do uso de heparina e AAS em pacientes com AVC e verificou se o paciente continuou com vida ou morreu.

>  Abaixo serão respondidas questões sobre a base de dados adotada, permitindo uma melhor compreensão dos dados.
>  
> * Objetivo do Banco:
> 
>   Este estudo é um grande ensaio prospectivo, randomizado controlado, com dados de linha de base 100% completos e mais de 99% dos dados de acompanhamento completos. Para cada
>   paciente randomizado, os dados foram extraídos das variáveis avaliadas na randomização; o desfecho inicial foi de 14 dias após a randomização ou antes da alta, e aos 6
>   meses, quando foi finalizado o estudo e liberado o banco de dados para análise. 
>   
>   O objetivo principal deste estudo foi fazer com que os dados individuais dos pacientes do International Stroke Trial (IST), um dos maiores ensaios randomizados já conduzidos
>   em AVC agudo, ficassem disponíveis para uso público, para facilitar o planejamento de ensaios futuros e para permitir análises secundárias adicionais. E o objetivo do
>   julgamento do estudo era estabelecer se a administração precoce de aspirina, heparina, ambos ou nenhum influenciou o curso clínico de um acidente vascular cerebral isquêmico
>   agudo.
>
> * Qual o esquema/dicionário desse banco (o formato é livre)?
> 
>
| Coluna                          | Descrição       | Tipo | Conteúdo
| :------------------------------- | :--------------- |:----------------|:--------------
| gender                          | Gênero do paciente | char | Male/Female 
| age                             | Idade do paciente | int | 
| blood_pressure                  | Pressão sanguínea | int | 
| stroke_subtype                  | Subtipo do infarto  | char | partial anterior circulation syndrome/lacunar syndrome/posterior circulation syndrome/other/total anterior circulation syndrome
| days_treatment                  | Quanto tempo levou fazendo o tratamento  | int | 
| non_trial_antiplatelet_drug     | Uso de outro antiplaquetário antes do estudo | char | yes/no
| cause_of_death                  | Causa de morte | char | ex: vascular/pneumonia/ischaemic stroke/coronary heart disease...
| is_death_indicator              | Houve morte?  | char | True/False
| is_death_indicator_14days       | Houve morte dentro dos 14 dias? | char | True/False
| is_any_stroke_indicator_14days  | Se houve algum AVC nos 14 dias subsequentes que foi a causa da morte |char | True/False
| six_month_outcome               | Resultado após seis meses | char | ''/dependent/recovered/not recovered/dead
| is_initial_stroke_indicator     | Se o infarto inicial foi a causa direta da morte| char | True/False
| dose_heparin                    | Dose de heparina aplicada |int | 0 / 5000 / 12500
| is_stroke                       | O motivo da internação inicial foi realmente infarto? | char | True/False
| type_stroke                     | Tipo do infarto  | char | ischaemic/haemorrhagic/indeterminate
| is_recurrent_stroke_indicator   | Se o infarto recorrente foi a causa direta da morte| char | True/False
| type_recurrent_stroke           | Tipo do infarto recorrente |char | ''/unknown/ischaemic/haemorrhagic
| days_to_recurrent_stroke        | Dias decorridos do início do tratamento até o infarto recorrente | int |
>
>
> * O que descobriu sobre esse banco?
> 
>   O conjunto de dados do IST inclui dados de 19435 pacientes com AVC agudo, com acompanhamento completo de 99%. Mais de 26,4% dos pacientes tinham mais de 80 anos no início do 
> estudo. Os cuidados básicos com o AVC foram limitados e nenhum dos pacientes recebeu terapia trombolítica. Esse conjunto de dados fornece uma fonte de dados primários que 
> podem ser usados para o planejamento de novos ensaios, para cálculos de tamanho de amostra e para novas análises secundárias.
>  
> * Quais as transformações e tratamentos (e.g., dados faltantes e limpeza) feitos?
> 
>   Começamos com a base do laboratório John Snow Labs dos EUA, que foi feita em parceria com diversos hospitais do mundo todo. Nessa base 19.435 pacientes participaram fazendo
>   acompanhamento médico, e os dados obtidos desse acompanhamento foram atribuídos em 112 questões, distribuídas nas colunas. 
>   
>   Esses dados seriam utilizados para complementar a questão primária se é possível predizer se a pessoa terá AVC, entretanto, analisando os dados foi possível verificar que
>   ele responde melhor a pergunta se os pacientes que foram tratados com heparina e AAS continuaram vivos ou morreram em seis meses. Para iniciar a análise foram feitos
>   tratamentos dessa base como: alteração e renomeação de colunas, remoção de colunas, intercepção de colunas e media. 
> 
>    ALTERAÇÃO E RENOMEAÇÃO DO NOME DA COLUNA 
> 
>    Nas categorias "gênero”, “idade”, “pressão” foi reduzido o nome da coluna. 
>    Na categoria “Age_In_Years” foi renomeado para “Age”. “Systolic_Blood_Pressure_at_Randomization” foi nomeado para “blood_pressure”.
> 
>    REMOÇÃO DE COLUNAS:
> 
>    Das 112 colunas, que podem ser observadas na categoria raw do repositório,  foram removidas 97 colunas. Ao final obteve-se 25 atributos, como demonstrado abaixo:
>    * Gender
>    * Age_In_Years  
>    * Systolic_Blood_Pressure_at_Randomization
>    * Stroke_Subtype
>    * Medium_Dose_Heparin_Given_For_14_Days
>    * Is_Medium_Dose_Heparin_Given_For_14_Days_in_Pilot
>    * Time_In_Days_On_Trial_Treatment
>    * Non_Trial_Antiplatelet_Drug
>    * Ischaemic_Stroke
>    * Haemorrhagic_Stroke 
>    * Indeterminate_Stroke
>    * Not_A_Stroke
>    * Recurrent_Ischaemic_Stroke
>    * Days_Elapsed_From_Randomization_to_Recurrent_Ischaemic_Stroke
>    * Recurrent_Haemorrhagic_Stroke
>    * Days_Elapsed_From_Randomization_to_Recurrent_Haemorrhagic_Stroke
>    * Cause_of_Death_at_Six_Month_Follow_Up
>    * Is_Death_Indicator
>    * Is_Death_Indicator_at_14_Days
>    * Six_Month_Outcome
>    * Is_Initial_Stroke_Indicator
>    * Is_Recurrent_Ischaemic_or_Unknown_Stroke_Indicator
>    * Is_Recurrent_Haemorrhagic_Stroke_Indicator
>    * Is_Any_Stroke_Indicator_Within_14_Days
>    
>    As colunas removidas foram:
>    * "Trial_Heparin_Allocated", 
>    * "Medium_Dose_Heparin_Given_For_14_Days",
>    * "Is_Medium_Dose_Heparin_Given_For_14_Days_in_Pilot",
>    * "Ischaemic_Stroke", "Haemorrhagic_Stroke", 
>    * "Indeterminate_Stroke", "Not_A_Stroke",
>    * "Recurrent_Ischaemic_Stroke",
>    * "Days_Elapsed_From_Randomization_to_Recurrent_Ischaemic_Stroke",
>    * "Recurrent_Haemorrhagic_Stroke",
>    * "Days_Elapsed_From_Randomization_to_Recurrent_Haemorrhagic_Stroke",
>    * "Is_Recurrent_Ischaemic_or_Unknown_Stroke_Indicator",
>    * "Is_Recurrent_Haemorrhagic_Stroke_Indicator
> 
>   Destes 25 atributos foi feita uma intercepção de colunas de indicadores que não estavam bem construídos com outras algumas outras colunas com dados mais claros das quais
> foram:
> 
>  1. “Trial_Heparin_Allocated”, “Medium_Dose_Heparin_Given_For_14_Days” e “Is_Medium_Dose_Heparin_Given_For_14_Days_in_Pilot” foram mescladas e transformaram-se em “dose_heparin”;
>  2. “Time_In_Days_On_Trial_Treatment” foi transformado em "Days treatment";
>  3. “Is_Death_Indicator” e “Is_Death_Indicator_at_14_Days” mantiveram e mesclaram com “Cause_of_Death_at_Six_Month_Follow_Up”;
>  4. ”Ischaemic_Stroke”, “Haemorrhagic_Stroke”, “Indeterminate_Stroke”, “Not_A_Stroke”, “Recurrent_Ischaemic_Stroke”, foram mesclados em “type_stroke”;
>  5. “Days_Elapsed_From_Randomization_to_Recurrent_Ischaemic_Stroke”, “Recurrent_Haemorrhagic_Stroke” e “Days_Elapsed_From_Randomization_to_Recurrent_Haemorrhagic_Stroke” foram mesclados e foram nomeados como “days_to_recurrent_stroke”;
>  6. “Is_Recurrent_Ischaemic_or_Unknown_Stroke_Indicator” e “Is_Recurrent_Haemorrhagic_Stroke_Indicator” foram mesclados e renomeados como “is_recurrent_stroke_indicator”.
>
>   	Ao final do tratamento obteve-se 19 atributos os quais são:
>    	* id
>    	* age
>    	* gender  
>    	* stroke_subtype 
>    	* blood_pressure 
>    	* days_treatment      
>    	* non_trial_antiplatelet_drug      
>    	* is_death_indicator
>    	* is_death_indicator_14days  
>    	* cause_of_death        
>    	* is_death_indicator 
>    	* is_death_indicator_14days 
>    	* six_month_outcome        
>    	* is_initial_stroke_indicator     
>    	* is_any_stroke_indicator_14days 
>    	* dose_heparin 
>    	* is_stroke 
>    	* type_stroke 
>    	* is_recurrent_stroke_indicator 
>    	* type_recurrent_stroke 
>    	* days_to_recurrent_stroke 
>
> * Por que este banco não foi adotado?
>   
>   Este banco não foi adotado pelos seguintes motivos:
>   * O propósito inicial dos dados desse banco era complementar a pergunta sobre a predição de AVC;
>   * A variabilidade de possibilidade poderia nos desnortear da nossa questão principal do projeto, e não nos traria um resultado significativo;
>   * Precisaria de mais tempo para a realização do tratamento dos dados, por ter aproximadamente 112 colunas;
>   * A base responderia melhor a questão do próprio artigo que seria se o tratamento de Heparina e AAS em pacientes com AVC seria eficaz ou não e se o tratamento redu
> ziria o número de mortes por AVC;
>   * Nessa base, todos já tinham tido AVC e o que estava sendo analisado era efeito positivo ou não do uso de heparina e/ou aspirina no paciente. 
> 
>  * Análise Exploratória (inicial) sobre esta base.
> 
> 	  Com a análise exploratória em Jupyter Notebook e Orange 3.0 desses dados foram estudadas algumas relações do uso da heparina com número de mortos para responder à questão
> 	  do próprio artigo.
> 	
> 	  Do total de participantes desse estudo a quantidade total de pessoas mortas foram 2.889, sendo que dentre estas 1.388 morreram sem fazer nenhum tratamento com heparina e 
> 	  as outras e 1.501 pessoas restantes fizeram tratamento com heparina. Dos 1.388 mortos que não fizeram tratamento, 319 morreram de AVC e o restante foi relacionado a 
> 	  diversas causas. Das 1.501 pessoas que fizeram tratamento com heparina e morreram, apenas 332 mortes foram por AVC. 
> 	
> 	  Do total de mortos, 2889, 870 pessoas morreram nos primeiros 14 dias e o restante, 2019, em até 6 meses. Do total geral de mortos, 651 morreram de AVC, ou seja, 22,53% 
> 	  dos pacientes que morreram, foram de AVC, os demais tiveram outras causas de morte.
> 	
> 	  Pelos resultados obtidos pode-se perceber que metade dessa amostra fez tratamento com heparina e a outra metade não fez. Além disso, das 1.501 pessoas que fizeram
> 	  tratamento, 22,11% morreu de AVC e, das 1.388 que não fizeram só 22,98% morreram de AVC, mostrando que em ambos os conjuntos o percentil de AVC foi semelhante. Ademais,
> 	  22,5% da amostra total de fato morreu pelo AVC sendo o restante por diversas causas. Isso pode mostrar que as causas de mortes estão mais correlacionadas a outras 
> 	  doenças do que ao próprio AVC, e que o tratamento com heparina não tenha alguma implicação na redução do número de mortos.
> 	
> 	  Porém, fazendo uma análise em “feature statistic” do Orange 3.0 e no próprio notebook foi possível notar que em “type recurrent stroke” - ischaemic estão faltando 16.868
> 	  dados (93%), em “cause of death” - pneumonia estão faltando 15.071 dados (83%) e em “type stroke” - ischaemic estão faltando 438 dados (2%), assim como mostra a tabela
> 	  abaixo:

Categoria | Dados Faltantes 
----- | ----- 
ID | 0
Gender | 0
Age | 0
Blood_pressure | 0
Stroke_subtype | 0
Days_treatment | 0
Non_trial_antiplatelet_drug | 17
Cause_of_death | 15071
Is_death_indicator | 0
Is_death_indicator_14days | 0
Six_months_outcome | 0
Is_initial_stroke_indicator | 0
Is_any_stroke_indicator_14days | 0
Dose_heparin | 0
Is_stroke | 0
Type_stroke | 438
Is_recurrent_stroke_indicator | 0
Type_recurrent_stroke | 16868
Days_to_recurrent_stroke | 0
>
> * Análise dados faltantes *cause_of_death*
> 
>    Para classificar esses dados faltantes foi plotado um Scatter Plot no Orange 3.0 “Dose Heparin” x “Days to Recurrent Stroke” com a coloração “Cause of Death” e nele é
>    possível interpretar que independente da dose de heparina por volta de 20 à 60 dias há a recorrência de AVC isquêmico. Isso relaciona-se a causa de algumas mortes,
>    confirmando que o tratamento com heparina não interfere na redução do número de mortes.
>    
>    Vale ressaltar que alguns dados faltantes se justificam por dependerem de um acontecimento para serem preenchidos, como, por exemplo,  o *Type_recurrent_stroke* que pode
>    estar nulo, em função de não ter havido um AVC recorrente *Is_recurrent_stroke_indicator*. Isso pode ser visto na análise do Scatter Plot do "Age x Blood Pressure",
>    colorido pela causa da morte. Embora haja 15 mil dados nulos para *cause_of_death*, para o conjunto de dados dos pacientes que morreram, existem apenas 32 dados nulos para
>    esse campo.  
>   
>    ![Missing cause death](https://github.com/regivaldo717/C_A_D_S/blob/main/assets/Missing_cause_of_death.PNG)
>    
### Bases Estudadas e Adotadas

> A base de dados adotada foi a do site Kaggle sobre a predisposição ao AVC.

Base de Dados | Endereço na Web | Resumo descritivo
----- | ----- | -----
Stroke Prediction Dataset | https://www.kaggle.com/fedesoriano/stroke-prediction-dataset | Este conjunto de dados é usado para prever se um paciente tem probabilidade de desenvolver AVC com base nos parâmetros de entrada como sexo, idade, várias doenças e tabagismo. Cada linha dos dados fornece informações relevantes sobre o paciente.

> Abaixo serão respondidas questões sobre a base de dados adotada, permitindo uma melhor compreensão dos dados.
>
> * Objetivo
>
>    Este conjunto de dados tem como objetivo ser usado para prever se um paciente tem probabilidade de desenvolver AVC com base nos parâmetros de entrada como sexo, idade, 
>    várias doenças e tabagismo. Cada linha dos dados fornece informações relevantes sobre o paciente.
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
>   Abaixo são listadas variáveis numéricas e categóricas da base com seus quantitativos:
>
| Coluna                          | Quantitativos      
| :------------------------------ | :------------- 
| gender                          | Female: 2994 Male: 2115 Other:1
| age                             | Crianças: 698 Adultos: 4412 
| hypertension                    | Não hipertensos: 4612 hipertensos: 498
| smoking_status                  | never smoked: 1892 Unknown: 1544 formerly smoked: 885 smokes: 789
| work_type                       | Private: 2925 Self-employed: 819 children: 687 Govt_job: 657 Never_worked: 22
| Residence_type                  | Urban: 2596 Rural: 2514
| ever_married                    | No: 3353 Yes: 1757
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
>    ![Visão Geral da Base](https://github.com/regivaldo717/C_A_D_S/blob/main/assets/Visao_Geral_Base.png)
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
>    ![Correlação Pearson](https://github.com/regivaldo717/C_A_D_S/blob/main/assets/Corr_Pearson.PNG)
>    ![Correlação Spearman](https://github.com/regivaldo717/C_A_D_S/blob/main/assets/Corr_Spearman.PNG)
>    
>    Com base na correlação de Pearson e Spearman, foi encontrada uma correlação moderada entre as variáveis *age* e *ever_married*.
>    
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
>    ![Distribuição AVC](https://github.com/regivaldo717/C_A_D_S/blob/main/assets/Distribuicao_AVC.png)
>    
>    Na análise da massa corporal com a idade, verificou-se que existe uma variação nesse índice, porém há uma tendência a uma massa corporal mais elevada. Além disso, 
>    o que pode ser destacado é que a faixa etária de quem teve o AVC é predominantement acima 40 anos, com algum poucos outliers.
>
>    ![Distribuição Idade](https://github.com/regivaldo717/C_A_D_S/blob/main/assets/Distribuicao_Idade.PNG)
>   
>    **ANÁLISE BASE PACIENTES QUE TIVERAM AVC**
>
>    ![Visão Base AVC ](https://github.com/regivaldo717/C_A_D_S/blob/main/assets/Visao_Base_AVC.png)
>    
>    Análise dos gráficos pacientes que tiveram AVC:
>
> 	* O total da base de dados é de 249 registros, ou seja, 249 pacientes tiveram AVC no conjunto de 5110 pacientes.
> 	* Em relação ao gênero, 43,4% é do gênero masculino e 56,6% é do gênero feminino. Ou seja, percebe-se que não há uma correlação forte do gênero em relação a quem teve o AVC 
> 	* e o percentual dos gêneros se aproxima ao da base original.
> 	* Sobre a hipertensão, a maioria dos pacientes não são hipertensos. Existem apenas 66 hipertensos.
> 	* A distribuição das idades não é uma distribuição normal. Percebe-se que a faixa etária dos pacientes que tiveram AVC está acima de 40 anos, com uma concentração entre 60 e
> 	80 anos. O mesmo resultado encontrado nos gráficos analisados anteriormente.
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
>
### Integração entre Bases e Análise Exploratória

>
> Embora tenhamos trabalhado com duas bases de dados, optamos por apenas uma delas para a continuidade do projeto. Não foi possível integrá-las porque os dados eram individualizados por pacientes e os objetivos finais eram diferentes.
> 
> Na base estudada e adotada, o objetivo era prever se o paciente tem predisposição para o AVC. 
> 
> Na base estudada, mas não adotada, o objetivo era prever se o uso da heparina para pacientes que tiveram o AVC levaria a uma melhora do paciente em relação a não ter um infarto recorrente e, consequentemente, não morrer.
> 
> Desse modo, não foi possível uma integração entre as bases analisadas.

# Análises Realizadas
## Estratégia

>Os modelos identificados para a previsão do AVC são de **aprendizado de máquina supervisionado**, já que estamos tentando prever uma variável dependente (*target*), a partir de >uma lista de variáveis independentes (*features*). A variável target é a que irá identificar a propensão dos pacientes ao AVC, *stroke* ou *not stroke*.

>Desse modo, foram avaliados 5 modelos de aprendizado de máquina supervisionado:
>
>*   Regressão Logística
>*   Support Vector Machine (SVM)
>*   Random Forest
>*   K nearest neighbors
>*   Naive Bayes
> 
>As variáveis features adotadas tendo por base a análise de correlação foram:
>
>*   *age* 
>*   *bmi*
>*   *hypertension* 
>*   *avg_glucose_level*

>As variáveis *bmi*, *hypertension* tem correlação com *age*, que embora seja fraca, pode levar à ocorrência do **overfitting**.  Sobre a glicose no sangue, percebe-se um valor
>mais elevado nas pessoas com predisposição ao AVC e foi, também, utilizada como feature. A hipertensão, também, foi identificada como relacionada com o AVC, a partir da análise
>gráfica. Foi realizado um teste progressivo com as features indicadas para verificar a necessidade de mantê-las ou não e esse resultado será descrito no decorrer do relatório.
>
>Foram aplicadas três técnicas diferentes sobre os dados, a **subdivisão dos dados em treino e teste**, a **validação cruzada com *folds* estratificados** e a **sobreamostragem
>e busca dos melhores hiperparâmetros**  que serão descritas mais abaixo. O objetivo foi encontrar um modelo que melhor conseguisse prever a predisposição de um paciente ao
>AVC. Para isso, foi efetuada uma comparação entre os modelos baseada em diversas métricas de avaliação e foi escolhido o que teve a melhor performance com base na
>análise da matriz de confusão, das métricas de avaliação e das curvas ROC e Precision Recall.
>
>**Matriz de Confusão**

>| |      Positive                   | Negative       
>|:-----| :------------------------------ | :------------- 
>|**Positive** | TRUE POSITIVE | FALSE NEGATIVE
>|**Negative** | FALSE POSITIVE| TRUE NEGATIVE

>
>*   **True Positive**: classificação correta da classe Positivo
>*   **False Negative** (Erro Tipo II): erro em que o modelo previu a classe Negativo quando o valor real era classe Positivo
>*  **False Positive** (Erro Tipo I): erro em que o modelo previu a classe Positivo quando o valor real era classe Negativo
>*  **True Negative**: classificação correta da classe Negativo

>**Métricas de Avaliação**

>*  **Accuracy**: indica uma performance geral do modelo. Dentre todas as classificações, quantas o modelo classificou corretamente. (TP=TN)/(TP+TN+FP+FN)
>*  **Precision**: dentre todas as classificações de classe Positivo que o modelo fez, quantas estão corretas. TP/(TP+FP)
>*  **Recall**: dentre todas as situações de classe Positivo como valor esperado, quantas estão corretas. TP/(TP+FN)
>*  **F1-Score**: média harmônica entre precisão e recall. 2* (Precision * Recall)/(Precision + Recall)
>
>**Curva ROC**
>
>A Curva ROC permite evidenciar os valores para os quais existe maior otimização da sensibilidade em função da especificidade que corresponde ao ponto em que se encontra mais
>próxima do canto superior esquerdo do diagrama, uma vez que o o índice de positivos verdadeiro é 1 e o de falsos positivos é zero. Quanto mais perto a curva chega da diagonal
>de 45 graus do espaço ROC, menos preciso é o teste.
>
>A sensibilidade é o percentual das predições positivas corretas em relação a todas as positivas reais. Enquanto que especificidade é o percentual das predições negativas
>corretas em relação a todas as negativas reais.

>**Curva Precision-Recall**
>
>A curva Precision-Recall mostra o equilíbrio (*trade-off*) entre *Precisão* e *Recall*(sensibilidade). A Precisão representa a taxa de verdadeiros positivos (TP/(TP+FP)) e o
>Recall o valor preditivo positivo (TP/(TP+FN)) para um classificador usando diferentes limites de probabilidade. É indicada para bases de dados desbalanceadas. Quanto mais
>perto a curva está do canto superior esquerdo, melhor é a relação entre precisão e recall.
>
>Foram avaliados cinco algoritmos e será apresentada uma comparação entre todos eles para cada técnica aplicada. Porém, para sintetizar mais o relatório, para cada técnica
>avaliada serão apresentados os resultados com imagens apenas de dois dos cinco avaliados. O resultado completo visto no notebook python, nesse link: 
>![Notebook Projeto Final](/notebooks/Python/M0826A_Projeto_E3_Final_Marcia_Regivaldo_Amanda.ipynb). Para o train_test_split, serão apresentados Regressão Logística e o Naive
>Bayes. Para a validação cruzada, o SVM e o K-Neighbors e para a última técnica, a Regressão Logística e o Random Forest.

## Aspectos Conceituais Algoritmos
>
>O algoritmo de **regressão logística** gera um modelo, a partir de um conjunto de observações, que possibilita a predição de valores de uma variável categórica, em geral binária, a
>partir de uma série de variáveis independentes contínuas e/ou binárias. Muito utilizado na área médica para a predição de doenças, a partir das características dos pacientes.

>O **SVM (Support Vector Machine)** é um algoritmo de aprendizado supervisionado linear, que é utilizado na classificação de um conjunto de pontos onde busca uma linha que separa
>duas classes distintas, o SVM escolhe a reta entre eles chamada de hiperplano quando há mais de duas dimensões. Funciona da seguinte forma, a classificação das classes é
>colocada inicialmente, definindo assim cada ponto pertencente a cada uma das classes, e em seguida maximiza a margem. Desse modo, primeiro classifica corretamente as classes 
>e só depois define a distância entre as margens, a partir dessa restrição criada.

>O algoritmo **Random Forest** é um tipo de método *ensemble*, método que gera muitos classificadores e combina o seu resultado. No caso do Random Forest, ele gera várias árvores de
>decisão, cada um com suas particularidades e combinada o resultado da classificação de todos eles. Os métodos *ensemble* possuem uma característica que os diferencia dos
>algoritmos de aprendizado de máquina básicos, pois combinam diferentes modelos para se obter um único resultado. São mais robustos e complexos e geram um maior custo
>computacional.
>
>O **KNN (K Nearest Neighbors)** é um classificador onde o aprendizado é baseado na similaridade de um dado (um vetor) do outro (vizinho). Para o treinamento, são utilizados vetores
>de n dimensões e o número de vizinhos (K) é um hiperparâmetro utilizado pelo modelo. As etapas de um algoritmo KNN são: recebe um dado não classificado e mede a distância do
>novo dado em relação a cada um dos outros dados que já estão classificados; seleciona as K menores distâncias; verifica a(s) classe(s) dos dados que tiveram as K menores
>distâncias e contabiliza a quantidade de vezes que cada classe que apareceu; classifica esse novo dado como pertencente à classe que mais apareceu.

>E, por fim, o algoritmo **Naive Bayes** que é um classificador que busca encontrar uma probabilidade a posteriori como “possuir a doença, dado que recebeu um resultado positivo” 
> e, para isso, multiplica a probabilidade a priori que é de “possuir a doença” pela probabilidade de “receber um resultado positivo, dado que tem a doença”.

>Segue abaixo trecho do código que identifica as variáveis independentes (*features*) e dependente (*target*):
~~~python
# Identificando as variáveis features e a variável target
X = df3[['age', 'bmi', 'avg_glucose_level', 'hypertension']]
y = df3['stroke']

# O número de pacientes propensos ao AVC na base original totaliza 249, o que identifica essa classe como
# minoritária, já que o total de pessoas que não tiveram o AVC é de 4860
print ("Quantidade de pacientes propensos ao AVC = ", y.sum())
print ("Quantidade de pacientes NÃO propensos ao AVC = ", y.count()-y.sum())
~~~

## Técnica Avaliação: **subdivisão dados treino e teste**

>O **train-test split** é uma técnica para avaliar a performance de um algoritmo de aprendizado de máquina. Pode ser usado para problemas de classificação ou regressão e para
>qualquer algoritmo de aprendizado supervisionado. Divide um conjunto de dados em dois subconjuntos, um de treino e um de teste, conforme código abaixo.
~~~python
 #Subdivisão em dados de treino (75%) e teste (25%)
 X_train,X_test,y_train,y_test = train_test_split(X,y,test_size=0.25,random_state=42)
~~~~
### Regressão Logística
>O treinamento e teste do modelo de Regressão Logística pode ser visto no código abaixo:
~~~python
# Regressão Linear Logística usando o pacote linear_regression do sklearn
lreg= LogisticRegression(solver='liblinear',multi_class='ovr')
lreg.fit(X_train,y_train)
print ("Acurácia = ", lreg.score (X_test, y_test))
~~~
>E a plotagem da matriz de confusão e das curvas ROC e Precision-Recall, nesse trecho:
~~~python
# Visualização da matriz de confusão e métricas do modelo
y_pred = plotagem_matriz_confusao ("Regressão Logística", lreg, X_test, y_test, 
                                   0, compara=False)
# Visualização das Curvas ROC e Precision Recall para ambas as classes
roc_auc, ap = plotagem_curvas ("Regressão Logística", lreg, X_test, y_test, 0, 0)
roc_auc2, ap2 = plotagem_curvas ("Regressão Logística", lreg, X_test, y_test, 0, 1)
~~~
![Regressao Logistica Matriz](https://github.com/regivaldo717/C_A_D_S/blob/main/assets/Reg_Log_train_matriz.PNG)
![Regressao Logistica Curvas](https://github.com/regivaldo717/C_A_D_S/blob/main/assets/Reg_Log_train_curvas.PNG)


### Naive Bayes
>O treinamento e teste do modelo Naive Bayes pode ser visto no código abaixo:
~~~python
# Naive Bayes usando o pacote GaussianNBClassifier do sklearn
nb = GaussianNB ()
nb.fit (X_train, y_train)
print ("Acurácia = ", nb.score (X_test, y_test))
~~~
>E a plotagem da matriz de confusão e das curvas ROC e Precision-Recall, nesse trecho:
~~~python
# Visualização da matriz de confusão e métricas do modelo
y_pred = plotagem_matriz_confusao ("Naive Bayes", nb, X_test, y_test, 
                                   0, compara=False)
# Visualização das Curvas ROC e Precision Recall para ambas as classes
roc_auc, ap = plotagem_curvas ("Naive Bayes", nb, X_test, y_test, 0, 0)
roc_auc2, ap2 = plotagem_curvas ("Naive Bayes", nb, X_test, y_test, 0, 1)
~~~
![Naive Bayes Matriz](https://github.com/regivaldo717/C_A_D_S/blob/main/assets/Naive_bayes_train_matriz.PNG)
![Naive Bayes Curvas](https://github.com/regivaldo717/C_A_D_S/blob/main/assets/Naive_bayes_train_curvas.PNG)

## Comparação entre os modelos (*subdivisão dados treino e teste*)

>Inicialmente, foram separados os dados de teste e treino usando a função **train_test_split**, com 25% dos dados para teste e 75% para treino e esses dados foram utilizados em
>todos os algoritmos de ML identificados.
>
>Após algumas rodadas de teste gradativo com as features para verificar a ocorrência de **overfitting**, confirmou-se que as melhores features são as sinalizadas na conclusão da
>análise exploratória dos dados: *age*, *bmi*, *avg_glucose_level* e *hypertension*. Entretanto como o resultado geral foi de uma acurácia de 93%, com exceção do Naive Bayes com
>88%, existe a possibilidade de overfitting nos modelos encontrados.
>
>Além disso, deve-ser ficar atento ao objetivo que se deseja alcançar. A acurácia nos mostra quantos acertos os modelos tiveram, mas quantos desses acertos foram de pessoas com
>propensão ao AVC? Consideramos que **identificar pessoas predispostas ao AVC é mais importante do que ter uma acurácia elevada naquelas não propensas ao AVC.**
>
>Desse modo, novas métricas devem ser avaliadas, como a sensibilidade e especificidade. Observe na matriz de confusão que os verdadeiros negativos (True Negative) que
>identificam as pessoas predispostas ao AVC está zero ou insigificante em quase todos os algoritmos, com excessão do Naive Bayes que detectou 29 pacientes como verdadeiros
>negativos que, ainda assim, é baixo correspondendo a 36% dos que tiveram AVC. Ou seja, os algoritmos erraram na previsão dos casos de AVC, a maioria gerou uma especificidade 
>ou bem baixa, embora a sensibilidade tenha sido quase 1 (preveram corretamente a quantidade de pacientes não propensos ao AVC). 
>
>Além disso, a curva ROC de todos os modelos evidencia o resultado encontrado entre a especificidade e sensibilidade, o equilíbrio entre a sensibilidade e especificidade pode
>ser melhorado (AUC entre 0,68 e 0,84) e buscado uma curva mais próxima do canto superior direito. Embora tenha sido apresentado a curva ROC para ambas as classes consideradas
>como positivas no momento, o AUC será sempre similar, já que a curva trabalha com a sensibilidade e especificidade e essas métricas envolvem sempre as duas classes. 
>
>Sobre a curva Precision-Recall, os valores da precisão média (AP) que significa a média ponderada das precisões alcançadas em cada limite, usando como peso o aumento do recall
>do limite anterior, foram elevados para a classe "Not Stroke" com um AP em torno de 0,97. Porém, verificando essa curva para a classe "Stroke" o AP fica bem baixo, entre 0,10 e
>0,26. É um valor abaixo de 0,5. o que evidencia que o equilíbrio entre precisão e recall não é bom e que os dados estão desbalanceados. Quanto mais perto de 1, mais perfeito >será o modelo.
>
>Isso nos mostrou que deveríamos continuar evoluindo na aplicação de novas técnicas de avaliação dos algoritmos.

## Técnica Avaliação: **validação cruzada com *folds* estratificados**

>A validação cruzada  - **cross validation** - é uma técnica para avaliar a capacidade de generalização de um modelo, a partir de um conjunto de dados. Esta técnica é amplamente
>empregada em problemas onde o objetivo da modelagem é a predição. Permite a subdivisão dos dados em vários folds separando os dados em dados de teste e de treino.
>
>O **StratifiedKFold cross validation** é uma extensão da validação cruzada KFold e especificamente utilizada para problemas de classificação.  Separa o conjunto de dados em
>dados de treino e de teste, subdividindo em *folds* estratificados. Ou seja, os *folds* são definidos preservando a proporção de amostras de cada classe.
>
~~~python
# Gerando os folds com o Stratified KFold cross validator
folds = StratifiedKFold(n_splits=5, shuffle=True, random_state=42)
~~~~
### Support Vector Machine (SVM)
>O treinamento do modelo utilizando o *cross_val_score* com folds estratificados pode ser visto no código abaixo:
~~~python
# Avaliação do modelo SVM usando o cross_val_score
svm = SVC(gamma='auto')
cross_val_score(svm, X, y,cv=folds)
~~~
>E a plotagem da matriz de confusão, nesse trecho:
~~~python
# Visualização da matriz de confusão e parâmetros de performance
y_pred = plotagem_matriz_confusao ("SVM", svm, X_test, y_test, 
                                   folds, compara=False)
~~~
![SVM Matriz](https://github.com/regivaldo717/C_A_D_S/blob/main/assets/SVM_cross_matriz.PNG)

### K nearest neighbors
>O treinamento do modelo utilizando o *cross_val_score* com folds estratificados pode ser visto no código abaixo:
~~~python
# Avaliação do modelo KNeighbors usando o cross_val_score
kn = KNeighborsClassifier(n_neighbors=20, n_jobs=-1)
cross_val_score(kn, X, y,cv=folds)
~~~
>E a plotagem da matriz de confusão, nesse trecho:
~~~python
# Visualização da matriz de confusão e métricas do modelo
y_pred = plotagem_matriz_confusao ("K Neighbors", kn, X_test, y_test, 
                                   folds, compara=False)
~~~
![KNeighbors Matriz](https://github.com/regivaldo717/C_A_D_S/blob/main/assets/Kn_cross_matriz.PNG)

## Comparação entre os modelos (*validação cruzada com *folds* estratificados*)

>Evoluiu-se, assim, para a aplicação da técnica de validação cruzada (*cross validation*), onde os dados foram subdivididos em vários folds e foram separados os dados de teste e
>e treino.
>
>Inicialmente, os dados foram divididos em cinco folds e foi utilizada a função *cross_val_score*. Entretanto, percebeu-se que essa forma de divisão é muito direta (sequencial)
>e seria melhor misturar as informações, foi utilizando, assim, a função *KFold* com a opção *shuffle* configurada para true que randomiza a escolha dos dados.
>
>Porém, uma forma melhor de subdividir esse conjunto é proporcionalizar os cinco folds, técnica conhecida como **StratifiedKFold** onde os folds preservam a proporção de
>amostras de cada classe gerando, assim, dados estratificados. Para o caso em questão onde temos um grande desbalanceamento da base de dados (95% pacientes não tiveram AVC X 5%
>pacientes que tiveram AVC), essa técnica mostra-se bastante adequada.

>Observa-se que não houve uma mudança substancial em relação à acurácia dos modelos alcançada com a técnica anterior. Para os algoritmos Regressão Logística, Random Forest, SVM
>e K-Neighbors, a acurácia ficou em torno de 93% com uma especificidade de 0 ou quase 0 e com a sensibilidade de 1, porém conforme já foi comentado, **descobrir os pacientes
>propensos ao AVC tem uma relevância maior para o problema do que descobrir os não propensos**. O algoritmo NaiveBayes teve uma melhor performance geral, com uma acurácia de
>0,88%, uma especificidade de 0,38 e uma sensibilidade de 0,92. Verificando a matriz de confusão, o algoritmo acertou 30 pacientes com predisposição ao AVC em relação aos 80.
>Mas ainda é um acerto de apenas 38%. 

>Como ainda há um resultado de acurácia elevado, com predição incorreta dos propensos ao AVC, existe a possibilidade de overfitting. Devemos, assim, continuar a busca por um
>resultado melhor aplicando novas técnicas e ajustes aos nossos modelos.

## Técnica Avaliação: **sobreamostragem e busca dos melhores hiperparâmetros**

>Após as avaliações anteriores, percebe-se que existe uma dificuldade com essa base de dados, nossas classes são desequilibradas. Uma abordagem para lidar com conjuntos de dados
>desequilibrados é sobreamostrar a classe minoritária. A abordagem mais simples envolve a duplicação de exemplos na classe minoritária, embora esses exemplos não adicionem
>nenhuma informação nova ao modelo. Em vez disso, novos exemplos podem ser sintetizados a partir dos exemplos existentes. Este é um tipo de aumento de dados para a classe
>minoritária e é referido como **Synthetic Minority Oversampling Technique**, or **SMOTE**, para abreviar.
>
>Além disso, será utilizada uma função para a busca dos melhores hiperparâmetros a serem utilizados nos algoritmos.
>
>Segue abaixo o código da função que aplica a sobreamostragem e o uso do grid search nos modelos:
~~~python
# Modelo utilizando o SMOTE (se parâmetro setado for True) ou 
# sem o SMOTE (se parâmetro setado for False)

def modelo_com_smote(X, y, classificador, param_grid, smote):
    X_train, X_test, y_train, y_test = train_test_split(X,
                                                        y,
                                                        test_size=0.3,
                                                        stratify=y,
                                                        random_state=42)
    if smote == True:
        pipeline = imbpipeline(steps = [['smote', SMOTE(random_state=42)],
                                       ['scaler', MinMaxScaler()],
                                       ['classifier', classificador]])
    else:
        smote = SMOTE(random_state = 42)
        X_train, y_train = smote.fit_resample(X_train, y_train)
        pipeline = Pipeline(steps = [['scaler', MinMaxScaler()],
                                     ['classifier', classificador]])
    folds = StratifiedKFold(n_splits=5,
                            shuffle=True,
                            random_state=42)
    score='f1'
    grid_search = GridSearchCV(estimator=pipeline,
                               refit=True,
                               param_grid=param_grid,
                               scoring=score,
                               cv=folds,
                               n_jobs=-1)
    grid_search.fit(X_train, y_train)
    return (grid_search)   
~~~

### Regressão Logística
>O treinamento do modelo de Regressão Logística utilizando o *smote* e busca dos melhores hiperparâmetros, pode ser visto no código abaixo:
~~~python
# Regressão Logística
classificador = LogisticRegression(random_state=42)
param_grid = {'classifier__C':[0.001, 0.01, 0.1, 1, 10, 100, 1000]}
modelo = modelo_com_smote (X, y, classificador, param_grid, smote=True)
y_pred = plotagem_matriz_confusao ("Regressao Logística", modelo, X_test, y_test, 
                                   folds, compara=True)
~~~
>E a plotagem da matriz de confusão e das curvas ROC e Precision-Recall, neste trecho:
~~~python
# Visualização da matriz de confusão e métricas do modelo
y_pred = plotagem_matriz_confusao ("K Neighbors", kn, X_test, y_test, 
                                   folds, compara=False)
# Visualização das Curvas ROC e Precision Recall de ambas as classes
roc_auc, ap = plotagem_curvas ("Regressao Logística", modelo, X_test, y_test, folds, 0)
roc_auc2, ap2 = plotagem_curvas ("Regressao Logística", modelo, X_test, y_test, folds, 1)
# Computa métricas do modelo
computa_metricas ("LogisticRegression", y_test, y_pred, roc_auc, roc_auc2, ap, ap2)
~~~
![Regressao Logística Matriz](https://github.com/regivaldo717/C_A_D_S/blob/main/assets/Lr_smote_matriz.PNG)
![Regressão Logística Curvas](https://github.com/regivaldo717/C_A_D_S/blob/main/assets/Lr_smote_curvas.PNG)

### Random Forest
>O treinamento do modelo de Random Forest utilizando o *smote* e busca dos melhores hiperparâmetros, pode ser visto no código abaixo:
~~~python
# Regressão Logística
classificador = LogisticRegression(random_state=42)
param_grid = {'classifier__C':[0.001, 0.01, 0.1, 1, 10, 100, 1000]}
modelo = modelo_com_smote (X, y, classificador, param_grid, smote=True)
y_pred = plotagem_matriz_confusao ("Regressao Logística", modelo, X_test, y_test, 
                                   folds, compara=True)
~~~
>E a plotagem da matriz de confusão e das curvas ROC e Precision-Recall, neste trecho:
~~~python
# Visualização da matriz de confusão e métricas do modelo
y_pred = plotagem_matriz_confusao ("K Neighbors", kn, X_test, y_test, 
                                   folds, compara=False)
# Visualização das Curvas ROC e Precision Recall de ambas as classes
roc_auc, ap = plotagem_curvas ("Regressao Logística", modelo, X_test, y_test, folds, 0)
roc_auc2, ap2 = plotagem_curvas ("Regressao Logística", modelo, X_test, y_test, folds, 1)
# Computa métricas do modelo
computa_metricas ("LogisticRegression", y_test, y_pred, roc_auc, roc_auc2, ap, ap2)
~~~
![RandomForest Matriz](https://github.com/regivaldo717/C_A_D_S/blob/main/assets/Rf_smote_matriz.PNG)
![RandomForest Matriz](https://github.com/regivaldo717/C_A_D_S/blob/main/assets/Rf_smote_curvas.PNG)

## Comparação entre os modelos (**sobreamostragem e busca dos melhores hiperparâmetros**)

>Foi utilizada a técnica de sobreamostragem (SMOTE) e a busca dos melhores hiperparâmetros com a função GridSearchCV. Para cada modelo selecionado, foram passados alguns
>hiperparâmetros para a função GridSearchCV que fez o ajuste (tune) identificando os melhores. Segue abaixo para comparação as métricas de cada algoritmo analisado.
![Metricas Modelo](https://github.com/regivaldo717/C_A_D_S/blob/main/assets/Metricas_modelos.PNG)
![Matriz_confusao](https://github.com/regivaldo717/C_A_D_S/blob/main/assets/Matriz_confusao.PNG)
>
>A **acurácia** dos modelos ficou entre 67% e 86%. O modelo de melhor acurácia foi o *RandomForest* (86%). Porém a acurácia não é a única métrica a ser analisada, visto que é
>relevante para o problema ser acertivo na identificação do grupo de pacientes propensos ao AVC. O **F1_Score** que é uma média harmônica entre precisão e recall teve um
>resultado entre 0,79 e 0,92 para a classe majoritária (Not Stroke), um resultado muito bom. Porém, para a classe minoritária (Stroke), o resultado ficou entre 0,22 e 0,26, que
>é um valor baixo.
>
>A **Precisão** para a classe dos não propensos ao AVC é bem elevada, entre 0,96 e 0,98, mostrando que os acertos para esta previsão é muito bom em todos os algoritmos. E, para
>a classe minoritária é muita baixa, entre 0,13 e 0,20. O **Recall** expressa a sensibilidade (na classe majoritária) e especificidade (na classe minoritária).  Observa-se que a
>melhor relação entre sensibilidade e especificidade foi a do algoritmo de Regressão Logística (0,73 e 0,74), seguido do Naive Bayes (0,68 e 0,74). O Random Forest teve uma
>sensibilidade elevada, mas uma especificidade mais baixa (0,89 e 0,4).
>
>Sobre a **curva ROC**, os melhores resultados são dos algoritmos Random Forest (0,96) e K-Neighbors (0,94). Os outros três algoritmos possuem um AUC entre 0,81 e 0,82. Observa
>se que o AUC é similar para a classe majoritária e minoritária, isso porque a sensibilidade/especificidade de ambas as classes são envolvidas no cálculo da área sob a curva. Em
>se tratando da **curva Precision-Recall**, o valor do AP (Average Precision) para a classe majoritária é bom em todos os algoritmos, entre 0,98 e 1. Mas o da classe minoritária
>é substancialmente elevado no Random Forest (0,75), quando comparado aos demais algoritmos. 
>
>A **matriz de confusão** reforça o resultado das métricas acima, mostrando que os algoritmos Regressão Logística, SVC e Naive Bayes tiveram um Verdadeiro Negativo entre 59 e
>61. O Random Forest teve o melhor Verdadeiro Positivo 1066 de 1198, seguido do KNeighbors e da Regressão Logística.
>
>**O desempenho geral do Random Forest é superior** a todos os algoritmos, entretanto pensando na importância da especificidade, **a recomendação é que se utilize o algoritmo de
>Regressão Logística para a predição do AVC, devido ao equilíbrio encontrado entre a sensibilidade e especificidade** e de possuir uma acurácia e demais métricas de boa
>aceitação.

## Conclusão
>
>O objetivo do projeto é identificar padrões nos dados dos pacientes para efetuar uma predição dos que possuem predisposição para o AVC.
>
>Foi efetuada uma análise exploratória dos dados dos pacientes, verificada as correlações entre os dados, identificada as variáveis independentes e a variável target. Após a
>fase inicial de exploração e análise gráfica, elencou-se alguns possíveis algoritmos para esse aprendizado de máquina supervisionado. Algumas técnicas foram aplicadas para
>avaliação dos algoritmos e, no final, a sobreamostragem junto com a busca dos melhores hiperparâmetros mostrou-se mais eficaz.
>
>A grande questão é a resposta que se quer buscar para esse problema. É mais relevante identificar os pacientes não propensos ao AVC ou os que são propensos? Chegou-se a
>conclusão que é mais importante identificar as pessoas propensas ao AVC, já que elas poderão mudar seus hábitos alimentares e de vida para evitar que se concretize essa
>predição. Desse modo, as métricas com maior relevância para análise foram a sensibilidade e especificidade, em conjunto com a acurácia. A matriz de confusão e a curvas ROC e
>Precision-Recall também foram avaliadas. 
>
>O Random Forest foi o algoritmo com um melhor desempenho em quase todas as métricas. Entretanto, devido à importância da especificidade no contexto da predição analisada, não
>foi o escolhido.
>
>No conjunto geral, o **algoritmo de Regressão Logística mostrou-se mais adequado** pelo equilíbrio apresentado entre as métricas de sensibilidade, especificidade, acurácia. 
>
>![Link Notebook Projeto Final](/notebooks/Python/M0826A_Projeto_E3_Final_Marcia_Regivaldo_Amanda.ipynb)


# Ferramentas
>
> As ferramentas utilizadas para entrega do projeto foram:
> 
>* **Jupyter Notebook**
>* **Linguagem Python**
>* **Orange**
>
> As ferramentas *Knime* e *R* também foram exploradas durante o projeto.
> 
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
> THRIFT, Amanda G. et al. Global stroke statistics. International Journal of Stroke, v. 12, n. 1, p. 13-32, 2017.
> 
> KIM, Joosup et al. Global stroke statistics 2019. International Journal of Stroke, v. 15, n. 8, p. 819-838, 2020.
> 
> XIANFANG, Wang et al. Predicting the types of ion channel-targeted conotoxins based on avc-svm model. BioMed research international, v. 2017, 2017.
> 
> PEI, Dongmei et al. Accurate and rapid screening model for potential diabetes mellitus. BMC medical informatics and decision making, v. 19, n. 1, p. 1-8, 2019.
> 
> Acidente Vascular Cerebral. Hospital Albert Einstein. Disponível em: <https://www.einstein.br/doencas-sintomas/avc> Acesso em: 11 abr 2021.
> 
> SITAR-TĂUT, A. et al. Using machine learning algorithms in cardiovascular disease risk evaluation. Age, v. 1, n. 4, p. 4, 2009.
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
> 
> SANDERCOCK, P. A.G., NIEWADA, M., CZŁONKOWSKA, A. et. al. The International Stroke Trial database.Trials  2011, 12,101 (2011). https://doi.org/10.1186/1745-6215-12-101 - Acesso em 27 abr. 2021.
