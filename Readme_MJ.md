# TODO Análises Realizadas
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

As variáveis *bmi*, *hypertension* tem correlação com *age*, que embora seja fraca, pode levar à ocorrência do **overfitting**.  Sobre a glicose no sangue, percebe-se um valor mais elevado nas pessoas com predisposição ao AVC e será, também, utilizada como feature. A hipertensão, também, foi identificada como relacionada com o AVC, a partir da análise gráfica. Entretanto, foi realizado um teste progressivo com as features indicadas para verificar a necessidade de mantê-las ou não e foi constatado que a ocorrência de um overfitting por excesso de variáveis, não ocorreu. Desse modo, as quatro variáveis foram mantidas.

Foram aplicadas 3 técnicas diferentes sobre os dados, o **train_test_split**, o **Stratified kfold** e o **oversampling** em conjunto com a busca dos melhores parâmetros que serão descritas mais abaixo. O objetivo foi encontrar um modelo que melhor conseguisse prever a predisposição de um paciente ao AVC. Para isso, foi efetuada uma comparação entre os modelos baseada no resultado de diversas métricas de avaliação e escolhido o que teve a melhor performance com base na análise da matriz de confusão, das métricas de avaliação e das curvas ROC e Precision Recall.

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

Foram avaliados cinco algoritmos e será apresentada uma comparação entre todos eles para cada técnica aplicada. Porém, para sintetizar mais o relatório, para cada técnica avaliada serão apresentados os resultados com imagens apenas de dois dos cinco avaliados. O resultado completo pode ser visto no jupyter notebook, nesse link: xxx. Para o train_test_split, serão apresentados Regressão Logística e o Naive Bayes. Para a validação cruzada, o SVM e o K-Neighbors e para a última técnica, a Regressão Logística e o Random Forest.

## Técnica Avaliação: **train_test_split**

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
O treinamento e teste do modelo de Regressão Logística pode ser visto no código abaixo:
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
![Naive Bayes Curvas](https://github.com/regivaldo717/C_A_D_S/blob/main/assets/Naibe_bayes_train_curvas.PNG)

> Nesta seção ou na seção de Resultados podem aparecer destaques de código como indicado a seguir. Note que foi usada uma técnica de highlight de código, que envolve colocar o nome da linguagem na abertura de um trecho com `~~~`, tal como `~~~python`.
>
> Os destaques de código devem ser trechos pequenos de poucas linhas, que estejam diretamente ligados a alguma explicação. Não utilize trechos extensos de código. Se algum código funcionar online (tal como um Jupyter Notebook), aqui pode haver links. No caso do Jupyter, preferencialmente para o Binder abrindo diretamente o notebook em questão.

~~~python
df = pd.read_excel("/content/drive/My Drive/Colab Notebooks/dataset.xlsx");
sns.set(color_codes=True);
sns.distplot(df.Hemoglobin);
plt.show();
~~~
