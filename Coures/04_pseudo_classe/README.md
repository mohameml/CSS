# cour : **``Pseudo-classes``**


## 1. **Définition:**

- **Definition:**

  >``Une pseudo-classe`` est un mot-clé qui peut être ajouté à un sélecteur afin d'indiquer l'état spécifique dans lequel l'élément doit être pour être ciblé par la déclaration. 

- **Exemple:**
    La pseudo-classe ``:hover``, par exemple, permettra d'appliquer une mise en forme spécifique lorsque l'utilisateur survole l'élément ciblé par le sélecteur (changer la couleur d'un bouton par exemple).

    ```css
    div:hover {
    background-color: #f89b4d;
    }

    ```

- ``Les pseudo-classes`` permettent d'appliquer un style à un élément non seulement en fonction de son contenu dans l'arbre du document mais aussi en fonction de **``facteurs externes``** (l'historique de navigation par exemple avec ``:visited`` ; le statut du contenu avec ``:checked`` ; la position de la souris ``:hover``)

- **Syntaxe:**

```css
sélecteur:pseudo-classe {
  propriété: valeur;
}

```


## 2. **``liste de quelques pseudo-classes CSS:``**


Les pseudo-classes en CSS peuvent être regroupées en plusieurs catégories en fonction de leur utilisation. Voici une liste des pseudo-classes en CSS classées par catégorie, avec une brève description et un exemple pour chaque catégorie :

### 2.1. **``Pseudo-classes de lien :``**

1. **`:hover`**
  
  - *Description* : La pseudo-classe ``:hover`` permet de spécifier l'apparence d'un élément au moment où l'utilisateur le survole avec le pointeur, sans nécessairement l'activer.
  
  - *Exemple* : 
    ```css
    /* Cible n'importe quel élément <a> lorsque  */
    /* celui-ci est survolé */
    a:hover {
      background-color: gold;
    }

    ```
  - La mise en forme ciblée par cette pseudo-classe peut être surchargée par d'autres pseudo-classes relatives aux liens hypertextes comme ``:link``, ``:visited``, et ``:active``.Pour décorer les liens sans effet de bord problématique, on placera la règle ``:hover`` après les règles ``:link`` et ``:visited`` mais avant la règle ``:active`` (l'ordre est ``:link`` — ``:visited`` — ``:hover`` — ``:active`` => **``LVHA``** )



2. **`:link`**
  
  - *Description* : La pseudo-classe ``:link`` permet de sélectionner les liens à l'intérieur d'éléments. Elle sélectionnera tout lien n'ayant pas été visité.
  
  - *Exemple* : 
    ```css
    /* Cible les liens qui n'ont pas encore */
    /* été visités */
    a:link {
      color: red;
    }

    ```


3. **`:visited`**
  
  - *Description* : La pseudo-classe ``:visited`` permet de modifier l'aspect d'un lien après que l'utilisateur l'a visité. Pour des raisons relatives à la vie privée, les propriétés qui peuvent être utilisées sont restreintes.
  
  - *Exemple* : 
    ```css
    a:visited {
      color: #4b2f89;
    }

    ```


4. **`:active`**
  
  - *Description* : La pseudo-classe ``:active`` permet de cibler un élément lorsque celui-ci est activé par l'utilisateur. Elle permet de fournir un feedback indiquant que l'activation a bien été détectée par le navigateur.
  
  - *Exemple* : 
    ```css
    /* ne cible <a> que lorsqu'il est activé */
    /* par exemple quand on clique dessus */
    a:active {
      color: red;
    }

    ```


### 2.2. **``Pseudo-classes d'état de formulaire :``**

1. **`:enabled`**

  - *Description* :  La pseudo-classe ``:enabled`` permet de cibler un élément activé. Un élément est activé s'il peut être sélectionné, si on peut cliquer dessus ou si on peut y saisir du texte ou y passer le focus (un élément peut également être dans un état désactivé).

  - *Exemple* : 

    ```css
    /* Cible n'importe quel élément <input> actif */
    input:enabled {
      color: #22aa22;
    }

    ```
    
    
2. **`:disabled`**
  
  - *Description* : Sélectionne un élément désactivé dans un formulaire.
  
  - *Exemple* : `input:disabled { background-color: lightgray; }`


3. **`:checked`**
  - *Description* : La pseudo-classe ``:checked`` permet de sélectionner  n'importe quel bouton radio **``<input type="radio">``**, case à cocher **``<input type="checkbox">``** ou option ``<option> d'un élément <select>`` qui est coché ou activé (on). 
  

  - *Exemple* : 

    ```css
    /* cible n'importe quel bouton radio sélectionné, case
    /* à cocher cochée ou option sélectionnée */
    input:checked {
      margin-left: 25px;
      border: 1px solid blue;
    }

    ```

4. **`:focus` :**
   - *Description* : La pseudo-classe ``:focus`` permet de cibler un élément lorsque celui-ci reçoit le focus (soit il est sélectionné à l'aide du clavier, soit il est activé avec la souris comme par exemple le champ d'un formulaire)

   - *Exemple* : 
     ```css
      /* Cible n'importe quel élément <input> */
      /* uniquement lorsqu'il a le focus */
      input:focus {
        color: red;
      }

     ```


### 2.3. **``Pseudo-classes apr position d'éléments :``**

1. **`:first-child`**

  - *Description* : La pseudo-classe ``:first-child`` permet de cibler un élément qui est le premier élément fils par rapport à son élément parent
  
  - *Exemple* : 
    ```css
    /* Cible n'importe quel élément <p> qui est */
    /* le premier fils de son élément parent */
    p:first-child {
      color: lime;
      background-color: black;
    }

    ```

2. **`:last-child`**

  - *Description* : La pseudo-classe ``:last-child`` permet de cibler un élément qui est le dernier enfant de son parent

  - *Exemple* : 
    ```css
    /* Cible n'importe quel élément <li> tant que    */
    /* celui-ci est le dernier enfant de son élément */
    /* parent */
    li:last-child {
      background-color: lime;
    }

    ```

3. **`:nth-child`**
  - *Description* :``:nth-child(i)`` Sélectionne un élément d'indice i (sa position) parmi les enfants de son parent. Lorsque vous utilisez l'attribut ``nth-child`` , la position commence par 1, pas par 0
  
  - **`:nth-child(an+b)`** : cette pseudo-classe permettra de cibler les éléments fils dont l'indice appartient à l'ensemble ``{ an + b; n = 0, 1, 2, ... }`` (Les valeurs des coefficients a et b sont  des entiers )


  - **Exemple 1** : 
    ```html
    <ul class="list">
        <li>E1</li>
        <li>E2</li>
        <li>E3</li>
        <li>E4</li>
    </ul>

    ```

    ```css
    li:nth-child(2) {
      background-color: gold;
    }
    <!-- permet de sélectionner E2 -->
    ```
  - **Exemple 2:** 

    - ``:nth-child(2n+0)`` ou ``2n`` ciblera les éléments fils 2, 4, 6, 8, etc. On pourra utiliser le mot-clé ``even`` à la place de cette expression.

    - ``:nth-child(2n+1)``  ciblera les éléments fils 1, 3, 5, 7, etc. On pourra utiliser le mot-clé ``odd`` à la place de cette expression.

  - **Exemple 3:**
    ```css
    tr:nth-child(odd) {
      # ou tr:nth-child(2n+1)
      <!-- Permettra de cibler les lignes impaires d'un tableau. -->
    }

    tr:nth-child(even) {
      <!-- Permettra de cibler les lignes paires d'un tableau -->
    }
    ```



### 2.4. **``Pseudo-classes de contenu :``**

1. **`:empty`**
  - *Description* : Sélectionne les éléments qui n'ont pas d'enfants.
  - *Exemple* :   
    ```css
    /* Cible tous les éléments <div> qui */
    /* n'ont pas de contenu */
    div:empty {
      background: lime;
    }

    ```

1. **`:not`**
  - *Description* : La pseudo-classe de négation, ``:not()``, est une notation fonctionnelle qui prend un sélecteur comme argument. Elle permet de cibler les éléments qui ne sont pas représentés par cet argument. Le sélecteur passé en argument ne doit pas contenir d'autre sélecteur de négation et ne doit pas cibler de pseudo-élément.

  - *Exemple* : 
    ```css
    /* Sélectionne n'importe quel élément qui n'est */
      /* pas un paragraphe */
      :not(p) {
        color: blue;
      }

    ```


### RQ :

- ``docs MDN`` : [doc_pseudo_classes](https://developer.mozilla.org/fr/docs/Web/CSS/Pseudo-classes)