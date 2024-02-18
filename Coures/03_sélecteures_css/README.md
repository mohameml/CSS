# cour : **Les sélecteurs en CSS** 

## 1. **Introduction:**

>``Le sélecteur CSS`` est un élément clé du langage de style en cascade (CSS), utilisé pour définir le style visuel d'un document HTML. Il permet aux développeurs web de cibler spécifiquement les éléments HTML et d'appliquer des styles à ces éléments.


- **Définition :**

    >Un sélecteur CSS est une expression qui identifie les éléments HTML auxquels une règle de style CSS doit être appliquée. Les sélecteurs peuvent cibler des éléments spécifiques, des classes, des identifiants, des attributs, ou même des relations entre éléments.


- **Utilité :**

    1. **Cibler des éléments spécifiques :** Les sélecteurs permettent de sélectionner des éléments HTML spécifiques dans une page, ce qui permet d'appliquer des styles de manière précise.

    2. **Appliquer des styles :** Les sélecteurs sont utilisés pour appliquer des styles tels que la couleur, la police, la taille, la disposition, etc., aux éléments ciblés.

    3. **Héritage et cascade :** Le terme "cascade" dans CSS indique que les styles peuvent être hérités et que plusieurs règles peuvent être appliquées à un élément. Les sélecteurs déterminent l'ordre de priorité des règles, influençant ainsi l'apparence finale.

    4. **Classes et identifiants :** Les sélecteurs permettent de cibler des éléments en fonction de leurs classes (`.maClasse`) ou de leurs identifiants (`#monId`). Cela offre une flexibilité accrue dans la conception.

    5. **Pseudo-classes et pseudo-éléments :** CSS propose des sélecteurs spéciaux appelés pseudo-classes (`:hover`, `:nth-child`, etc.) et pseudo-éléments (`::before`, `::after`, etc.) pour cibler des états spécifiques ou des parties spécifiques d'un élément.


- **Exemple :**

    ```css
    /* Sélectionne tous les paragraphes */
    p {
    color: blue;
    }

    /* Sélectionne les éléments avec la classe "maClasse" */
    .maClasse {
    font-weight: bold;
    }

    /* Sélectionne l'élément avec l'identifiant "monId" */
    #monId {
    font-style: italic;
    }
    ```

    En utilisant les sélecteurs CSS de manière judicieuse, les développeurs peuvent créer des mises en page attrayantes et bien stylisées pour les sites web.



## 2. **Types des sélecteurs:**


>Il existe différents types de sélecteurs : le sélecteur universel, le sélecteur de type, le sélecteur de classe, l'identifiant (ID), et le sélecteur d'attribut.

1. **Sélecteur Universel (`*`) :**
   - **Description :** Le sélecteur universel cible tous les éléments HTML sur une page.
   - **Syntaxe :** `* { styles }`
   - **Exemple :** Appliquer une marge à tous les éléments.
     ```css
     * {
       margin: 0;
       padding: 0;
     }
     ```

2. **Sélecteur de Type :**

    - **Description :** Cible tous les éléments d'un type spécifique (par exemple, tous les paragraphes <p>).
    - **Syntaxe :** ``element { styles }``
    - **Exemple :** Mettre en gras tous les titres ``<h1>``.    
        ```css
        h1 {
        font-weight: bold;
        }

        ```

3. **Sélecteur de Classe (`.`):**
   
   - **Description :** 
        
        Le sélecteur de classe est un type de sélecteur CSS qui permet de cibler les éléments HTML en fonction de leur classe. Les classes sont des attributs spéciaux que l'on peut attribuer à un élément HTML pour lui donner une signification particulière. Le sélecteur de classe commence par un point suivi du nom de la classe.


    - **Syntaxe du sélecteur de classe :**
        ```css
        .nomDeClasse {
        /* styles à appliquer */
        }
        ```


    - **Exemple :**
        Supposons que vous ayez le HTML suivant :
        ```html
        <p class="important">Ce paragraphe est important.</p>
        ```

        Vous pouvez styliser cet élément en utilisant le sélecteur de classe comme suit :
        ```css
        .important {
        font-weight: bold;
        color: red;
        }
        ```



4. **Sélecteur d'ID (`#`) :**
   
   
   - **Description :** 
        
        >Un sélecteur d'ID est un type de sélecteur CSS qui permet de cibler un élément HTML en fonction de son identifiant unique (ID). L'attribut ID est utilisé pour donner une identité unique à un élément sur une page web. Le sélecteur d'ID commence par un dièse (#) suivi du nom de l'ID.

   
   
    - **Syntaxe du sélecteur d'ID :**
        ```css
        #monId {
        /* styles à appliquer */
        }
        ```

    - **Exemple :**

        Supposons que vous ayez le HTML suivant :
        ```html
        <div id="header">Ceci est l'en-tête</div>
        ```

        Vous pouvez styliser cet élément en utilisant le sélecteur d'ID comme suit :
        ```css
        #header {
        background-color: lightgray;
        padding: 10px;
        }
        ```





5. **Sélecteur d'Attribut :**

    - **Description:**
        >Le sélecteur d'attribut en CSS permet de cibler des éléments en fonction de la présence ou de la valeur d'un attribut. Il existe deux méthodes principales pour utiliser le sélecteur d'attribut : cibler des éléments avec un attribut spécifique et cibler des éléments avec une valeur particulière d'un attribut.


    - **1. Cibler des éléments avec un attribut spécifique :**

        - **Syntaxe :**
            ```css
            [attribut] {
            /* styles à appliquer */
            }
            <!-- ou  -->
            element[attribut] {
            /* styles à appliquer */
            }
            ```

        - **Exemple :**
            Supposons que vous ayez le HTML suivant :
            ```html
            <input type="text" class="inputField">
            <input type="checkbox">
            <button disabled>Valider</button>
            ```

            Vous pouvez cibler tous les éléments qui ont un attribut "disabled" avec le sélecteur d'attribut de la manière suivante :
            ```css
            [disabled] {
            opacity: 0.5;
            cursor: not-allowed;
            }
            ```

            Dans cet exemple, tous les éléments avec l'attribut "disabled" auront une opacité réduite et un curseur "not-allowed".

    
    - **2. Cibler des éléments avec une valeur particulière d'un attribut :**

        - **Syntaxe :**
            ```css
            [attribut="valeur"] {
            /* styles à appliquer */
            }
            <!-- ou  -->
            element[attribut="valeur"] {
            /* styles à appliquer */
            }           
            ```

        - **Exemple :**
            Prenons l'exemple précédent avec des boutons ayant l'attribut "disabled", mais ciblons spécifiquement ceux qui ont la valeur "true" pour l'attribut "disabled" :
            ```css
            [disabled="true"] {
            background-color: gray;
            color: white;
            }
            ```

            Avec cette règle, seuls les boutons ayant l'attribut "disabled" avec la valeur "true" auront un fond gris et un texte blanc.


### RQ : 

- ``docs mdn`` : [docs](https://developer.mozilla.org/fr/docs/Learn/CSS/Building_blocks/Selectors/Attribute_selectors)

## 3. **Rélations entre les sélecteurs:**


### 3.1 **Défintion:**

>En CSS, une relation entre les sélecteurs définit comment les règles de style s'appliquent à des éléments spécifiques en fonction de leur relation dans la structure HTML. Ces relations permettent de cibler des éléments de manière plus précise, en tenant compte de leur position, de leur parenté, ou de leur proximité dans le document HTML.

Voici une brève description des principales relations entre les sélecteurs :

1. **Groupement (`,`)** :
   - **Définition :** Permet de regrouper plusieurs sélecteurs et d'appliquer les mêmes styles à tous les éléments sélectionnés.
   - **Utilité :** Évite la répétition de styles similaires pour plusieurs sélecteurs.

2. **Combinateur de Descendance (espace)** :
   - **Définition :** Sélectionner les éléments sélectionnés par le deuxième sélecteur qui sont imbriqués dans les éléments sélectionnés par le premier sélecteur.
   - **Utilité :** Cible des éléments imbriqués dans une structure HTML.

3. **Combinateur Enfant (`>`)** :
   - **Définition :** Sélectionne les éléments sélectionnés par le deuxième sélecteur qui sont des enfants directs du premier sélecteur.
   - **Utilité :** Cible des éléments spécifiques qui sont des enfants directs d'un autre élément.

4. **Combinateur de Voisins Directs (`+`)** :
   - **Définition :** Sélectionne les éléments qui sont des frères (éléments du même niveau) et qui suivent immédiatement le premier sélecteur.
   - **Utilité :** Cible des éléments qui partagent le même parent et qui sont immédiatement suivis dans le code HTML.

5. **Combinateur de Voisins Généraux (`~`)** :
   - **Définition :** Sélectionne tous les éléments qui sont des frères (éléments du même niveau) et qui suivent le premier sélecteur, même s'ils ne sont pas immédiatement suivis.
   - **Utilité :** Cible des éléments qui partagent le même parent, peu importe la distance qui les sépare.



## 3.2 **Types des Rélations:**


1. **Groupement (`,`)** :
   - **Description :** Le groupement permet de regrouper plusieurs sélecteurs et d'appliquer les mêmes styles à tous les éléments sélectionnés.
   - **Syntaxe :** `selecteur1, selecteur2, ... { styles }`
   - **Exemple :** 
        - **CSS :**
            ```css
            h1, h2 {
            color: blue;
            }
            ```
        - **HTML :**
            ```html
            <h1>Ceci est un titre de niveau 1</h1>
            <h2>Ceci est un titre de niveau 2</h2>
            ```

        **Explication :** Le sélecteur CSS cible tous les éléments `h1` et `h2` dans le HTML, les rendant bleus.


2. **Combinateur de Descendance (espace)** :
   - **Description :** Sélectionne tous les éléments descendants du premier sélecteur et sélectionner par le second sélecteur, quel que soit leur niveau de profondeur.
   - **Syntaxe :** `selecteur1 selecteur2 { styles }`
   - **Exemple :** 

        - **CSS :**
            ```css
            div p {
            font-style: italic;
            }
            ```
        - **HTML :**
            ```html
            <div>
            <p>Ceci est un paragraphe à l'intérieur d'une div.</p>
            </div>
            ```
        
        **Explication :** Le sélecteur CSS cible tous les éléments `p` qui sont descendants d'un élément `div`, appliquant le style italic.


3. **Combinateur Enfant (`>`)** :
   - **Description :** Sélectionne les éléments qui sont des enfants directs du premier sélecteur et sélectionner par le seconde sélecteur .
   - **Syntaxe :** `selecteur1 > selecteur2 { styles }`
   - **Exemple :** 

        - **CSS :**
            ```css
            ul > li {
            list-style-type: square;
            }
            ```
        - **HTML :**
            ```html
            <ul>
            <li>Élément de liste</li>
            <li>Élément de liste</li>
            </ul>
            ```

        **Explication :** Le sélecteur CSS cible tous les éléments `li` qui sont des enfants directs d'un élément `ul`, appliquant un style de liste avec des carrés.

4. **Combinateur de Voisins Directs (`+`)** :
   - **Description :** Sélectionne les éléments qui sont des frères (éléments du même niveau) et qui suivent immédiatement le premier sélecteur.
   - **Syntaxe :** `selecteur1 + selecteur2 { styles }`
   - **Exemple :** 

        - **CSS :**
            ```css
            h2 + p {
            font-weight: bold;
            }
            ```
        - **HTML :**
            ```html
            <h2>Ceci est un titre de niveau 2</h2>
            <p>Ce paragraphe est stylisé en gras car il suit immédiatement le titre h2.</p>
            ```

        **Explication :** Le sélecteur CSS cible le paragraphe qui suit immédiatement un titre `h2`, appliquant le style bold.


5. **Combinateur de Voisins Généraux (`~`)** :
   - **Description :** Sélectionne tous les éléments qui sont des frères (éléments du même niveau) et qui suivent le premier sélecteur, même s'ils ne sont pas forcément  immédiatement suivis.
   
   - **Syntaxe :** `selecteur1 ~ selecteur2 { styles }`
   - **Exemple :** 

        - **CSS :**
            ```css
            h3 ~ p {
            color: green;
            }
            ```
        - **HTML :**
            ```html
            <h3>Ceci est un titre de niveau 3</h3>
            <p>Ce paragraphe est stylisé en vert car il suit le titre h3.</p>
            ```

        **Explication :** Le sélecteur CSS cible tous les paragraphes qui suivent un titre `h3`, peu importe la distance qui les sépare, et leur applique la couleur verte.




