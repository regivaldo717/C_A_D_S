# Análises Realizadas
## Estratégia
Os modelos identificados para a previsão do AVC são de **aprendizado de máquina supervisionado**, já que estamos tentando prever uma variável dependente (*target*), a partir de uma lista de variáveis independentes (*features*). A variável target é a que irá identificar a propensão dos pacientes ao AVC, *stroke* ou *not stroke*.

Desse modo, foram avaliados 5 modelos de aprendizado de máquina supervisionado:

*   Regressão Logística
*   Support Vector Machine (SVM)
*   Random Forest
*   K Neighbors
*   Naive Bayes
 
As variáveis features adotadas tendo por base a análise de correlação entre elas e da correlação com a variável target "stroke" foram:

*   *age* 
*   *bmi*
*   *hypertension* 
*   *avg_glucose_level*

As variáveis *bmi*, *hypertension* tem correlação com *age*, que embora seja fraca, pode levar à ocorrência do **overfitting**.  Sobre a glicose no sangue, percebe-se um valor mais elevado nas pessoas com predisposição ao AVC e foi, também, utilizada como feature. A hipertensão, também, foi identificada como relacionada com o AVC, a partir da análise gráfica. Foi realizado um teste progressivo com as features indicadas para verificar a necessidade de mantê-las ou não e esse resultado será descrito no decorrer do relatório.

Foram aplicadas 3 técnicas diferentes sobre os dados, o **subdivisão dos dados em treino e teste**, o **validação cruzada com *folds* estratificados** e o **sobreamostragem e busca dos melhores hiperparâmetros**  que serão descritas mais abaixo. O objetivo foi encontrar um modelo que melhor conseguisse prever a predisposição de um paciente ao AVC. Para isso, foi efetuada uma comparação entre os modelos baseada no resultado de diversas métricas de avaliação e escolhido o que teve a melhor performance com base na análise da matriz de confusão, das métricas de avaliação e das curvas ROC e Precision Recall.

**Matriz de Confusão**

| |      Positive                   | Negative       
|:-----| :------------------------------ | :------------- 
|**Positive** | TRUE POSITIVE | FALSE NEGATIVE
|**Negative** | FALSE POSITIVE| TRUE NEGATIVE

>
*   **True Positive**: classificação correta da classe Positivo
*   **False Negative** (Erro Tipo II): erro em que o modelo previu a classe Negativo quando o valor real era classe Positivo
*  **False Positive** (Erro Tipo I): erro em que o modelo previu a classe Positivo quando o valor real era classe Negativo
*  **True Negative**: classificação correta da classe Negativo

**Métricas de Avaliação**

*  **Accuracy**: indica uma performance geral do modelo. Dentre todas as classificações, quantas o modelo classificou corretamente. (TP=TN)/(TP+TN+FP+FN)
*  **Precision**: dentre todas as classificações de classe Positivo que o modelo fez, quantas estão corretas. TP/(TP+FP)
*  **Recall**: dentre todas as situações de classe Positivo como valor esperado, quantas estão corretas. TP/(TP+FN)
*  **F1-Score**: média harmônica entre precisão e recall. 2* (Precision * Recall)/(Precision + Recall)

**Curva ROC**

A Curva ROC permite evidenciar os valores para os quais existe maior otimização da sensibilidade em função da especificidade que corresponde ao ponto em que se encontra mais próxima do canto superior esquerdo do diagrama, uma vez que o o índice de positivos verdadeiro é 1 e o de falsos positivos é zero. Quanto mais perto a curva chega da diagonal de 45 graus do espaço ROC, menos preciso é o teste.

A sensibilidade é o percentual das predições positivas corretas em relação a todas as positivas reais. Enquanto que especificidade é o percentual das predições negativas corretas em relação a todas as negativas reais.

**Curva Precision-Recall**

A curva Precision-Recall mostra o equilíbrio (*trade-off*) entre *Precisão* e *Recall*(sensibilidade). A Precisão representa a taxa de verdadeiros positivos (TP/(TP+FP)) e o Recall o valor preditivo positivo (TP/(TP+FN)) para um classificador usando diferentes limites de probabilidade. É indicada para bases de dados desbalanceadas. Quanto mais perto a curva está do canto superior esquerdo, melhor é a relação entre precisão e recall.

Foram avaliados cinco algoritmos e será apresentada uma comparação entre todos eles para cada técnica aplicada. Porém, para sintetizar mais o relatório, para cada técnica avaliada serão apresentados os resultados com imagens apenas de dois dos cinco avaliados. O resultado completo visto no notebook python, nesse link: ![Link Notebook Projeto Final](/notebooks/Python/M0826A_Projeto_E3_Final_Marcia_Regivaldo_Amanda.ipynb). Para o train_test_split, serão apresentados Regressão Logística e o Naive Bayes. Para a validação cruzada, o SVM e o K-Neighbors e para a última técnica, a Regressão Logística e o Random Forest.

Segue abaixo trecho do código que identifica as variáveis independentes (*features*) e dependente (*target*):
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

O **train-test split** é uma técnica para avaliar a performance de um algoritmo de aprendizado de máquina. Pode ser usado para problemas de classificação ou regressão e para qualquer algoritmo de aprendizado supervisionado. Divide um conjunto de dados em dois subconjuntos, um de treino e um de teste, conforme código abaixo.
~~~python
 #Subdivisão em dados de treino (75%) e teste (25%)
 X_train,X_test,y_train,y_test = train_test_split(X,y,test_size=0.25,random_state=42)
~~~~
### Regressão Logística
O treinamento e teste do modelo de Regressão Logística pode ser visto no código abaixo:
~~~python
# Regressão Linear Logística usando o pacote linear_regression do sklearn
lreg= LogisticRegression(solver='liblinear',multi_class='ovr')
lreg.fit(X_train,y_train)
print ("Acurácia = ", lreg.score (X_test, y_test))
~~~
E a plotagem da matriz de confusão e das curvas ROC e Precision-Recall, nesse trecho:
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
O treinamento e teste do modelo Naive Bayes pode ser visto no código abaixo:
~~~python
# Naive Bayes usando o pacote GaussianNBClassifier do sklearn
nb = GaussianNB ()
nb.fit (X_train, y_train)
print ("Acurácia = ", nb.score (X_test, y_test))
~~~
E a plotagem da matriz de confusão e das curvas ROC e Precision-Recall, nesse trecho:
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

Inicialmente, foram separados os dados de teste e treino usando a função **train_test_split**, com 25% dos dados para teste e 75% para treino e esses dados foram utilizados em todos os algoritmos de ML identificados.

Após algumas rodadas de teste gradativo com as features para verificar a ocorrência de **overfitting**, confirmou-se que as melhores features são as sinalizadas na conclusão da análise exploratória dos dados: *age*, *bmi*, *avg_glucose_level* e *hypertension*. Entretanto como o resultado geral foi de uma acurácia de 93%, com exceção do Naive Bayes com 88%, existe a possibilidade de overfitting nos modelos encontrados.

Além disso, deve-ser ficar atento ao objetivo que se deseja alcançar. A acurácia nos mostra quantos acertos os modelos tiveram, mas quantos desses acertos foram de pessoas com propensão ao AVC? Consideramos que **identificar pessoas predispostas ao AVC é mais importante do que ter uma acurácia elevada naquelas não propensas ao AVC.**

Desse modo, novas métricas devem ser avaliadas, como a sensibilidade e especificidade. Observe na matriz de confusão que os verdadeiros negativos (True Negative) que identificam as pessoas predispostas ao AVC está zero ou insigificante em quase todos os algoritmos, com excessão do Naive Bayes que detectou 29 pacientes como verdadeiros negativos que, ainda assim, é baixo correspondendo a 36% dos que tiveram AVC. Ou seja, os algoritmos erraram na previsão dos casos de AVC, a maioria gerou uma especificidade 0 ou bem baixa, embora a sensibilidade tenha sido quase 1 (preveram corretamente a quantidade de pacientes não propensos ao AVC). 

Além disso, a curva ROC de todos os modelos evidencia o resultado encontrado entre a especificidade e sensibilidade, o equilíbrio entre a sensibilidade e especificidade pode ser melhorado (AUC entre 0,68 e 0,84) e buscado uma curva mais próxima do canto superior direito. Embora tenha sido apresentado a curva ROC para ambas as classes consideradas como positivas no momento, o AUC será sempre similar, já que a curva trabalha com a sensibilidade e especificidade e essas métricas envolvem sempre as duas classes. 

Sobre a curva Precision-Recall, os valores da precisão média (AP) que significa a média ponderada das precisões alcançadas em cada limite, usando como peso o aumento do recall do limite anterior, foram elevados para a classe "Not Stroke" com um AP em torno de 0,97. Porém, verificando essa curva para a classe "Stroke" o AP fica bem baixo, entre 0,10 e 0,26. É um valor abaixo de 0,5. o que evidencia que o equilíbrio entre precisão e recall não é bom e que os dados estão desbalanceados. Quanto mais perto de 1, mais perfeito será o modelo.

Isso nos mostrou que deveríamos continuar evoluindo na aplicação de novas técnicas de avaliação dos algoritmos.

## Técnica Avaliação: **validação cruzada com *folds* estratificados**

A validação cruzada  - **cross validation** - é uma técnica para avaliar a capacidade de generalização de um modelo, a partir de um conjunto de dados. Esta técnica é amplamente empregada em problemas onde o objetivo da modelagem é a predição. Permite a subdivisão dos dados em vários folds separando os dados em dados de teste e de treino.

O **StratifiedKFold cross validation** é uma extensão da validação cruzada KFold e especificamente utilizada para problemas de classificação.  Separa o conjunto de dados em dados de treino e de teste, subdividindo em *folds* estratificados. Ou seja, os *folds* são definidos preservando a proporção de amostras de cada classe.

~~~python
# Gerando os folds com o Stratified KFold cross validator
folds = StratifiedKFold(n_splits=5, shuffle=True, random_state=42)
~~~~
### Support Vector Machine (SVM)
O treinamento do modelo utilizando o *cross_val_score* com folds estratificados pode ser visto no código abaixo:
~~~python
# Avaliação do modelo SVM usando o cross_val_score
svm = SVC(gamma='auto')
cross_val_score(svm, X, y,cv=folds)
~~~
E a plotagem da matriz de confusão, nesse trecho:
~~~python
# Visualização da matriz de confusão e parâmetros de performance
y_pred = plotagem_matriz_confusao ("SVM", svm, X_test, y_test, 
                                   folds, compara=False)
~~~
![SVM Matriz](https://github.com/regivaldo717/C_A_D_S/blob/main/assets/SVM_cross_matriz.PNG)

### K Neighbors
O treinamento do modelo utilizando o *cross_val_score* com folds estratificados pode ser visto no código abaixo:
~~~python
# Avaliação do modelo KNeighbors usando o cross_val_score
kn = KNeighborsClassifier(n_neighbors=20, n_jobs=-1)
cross_val_score(kn, X, y,cv=folds)
~~~
E a plotagem da matriz de confusão, nesse trecho:
~~~python
# Visualização da matriz de confusão e métricas do modelo
y_pred = plotagem_matriz_confusao ("K Neighbors", kn, X_test, y_test, 
                                   folds, compara=False)
~~~
![KNeighbors Matriz](https://github.com/regivaldo717/C_A_D_S/blob/main/assets/Kn_cross_matriz.PNG)

## Comparação entre os modelos (*validação cruzada com *folds* estratificados*)

Evoluiu-se, assim, para a aplicação da técnica de validação cruzada (*cross validation*), onde os dados foram subdivididos em vários folds e foram separados os dados de teste e treino.

Inicialmente, os dados foram divididos em cinco folds e foi utilizada a função *cross_val_score*. Entretanto, percebeu-se que essa forma de divisão é muito direta (sequencial) e seria melhor misturar as informações, foi utilizando, assim, a função *KFold* com a opção *shuffle* configurada para true que randomiza a escolha dos dados.

Porém, uma forma melhor de subdividir esse conjunto é proporcionalizar os cinco folds, técnica conhecida como **StratifiedKFold** onde os folds preservam a proporção de amostras de cada classe gerando, assim, dados estratificados. Para o caso em questão onde temos um grande desbalanceamento da base de dados (95% pacientes não tiveram AVC X 5% pacientes que tiveram AVC), essa técnica mostra-se bastante adequada.

Observa-se que não houve uma mudança substancial em relação à acurácia dos modelos alcançada com a técnica anterior. Para os algoritmos Regressão Logística, Random Forest, SVM e K-Neighbors, a acurácia ficou em torno de 93% com uma especificidade de 0 ou quase 0 e com a sensibilidade de 1, porém conforme já foi comentado, **descobrir os pacientes propensos ao AVC tem uma relevância maior para o problema do que descobrir os não propensos**. O algoritmo NaiveBayes teve uma melhor performance geral, com uma acurácia de 0,88%, uma especificidade de 0,38 e uma sensibilidade de 0,92. Verificando a matriz de confusão, o algoritmo acertou 30 pacientes com predisposição ao AVC em relação aos 80. Mas ainda é um acerto de apenas 38%. 

Como ainda há um resultado de acurácia elevado, com predição incorreta dos propensos ao AVC, existe a possibilidade de overfitting. Devemos, assim, continuar a busca por um resultado melhor aplicando novas técnicas e ajustes aos nossos modelos.

## Técnica Avaliação: **sobreamostragem e busca dos melhores hiperparâmetros**

Após as avaliações anteriores, percebe-se que existe uma dificuldade com essa base de dados, nossas classes são desequilibradas. Uma abordagem para lidar com conjuntos de dados desequilibrados é sobreamostrar a classe minoritária. A abordagem mais simples envolve a duplicação de exemplos na classe minoritária, embora esses exemplos não adicionem nenhuma informação nova ao modelo. Em vez disso, novos exemplos podem ser sintetizados a partir dos exemplos existentes. Este é um tipo de aumento de dados para a classe minoritária e é referido como **Synthetic Minority Oversampling Technique**, or **SMOTE**, para abreviar.

Além disso, será utilizada uma função para a busca dos melhores hiperparâmetros a serem utilizados nos algoritmos.

Segue abaixo o código da função que aplica a sobreamostragem e o uso do grid search nos modelos:
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
O treinamento do modelo de Regressão Logística utilizando o *smote* e busca dos melhores hiperparâmetros, pode ser visto no código abaixo:
~~~python
# Regressão Logística
classificador = LogisticRegression(random_state=42)
param_grid = {'classifier__C':[0.001, 0.01, 0.1, 1, 10, 100, 1000]}
modelo = modelo_com_smote (X, y, classificador, param_grid, smote=True)
y_pred = plotagem_matriz_confusao ("Regressao Logística", modelo, X_test, y_test, 
                                   folds, compara=True)
~~~
E a plotagem da matriz de confusão e das curvas ROC e Precision-Recall, neste trecho:
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
![Regressão Logística Curvas](https://github.com/regivaldo717/C_A_D_S/blob/main/assets/Lr_smote_curva.PNG)

### Random Forest
O treinamento do modelo de Random Forest utilizando o *smote* e busca dos melhores hiperparâmetros, pode ser visto no código abaixo:
~~~python
# Regressão Logística
classificador = LogisticRegression(random_state=42)
param_grid = {'classifier__C':[0.001, 0.01, 0.1, 1, 10, 100, 1000]}
modelo = modelo_com_smote (X, y, classificador, param_grid, smote=True)
y_pred = plotagem_matriz_confusao ("Regressao Logística", modelo, X_test, y_test, 
                                   folds, compara=True)
~~~
E a plotagem da matriz de confusão e das curvas ROC e Precision-Recall, neste trecho:
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

Foi utilizada a técnica de sobreamostragem (SMOTE) e a busca dos melhores hiperparâmetros com a função GridSearchCV. Para cada modelo selecionado, foram passados alguns hiperparâmetros para a função GridSearchCV que fez o ajuste (tune) identificando os melhores. Segue abaixo para comparação as métricas de cada algoritmo analisado.
![Metricas Modelo](https://github.com/regivaldo717/C_A_D_S/blob/main/assets/Metricas_modelos.PNG)
![Matriz_confusao](https://github.com/regivaldo717/C_A_D_S/blob/main/assets/Matriz_confusao.PNG)

A **acurácia** dos modelos ficou entre 67% e 86%. O modelo de melhor acurácia foi o *RandomForest* (86%). Porém a acurácia não é a única métrica a ser analisada, visto que é relevante para o problema ser acertivo na identificação do grupo de pacientes propensos ao AVC. O **F1_Score** que é uma média harmônica entre precisão e recall teve um resultado entre 0,79 e 0,92 para a classe majoritária (Not Stroke), um resultado muito bom. Porém, para a classe minoritária (Stroke), o resultado ficou entre 0,22 e 0,26, que é um valor baixo.

A **Precisão** para a classe dos não propensos ao AVC é bem elevada, entre 0,96 e 0,98, mostrando que os acertos para esta previsão é muito bom em todos os algoritmos. E, para a classe minoritária é muita baixa, entre 0,13 e 0,20. O **Recall** expressa a sensibilidade (na classe majoritária) e especificidade (na classe minoritária).  Observa-se que a melhor relação entre sensibilidade e especificidade foi a do algoritmo de Regressão Logística (0,73 e 0,74), seguido do Naive Bayes (0,68 e 0,74). O Random Forest teve uma sensibilidade elevada, mas uma especificidade mais baixa (0,89 e 0,4).

Sobre a **curva ROC**, os melhores resultados são dos algoritmos Random Forest (0,96) e K-Neighbors (0,94). Os outros três algoritmos possuem um AUC entre 0,81 e 0,82. Observa-se que o AUC é similar para a classe majoritária e minoritária, isso porque a sensibilidade/especificidade de ambas as classes são envolvidas no cálculo da área sob a curva. Em se tratando da **curva Precision-Recall**, o valor do AP (Average Precision) para a classe majoritária é bom em todos os algoritmos, entre 0,98 e 1. Mas o da classe minoritária é substancialmente elevado no Random Forest (0,75), quando comparado aos demais algoritmos. 

A **matriz de confusão** reforça o resultado das métricas acima, mostrando que os algoritmos Regressão Logística, SVC e Naive Bayes tiveram um Verdadeiro Negativo entre 59 e 61. O Random Forest teve o melhor Verdadeiro Positivo 1066 de 1198, seguido do KNeighbors e da Regressão Logística.

**O desempenho geral do Random Forest é superior** a todos os algoritmos, entretanto pensando na importância da especificidade, **a recomendação é que se utilize o algoritmo de Regressão Logística para a predição do AVC, devido ao equilíbrio encontrado entre a sensibilidade e especificidade** e de possuir uma acurácia e demais métricas de boa aceitação.

## Conclusão

O objetivo do projeto é identificar padrões nos dados dos pacientes para efetuar uma predição dos que possuem predisposição para o AVC.

Foi efetuada uma análise exploratória dos dados dos pacientes, verificada as correlações entre os dados, identificada as variáveis independentes e a variável target. Após a fase inicial de exploração e análise gráfica, elencou-se alguns possíveis algoritmos para esse aprendizado de máquina supervisionado. Algumas técnicas foram aplicadas para avaliação dos algoritmos e, no final, a sobreamostragem junto com a busca dos melhores hiperparâmetros mostrou-se mais eficaz.

A grande questão é a resposta que se quer buscar para esse problema. É mais relevante identificar os pacientes não propensos ao AVC ou os que são propensos? Chegou-se a conclusão que é mais importante identificar as pessoas propensas ao AVC, já que elas poderão mudar seus hábitos alimentares e de vida para evitar que se concretize essa predição. Desse modo, as métricas com maior relevância para análise foram a sensibilidade e especificidade, em conjunto com a acurácia. A matriz de confusão e a curvas ROC e Precision-Recall também foram avaliadas. 

O Random Forest foi o algoritmo com um melhor desempenho em quase todas as métricas. Entretanto, devido à importância da especificidade no contexto da predição analisada, não foi o escolhido.

No conjunto geral, o **algoritmo de Regressão Logística mostrou-se mais adequado** pelo equilíbrio apresentado entre as métricas de sensibilidade, especificidade e acurácia. 

![Link Notebook Projeto Final](/notebooks/Python/M0826A_Projeto_E3_Final_Marcia_Regivaldo_Amanda.ipynb)




