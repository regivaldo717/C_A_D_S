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
> * Quais as transformações e tratamentos (e.g., dados faltantes e limpeza) feitos?
> 
>   Começamos com a base do laboratório John Snow Labs dos EUA, que foi feita em parceria com diversos hospitais do mundo todo. Nessa base 19.435 pacientes participaram fazendo 
> acompanhamento médico, e os dados obtidos desse acompanhamento foram atribuídos em 112 questões, distribuídas nas colunas. Esses dados seriam utilizados para complementar a
> questão primária se é possível predizer se a pessoa terá AVC, entretanto, analisando os dados foi possível verificar que ele responde melhor a pergunta de se os pacientes que
> foram tratados com heparina e AAS continuaram vivos ou morreram em seis meses. Para iniciar a análise foram feitos tratamentos dessa base como: alteração e renomeação de 
> colunas, remoção de colunas, intercepção de colunas e media. 
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
> * Por que este banco não foi adotado?
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
>   	* id
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
>   	* is_any_stroke_indicator_14days 
>    	* dose_heparin 
>    	* is_stroke 
>    	* type_stroke 
>    	* is_recurrent_stroke_indicator 
>    	* type_recurrent_stroke 
>    	* days_to_recurrent_stroke 
>   		
> * Análise Exploratória (inicial) sobre esta base.
> 
> 	Com a análise exploratória em Jupyter Notebook e Orange 3.0 desses dados foram estudadas algumas relações do uso da heparina com número de mortos para responder a questão do próprio artigo.
> 	
> 	Do total de participantes desse estudo a quantidade total de pessoas mortas foram 2.889, sendo que dentre estas 1.388 morreram sem fazer nenhum tratamento com heparina e as outras e 1.501 pessoas restantes fizeram tratamento com heparina. Dos 1.388 mortos que não fizeram tratamento, 319 morreram de AVC e o restante foi relacionado a diversas causas. Das 1.501 pessoas que fizeram tratamento com heparina e morreram, 332 mortes foram por AVC. Sendo assim, do total do número de mortos, apenas 651 morreram de AVC e eles morreram em até 14 dias depois pela doença. Já os 2.238 restantes morreram em até 6 meses por outras causas.
> 	Pelos resultados obtidos pode-se perceber que metade dessa amostra fez tratamento com heparina e a outra metade não fez. Além disso, das 1.501 pessoas que fizeram tratamento, 22,11% morreu de AVC e, das 1.388 que não fizeram só 22,98% morreram de AVC, mostrando que em ambos os conjuntos o percentil de AVC foi semelhante. Ademais, 22,5% da amostra total de fato morreu pelo AVC sendo o restante por diversas causas. Isso pode mostrar que as causas de mortes estão mais correlacionadas a outras doenças do que ao próprio AVC, e que o tratamento com heparina não tenha alguma implicancia na redução do número de mortos.
> 	Porém, fazendo uma análise em “feature statistic” do Orange 3.0 e no próprio notebook foi possível notar que em “type recurrent stroke” - ischaemic estão faltando 16.868 dados (93%), em “cause of death” - pneumonia estão faltando 15.071 dados (83%) e em “type stroke” - ischaemic estão faltando 438 dados (2%), assim como mostra a tabela abaixo:

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

>    Para classificar esses dados faltantes foi plotado um Scatter Plot no Orange 3.0 “Dose Heparin” x “Days to Recurrent Stroke” com a coloração “Cause of Death” e nele é possível interpretar que independente da dose de heparina por volta de 20 à 60 dias há a recorrência de AVC isquêmico e isso relaciona-se a causa de algumas mortes, confirmando que o tratamento com heparina não interfere na redução do número de mortes, assim classificando-o os faltantes relacionados à “type recurrent stroke” como MCAR e “cause of death” como MAR, pois a observação que está faltando não tem nada a ver com os valores faltantes, mas sim com os valores das variáveis ​​observadas. Isso é visto na faixa de idade dos 20 à 60 anos, onde faltam dados para cause of death.

>	
### Bases Estudadas e Adotadas

> Para cada base, coloque uma mini-tabela no modelo a seguir e depois detalhamento sobre como ela foi analisada/usada, conforme exemplo a seguir.

Base de Dados | Endereço na Web | Resumo descritivo
----- | ----- | -----
Título da Base | http://base1.org/ | Breve resumo (duas ou três linhas) sobre a base.

> Faça uma descrição sobre o que concluiu sobre esta base. Sugere-se que respondam perguntas ou forneçam informações indicadas a seguir:
> * Qual o esquema/dicionário desse banco (o formato é livre)?
> * O que descobriu sobre esse banco?
> * Quais as transformações e tratamentos (e.g., dados faltantes e limpeza) feitos?
> * Apresente aqui uma Análise Exploratória (inicial) sobre esta base.

### Integração entre Bases e Análise Exploratória

> Descreva etapas de integração de fontes de dados e apresente a seguir uma análise exploratória que envolva ambas.

# Ferramentas
>
> As ferramentas destacadas em negrito serão utilizadas para entrega do projeto, já as outras mencionadas serão exploradas e seu uso será decidido durante o projeto:
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
> 
> SANDERCOCK, P. A.G., NIEWADA, M., CZŁONKOWSKA, A. et. al. The International Stroke Trial database.Trials  2011, 12,101 (2011). https://doi.org/10.1186/1745-6215-12-101 - Acesso em 27/04/2021 às 23:50



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


