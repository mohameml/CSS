# cour 27 : **``box-shadow``**

- **Introduction:**

    >La propriété `box-shadow` en CSS est utilisée pour ajouter une ombre à un élément. Elle permet de spécifier une ombre en termes de décalage horizontal, décalage vertical, flou, étalement (spread) et couleur. 
    

- **Voici la syntaxe générale de la propriété `box-shadow` :**

    ```css
    box-shadow: [horizontal-offset] [vertical-offset] [blur-radius] [spread-radius] [color] [type];
    ```

    - `horizontal-offset`: Spécifie le décalage horizontal de l'ombre par rapport à l'élément. Une valeur positive signifie que l'ombre sera décalée vers la droite, et une valeur négative signifie qu'elle sera décalée vers la gauche.

    - `vertical-offset`: Spécifie le décalage vertical de l'ombre par rapport à l'élément. Une valeur positive signifie que l'ombre sera décalée vers le bas, et une valeur négative signifie qu'elle sera décalée vers le haut.

    - `blur-radius`: Optionnel. Spécifie le flou de l'ombre. Plus la valeur est élevée, plus l'ombre sera floue. Si cette valeur est omise, l'ombre sera nette.

    - `spread-radius`: Optionnel. Spécifie l'étalement (spread) de l'ombre. Une valeur positive augmente la taille de l'ombre, tandis qu'une valeur négative la réduit. Si cette valeur est omise, l'ombre aura une taille normale.

    - `color`: Spécifie la couleur de l'ombre. Cela peut être une couleur CSS, une valeur hexadécimale, un nom de couleur ou d'autres valeurs acceptées pour les propriétés de couleur en CSS.

    - type = {``inset`` , ou ``outset`` } avce  ``inset``: indique que l'ombre doit être à l'intérieur de la boîte plutôt qu'à l'extérieur. S'il est omis, l'ombre sera à l'extérieur(``outset``) de la boîte.



- **Exemple : ``outset``**

    - **fichier.html:**
        ```html
        <div></div>            
        ```
    - **fichier.css**

        ```css
        div {
            background-color: #eee;
            height: 100px;
            width: 100px;
            box-shadow: -3px -1px 6px 0px;
        }
        
        ```
    - **Affichage:**

        ![alt text](images/outset.png)


- **Exemple : ``inset``**

    - **fichier.html:**
        ```html
        <div></div>            
        ```
    - **fichier.css**

        ```css
        div {
            background-color: #eee;
            height: 100px;
            width: 100px;
            box-shadow: -3px -1px 6px 0px inset;
        }
        
        ```
    - **Affichage:**

        ![alt text](images/inset.png)
    
- **Exemple : Multiple-box-shadow**

    >Vous pouvez appliquer plusieurs ombres à un même élément en séparant chaque valeur `box-shadow` par une virgule. 
    
    - Voici un exemple avec plusieurs `box-shadows` sur un même élément :

        ```css
        .box {
        width: 100px;
        height: 100px;
        background-color: #3498db;
        box-shadow: 
            5px 5px 10px 0px rgba(0, 0, 0, 0.5)  ,
            -5px -5px 10px 0px rgba(255, 255, 255, 0.5) inset;
        }
        ```

        - Dans cet exemple, l'élément avec la classe `.box` aura deux ombres :
            
            - Une ombre à l'extérieur avec un décalage de 5 pixels vers la droite, 5 pixels vers le bas, un flou de 10 pixels, sans étalement, et une couleur semi-transparente avec une teinte de noir.
            
            - Une ombre à l'intérieur avec un décalage de -5 pixels vers la gauche, -5 pixels vers le haut, un flou de 10 pixels, sans étalement, et une couleur semi-transparente avec une teinte de blanc.

        ![alt text](images/image.png)