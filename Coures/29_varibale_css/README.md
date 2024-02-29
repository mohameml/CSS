# cour 29 : **``Variables CSS:``**

## 1. **Introduction:**

- **Definition:**

    >Les variables en CSS,sont des entités qui vous permettent de stocker des valeurs spécifiques pour une utilisation répétée dans votre feuille de style. Elles sont définies à l'aide du préfixe `--` suivi d'un nom de variable. Ces variables peuvent ensuite être référencées et utilisées dans diverses règles CSS.




- **Syntaxe:**

    
    ```css
    :root {
        --nom-de-variable: valeur;
    }
    ```
    
    - `:root` est un sélecteur qui cible l'élément racine du document ( `<html>`). Cela garantit que la variable est globalement accessible dans l'ensemble du document. Vous pouvez également déclarer des variables à l'intérieur d'autres sélecteurs pour les rendre spécifiques à une partie particulière de la feuille de style.


- **Exemple:**

    ```css
    :root {
        --ma-couleur-principale: #3498db;
        --taille-police: 16px;
    }
    

    p {
        background-color: var(--ma-couleur-principale);
        font-size: var(--taille-police);
    }
    ```

    Dans cet exemple, `--ma-couleur-principale` et `--taille-police` sont des variables définies au niveau de la racine (:root). Ces variables sont ensuite utilisées dans la règle pour le sélecteur `p`.



- **Utilisation en  pratique:**

    >Les variables en CSS offrent une grande flexibilité et facilitent la maintenance du code CSS en permettant de stocker et de réutiliser des valeurs spécifiques dans toute la feuille de style. Voici quelques exemples d'utilisation pratique des variables en CSS :

    - **Définition de thèmes :**

        ```css
        :root {
            --couleur-principale: #3498db;
            --couleur-secondaire: #2ecc71;
        }

        .header {
            background-color: var(--couleur-principale);
        }

        .button {
            background-color: var(--couleur-secondaire);
        }
        ```

        En modifiant simplement les valeurs des variables `--couleur-principale` et `--couleur-secondaire`, vous pouvez changer rapidement et facilement l'apparence de votre site Web.

    - **Tailles et dimensions réutilisables :**

        ```css
        :root {
            --marge: 10px;
            --largeur-bouton: 120px;
        }

        .button {
            margin: var(--marge);
            width: var(--largeur-bouton);
        }
        ```

        En utilisant des variables pour les marges, les largeurs, ou d'autres dimensions, vous pouvez facilement ajuster la mise en page de votre site en modifiant simplement les valeurs des variables.






## 2. **Global && local:**

En CSS, les variables peuvent être définies à deux niveaux de portée : globale (ou document) et locale (ou locale à une règle).

### 2.1 **Variables globales :**

>Les variables globales sont définies au niveau de l'élément racine du document, généralement `<html>`. Elles sont accessibles partout dans le document CSS, ce qui signifie qu'elles peuvent être utilisées à l'intérieur de n'importe quelle règle, sélecteur ou bloc de déclaration.

```css
:root {
  --couleur-principale: #3498db;
  --taille-police: 16px;
}

body {
  color: var(--couleur-principale);
  font-size: var(--taille-police);
}
```

Dans cet exemple, `--couleur-principale` et `--taille-police` sont des variables globales définies au niveau de `:root`, ce qui signifie qu'elles peuvent être utilisées dans n'importe quelle partie du document CSS.

### 2.2 **Variables locales :**

>Les variables locales sont définies à l'intérieur d'un sélecteur, d'une règle ou d'un bloc spécifique. Elles ont une portée limitée à l'endroit où elles sont déclarées, ce qui signifie qu'elles ne sont pas accessibles en dehors de cet endroit particulier.

```css
.container {
  --largeur-conteneur: 800px;
  width: var(--largeur-conteneur);
}


```

Dans cet exemple, `--largeur-conteneur` est une variable locale déclarée à l'intérieur du sélecteur `.container`. Elle peut être utilisée dans les propriétés du sélecteur `.container`, mais elle n'est pas accessible en dehors de ce sélecteur.



## 3. **la fonction ``var``:**

- **Description:**

    >La fonction `var()` en CSS est utilisée pour référencer une variable CSS. Elle permet d'inclure la valeur d'une variable dans une propriété CSS.
    
- **Syntaxe:**

    ```css
        .selc {
            prop : var(--nom-de-variable, valeur-par-défaut);
        }
    ```

    - La syntaxe de base est `var(nom-de-variable, valeur-par-défaut)`, où `nom-de-variable` est le nom de la variable que vous souhaitez utiliser et `valeur-par-défaut` est une valeur optionnelle à utiliser si la variable n'est pas définie.


- **Exemple d'utilisation de `var()` :**

    ```css
    :root {
        --couleur-principale: #3498db;
        --taille-police: 16px;
    }

    body {
        color: var(--couleur-principale);
        font-size: var(--taille-police);
    }

    /* Utilisation avec une valeur par défaut */
    .header {
        background-color: var(--couleur-secondaire, #2ecc71);
    }
    ```
