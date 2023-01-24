def graph_feat(model,X):
        feat_impor = pd.DataFrame(model.feature_importances_)
        fimport = feat_impor.set_axis(X.columns, axis='index')
        fimport.sort_values(by=[0], ascending= False, inplace = True)
        from matplotlib import pyplot as plt
        fig = plt.figure(figsize=(12, 8))
        plt.barh(fimport.index, fimport[0])
        plt.xlabel('Feature Importances')
        plt.xticks(rotation = 90)
        plt.ylabel('Feature Labels')
        plt.title('Comparacion de la importancia de las variables')
        return plt.show()