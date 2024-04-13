# cour 33 : **La propriété CSS `pointer-events`:**

## 1. **La propriété CSS `pointer-events`:**

- **Description:**

    >La propriété CSS `pointer-events` est utilisée pour spécifier comment les événements de pointeur (comme les clics de souris ou les actions tactiles) sont gérés pour un élément spécifique. Cette propriété peut être utile pour contrôler l'interaction avec les éléments de la page.

-  **les valeurs que vous pouvez utiliser avec `pointer-events` :**

    - **auto** : L'élément réagit normalement aux événements de pointeur. C'est la valeur par défaut.
        
        ```css
        pointer-events: auto;
        ```

    - **none** : L'élément n'est pas pris en compte pour les événements de pointeur. Cela signifie que l'élément et son contenu ne peuvent pas être sélectionnés, cliqués ou survolés.
        
        ```css
        pointer-events: none;
        ```

- **Exemple:**


## 2. **La propriété CSS `caret-color` :**

- **Description:**

    >La propriété CSS `caret-color` est utilisée pour définir la couleur du curseur de texte dans les champs de saisie et les zones de texte. 


- **Synatxe :** 

    ```css
    selecteur_CSS {
        caret-color: blue;
    }
    ```

- **Exemple:**


    ```css
    textarea {
        caret-color: blue;
    }
    ```

    Dans cet exemple, le curseur de texte à l'intérieur de toutes les balises `<textarea>` aura une couleur bleue. Vous pouvez également l'appliquer à des champs de saisie `<input>` ou à d'autres éléments de formulaire.


### RQ : 

- Il est important de noter que la prise en charge de cette propriété peut varier selon les navigateurs et les versions. Par conséquent, il est recommandé de tester votre mise en page sur différents navigateurs pour vous assurer que le curseur de texte s'affiche correctement avec la couleur désirée.