# cour 16 :**``overflow``**


>L'objectif de ce cours est d'aborder la propriété `overflow` qui permet de gérer le contenu dépassant les limites d'un conteneur, offrant ainsi un contrôle sur le dépassement de ce contenu.


## 1. **La propriété CSS `overflow`:**

- **Description:**

    >La propriété CSS `overflow` est utilisée pour gérer le comportement du contenu qui dépasse les limites d'un conteneur. Elle spécifie comment le contenu excédentaire doit être géré, que ce soit par le biais de barres de défilement, d'une coupure du contenu, ou d'autres méthodes.


- **Les valeurs principales de la propriété `overflow` sont :**

    1. `visible` : Le contenu dépasse les limites du conteneur sans être coupé ni masqué. C'est le comportement par défaut.

        ```css
        .exemple {
            overflow: visible;
        }
        ```

    2. `hidden` : Tout contenu qui dépasse les limites du conteneur est coupé et masqué.

        ```css
        .exemple {
            overflow: hidden;
        }
        ```

    3. `scroll` : Des barres de défilement horizontales et verticales sont ajoutées au conteneur, même si le défilement n'est pas nécessaire. Cela garantit que tout le contenu est accessible.

        ```css
        .exemple {
            overflow: scroll;
        }
        ```

    4. `auto` : Les barres de défilement sont ajoutées uniquement si nécessaire, c'est-à-dire si le contenu dépasse les limites du conteneur.

    ```css
    .exemple {
        overflow: auto;
    }
    ```

    5. `inherit` : L'élément hérite de la propriété `overflow` de son parent.

    ```css
    .exemple {
        overflow: inherit;
    }
    ```

La propriété `overflow` est utile pour contrôler le rendu du contenu dans des éléments conteneurs et garantir une expérience utilisateur cohérente, notamment lorsque le contenu est susceptible de dépasser les limites du conteneur.


- **Exemple:**

    ```html
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        
        <style>
            div {
                background-color: #DDD;
                width: 200px;
                height: 200px;
                margin: 20px;
                border: 2px solid red;
                border-radius: 10px;
                overflow: auto;
            }
        </style>

    </head>
    <body>

        <div>
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus laborum aliquid, Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus laborum aliquid, 
            rem nemo repellat est perferendis similique iste pariatur tenetur. Autem ipsum labore exercitationem aut recusandae eligendi quasi 
            quisquam consectetur?
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus laborum aliquid, 
            rem nemo repellat est perferendis similique iste pariatur tenetur. Autem ipsum labore exercitationem aut recusandae eligendi quasi 
            quisquam consectetur?    
        </div>
        
    </body>
    </html>

    ```


## 2. **Les propriétés CSS `overflow-x` et `overflow-y`:**


- **Description:**
    >Les propriétés CSS `overflow-x` et `overflow-y` sont des sous-propriétés de la propriété `overflow` qui permettent de contrôler spécifiquement le débordement horizontal (`x` pour l'axe horizontal) et vertical (`y` pour l'axe vertical) du contenu à l'intérieur d'un élément.

### 2.1 **`overflow-x:`**

- **Description:**
La propriété `overflow-x` contrôle le débordement horizontal. Elle peut prendre les mêmes valeurs que la propriété `overflow` pour gérer le débordement uniquement le long de l'axe horizontal.

- **Exemples :**

    - **``hidden:``** Coupure et masquage du débordement horizontal et l'ajout du barre de scroll pour y si besion

    ```css
        .autre-exemple {
        overflow-x: hidden; /* Coupure et masquage du débordement horizontal et l'ajout du barre de scroll pour y si besion  */
    }
    ```

### 2.2 `overflow-y`

- **Description:**
La propriété `overflow-y` contrôle le débordement vertical. Elle fonctionne de manière similaire à `overflow-x`, mais elle s'applique uniquement à l'axe vertical.

- **Exemples :**

    - **``hidden:``** Coupure et masquage du débordement verticale et l'ajout du barre de scroll pour x si besion
    
    ```css
    .autre-exemple {
     overflow-y: hidden ; /* Coupure et masquage du débordement verticale et l'ajout du barre de scroll pour x si besion  */
    }
    ```

### 2.3 **Utilisation combinée `overflow`**

Si vous souhaitez contrôler à la fois le débordement horizontal et vertical, vous pouvez utiliser la propriété `overflow` avec deux valeurs, où la première valeur s'applique à l'axe horizontal et la deuxième à l'axe vertical :

```css
.combinaison {
  overflow: hidden auto; /* Coupure du débordement horizontal, barres de défilement verticales si nécessaire */
}
```


### RQ :

- **Note :** Si on définit un axe avec ``visible`` (la valeur par défaut) et qu'on définit l'autre axe avec une valeur différente, alors la valeur du premier axe (visible) sera considérée comme ``auto``
