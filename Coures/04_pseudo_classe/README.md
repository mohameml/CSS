# cour : **``Pseudo-classes``**


## 1. **Définition:**

- **Definition:**

  >``Une pseudo-classe`` est un mot-clé qui peut être ajouté à un sélecteur afin d'indiquer l'état spécifique dans lequel l'élément doit être pour être ciblé par la déclaration. 

  - ``Les pseudo-classes`` permettent d'appliquer un style à un élément non seulement en fonction de son contenu dans l'arbre du document mais aussi en fonction de **``facteurs externes``** (l'historique de navigation par exemple avec ``:visited`` ; le statut du contenu avec ``:checked`` ; la position de la souris ``:hover``)


- **Syntaxe:**

  ```css
  sélecteur:pseudo-classe {
    propriété: valeur;
  }
  ```

- **Exemple:**

  - La pseudo-classe ``:hover``, par exemple, permettra d'appliquer une mise en forme spécifique lorsque l'utilisateur survole l'élément ciblé par le sélecteur (changer la couleur d'un bouton par exemple).

    ```css
    div:hover {
      background-color: #f89b4d;
    }
    ```





## 2. **``Pseudo-classes de lien :``**

### 2.1 **`:hover`**


- **Description:**  
  
  >La pseudo-classe ``:hover`` permet de spécifier l'apparence d'un élément au moment où l'utilisateur le survole avec le pointeur, sans nécessairement l'activer.


- **Exemple:** 

  ```css
  /* Cible n'importe quel élément <a> lorsque  */
  /* celui-ci est survolé */
  a:hover {
    background-color: gold;
  }

  ```



### 2.2 **`:link`**

  
- **Description:**  La pseudo-classe ``:link`` permet de sélectionner les liens à l'intérieur d'éléments. Elle sélectionnera tout lien n'ayant pas été visité.

- **Exemple:**  
  ```css
  /* Cible les liens qui n'ont pas encore */
  /* été visités */
  a:link {
    color: red;
  }

  ```


### 2.3 **`:visited`**

  
- **Description:**  La pseudo-classe ``:visited`` permet de modifier l'aspect d'un lien après que l'utilisateur l'a visité. 

- **Exemple:**  
  ```css
  a:visited {
    color: #4b2f89;
  }

  ```


### 2.4 **`:active`**
  
- **Description:**  La pseudo-classe ``:active`` permet de cibler un élément lorsque celui-ci est activé par l'utilisateur. Elle permet de fournir un feedback indiquant que l'activation a bien été détectée par le navigateur.

- **Exemple:**  
  ```css
  /* ne cible <a> que lorsqu'il est activé */
  /* par exemple quand on clique dessus */
  a:active {
    color: red;
  }

  ```


#### RQ : **L'ordre ``LVHA``:**

- La mise en forme ciblée par cette pseudo-classe peut être surchargée par d'autres pseudo-classes relatives aux liens hypertextes comme ``:link``, ``:visited``, et ``:active``.Pour décorer les liens sans effet de bord problématique, on placera la règle ``:hover`` après les règles ``:link`` et ``:visited`` mais avant la règle ``:active`` (l'ordre est ``:link`` —> ``:visited`` —> ``:hover`` —> ``:active`` => **``LVHA``** )


## 3. **``Pseudo-classes de formulaire :``**


### 3.1 **`:enabled`**

- **Description:**

  >La pseudo-classe ``:enabled`` permet de cibler un élément activé. 
  
  - ``Un élément est activé:`` s'il peut être sélectionné, si on peut cliquer dessus ou si on peut y saisir du texte ou y passer le focus (un élément peut également être dans un état désactivé).

- **Exemple:**  

  ```css
  /* Cible n'importe quel élément <input> actif */
  input:enabled {
    color: #22aa22;
  }

  ```
  
    
### 3.2. **`:disabled`**
  
- **Description:**

  - La pseudo-classe `:disabled` en CSS est utilisée pour cibler et styliser les éléments de formulaire qui sont désactivés (désactivables). Un élément est considéré comme désactivé lorsqu'il a un attribut `disabled` défini.


- **Exemple:**

  ```css
  /* Stylise tous les éléments de formulaire désactivés */
  :disabled {
      opacity: 0.5; /* Par exemple, réduit l'opacité pour les éléments désactivés */
      cursor: not-allowed; /* Change le curseur pour indiquer qu'il est désactivé */
  }
  ```

  Exemple avec du HTML :

  ```html
  <input type="text" disabled placeholder="Désactivé">
  <button disabled>Cliquez-moi</button>
  <select disabled>
      <option>Option 1</option>
      <option>Option 2</option>
  </select>
  ```



### 3.3 **`:checked`**

- **Description:** 
  
  >La pseudo-classe ``:checked`` permet de sélectionner  n'importe quel bouton radio **``<input type="radio">``**, case à cocher **``<input type="checkbox">``** ou option ``<option> d'un élément <select>`` qui est coché ou activé (on). 
  

- **Exemple:**  

  ```css
  /* cible n'importe quel bouton radio sélectionné, case
  /* à cocher cochée ou option sélectionnée */
  input:checked {
    margin-left: 25px;
    border: 1px solid blue;
  }

  ```

### 3.4 **`:focus` :**

- **Description:** 

  >La pseudo-classe ``:focus`` permet de cibler un élément lorsque celui-ci reçoit le focus (soit il est sélectionné à l'aide du clavier, soit il est activé avec la souris comme par exemple le champ d'un formulaire)

- **Exemple:**

  ```css 
  /* Cible n'importe quel élément <input> */
  /* uniquement lorsqu'il a le focus */
  input:focus {
    color: red;
  }

  ```

### 3.5 **`:required` :**

- **Description:**

  - La pseudo-classe `:required` en CSS est utilisée pour cibler et styliser les éléments de formulaire qui ont l'attribut `required` défini. Cet attribut est souvent utilisé pour indiquer que la saisie d'un champ est obligatoire avant de soumettre un formulaire.


- **Exemple:**

  ```css
  /* Stylise les éléments de formulaire qui sont requis */
  :required {
      border-color: red; /* Par exemple, change la couleur de la bordure en rouge */
  }
  ```


  ```html
  <form>
      <input type="text" required placeholder="Nom">
      <input type="email" required placeholder="Email">
      <textarea required placeholder="Message"></textarea>
      <button type="submit">Envoyer</button>
  </form>
  ```



## 4. **``Pseudo-classes  child :``**


### 4.1 **`:first-child` && `:last-child`**

- **Description:** 
  
  >La pseudo-classe ``:first-child`` permet de cibler un élément qui est le premier élément fils par rapport à son élément parent.
 
  >La pseudo-classe ``:last-child`` permet de cibler un élément qui est le dernier enfant de son parent

- **Exemple:**  
  ```css
  /* Cible n'importe quel élément <p> qui est */
  /* le premier fils de son élément parent */
  p:first-child {
    color: lime;
    background-color: black;
  }

  /* Cible n'importe quel élément <li> tant que    */
  /* celui-ci est le dernier enfant de son élément */
  /* parent */
  li:last-child {
    background-color: lime;
  }

  ```

### 4.2 **``:first-of-type`` && ``:last-of-type``**

- **Description:**

  - ``:firdst-of-type :`` Cette pseudo-classe cible le premier élément d'un type spécifique parmi ses frères .

  - ``:last-of-type :`` Cette pseudo-classe cible le dernier élément d'un type spécifique parmi ses frères .



- **Exemple 1:** 

  ```css
  /* Stylise le premier <p> de chaque <div> */
  div p:first-of-type {
    font-weight: bold;
  }
  ```

  ```html
  <div>
      <p>Ceci est le premier paragraphe.</p>
      <p>Ceci est le deuxième paragraphe.</p>
  </div>
  <div>
      <p>Ceci est un autre premier paragraphe.</p>
      <p>Ceci est le deuxième paragraphe du deuxième div.</p>
  </div>
  ```



- **Exemple 2:** 

  ```css
  /* Stylise le dernier <li> de chaque <ul> */
  ul li:last-of-type {
    text-decoration: underline;
  }
  ```

  ```html
  <ul>
      <li>Élément 1</li>
      <li>Élément 2</li>
      <li>Élément 3</li>
  </ul>
  <ul>
      <li>Élément A</li>
      <li>Élément B</li>
      <li>Élément C</li>
  </ul>
  ```




### 4.3 **`:nth-child`**

- *Description* :
  
  - **``:nth-child(i)``**  Sélectionne un élément d'indice i (sa position) parmi les enfants de son parent.  la position commence par 1, pas par 0 .

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


### 4.4 **``nth-last-child:``**

- **Description:**

  - La pseudo-classe `:nth-last-child()` en CSS permet de cibler des éléments en fonction de leur position à partir de la fin d'un ensemble d'éléments enfants d'un même parent. 
  
  - C'est une variante de la pseudo-classe `:nth-child()`, mais elle compte les éléments à partir de la fin plutôt qu'à partir du début.


- **Exemple:**

  ```css
  /* Sélectionne le deuxième élément enfant à partir de la fin */
  :nth-last-child(2) {
      background-color: yellow;
  }
  ```

  Exemple avec du HTML :

  ```html
  <div>
      <p>Paragraphe 1</p>
      <p>Paragraphe 2</p>
      <p>Paragraphe 3</p>
      <p>Paragraphe 4</p>
  </div>
  ```

### 4.5 **``nth-of-type()`` && ``nth-last-of-type()``:**


- **Description:**

  - ``nth-of-type(i)``  : cible l' élément de postion i  parmi tous les éléments du même type à l'intérieur de son parent .

  -  ``nth-last-of-type()``:   cible un élément basé sur sa position à partir de la fin parmi tous les éléments du même type à l'intérieur de son parent


- **Exemple 1** :

  ```css
  /* Stylise le troisième <p> de chaque <div> */
  div p:nth-of-type(3) {
      font-style: italic;
  }
  ```

  ```html
  <div>
      <p>Paragraphe 1</p>
      <p>Paragraphe 2</p>
      <p>Paragraphe 3</p>
      <p>Paragraphe 4</p>
  </div>
  <div>
      <p>Paragraphe A</p>
      <p>Paragraphe B</p>
  </div>
  ```


- **Exemple 2** :

  ```css
  /* Stylise l'avant-dernier <li> de chaque <ul> */
  ul li:nth-last-of-type(2) {
      text-decoration: underline;
  }
  ```

  ```html
  <ul>
      <li>Élément 1</li>
      <li>Élément 2</li>
      <li>Élément 3</li>
  </ul>
  <ul>
      <li>Élément A</li>
      <li>Élément B</li>
      <li>Élément C</li>
  </ul>
  ```


### 4.6 **`:only-child` && `:only-of-type`:**

- **Description:**

  - Les pseudo-classes `:only-child` et `:only-of-type` en CSS permettent de cibler des éléments qui sont les seuls enfants de leur parent ou les seuls éléments de leur type à l'intérieur de leur parent.

  - **`:only-child` :** Cette pseudo-classe cible les éléments qui sont les seuls enfants de leur parent.

  - **`:only-of-type`:**  Cette pseudo-classe cible les éléments qui sont les seuls éléments de leur type à l'intérieur de leur parent.



- **Exemple 1 :** 

  ```css
  /* Stylise les éléments qui sont les seuls enfants de leur parent */
  p:only-child {
    border: 1px solid red;
  }
  ```

  ```html
  <div>
      <p>Paragraphe unique</p>
  </div>
  <div>
      <span>Texte</span>
  </div>
  ```

  Dans cet exemple, le `<p>` avec le texte "Paragraphe unique" sera bordé en rouge car il est le seul enfant de son parent.




- **Exemple 2:** 

  ```css
  /* Stylise les <li> qui sont les seuls éléments de leur type à l'intérieur de leur parent */
  ul li:only-of-type {
      background-color: lightgrey;
  }
  ```

  ```html
  <ul>
      <li>Élément unique</li>
  </ul>
  <ul>
      <li>Élément A</li>
      <li>Élément B</li>
  </ul>
  ```

  Dans cet exemple, "Élément unique" sera coloré en gris clair car il est le seul `<li>` à l'intérieur de son parent `<ul>`.










## 5. **``Pseudo-classes de contenu :``**

### 5.1 **`:empty`**

- **Description:** 
  
  >Sélectionne les éléments qui n'ont pas d'enfants.

- **Exemple:**    

  ```css
  /* Cible tous les éléments <div> qui */
  /* n'ont pas de contenu */
  div:empty {
    background: lime;
  }

  ```


### 5.2 **`:not`**

- **Description:**  
  
  - La pseudo-classe de négation ``:not()`` est une notation fonctionnelle qui prend un sélecteur comme argument. Elle permet de cibler les éléments qui ne sont pas représentés par cet argument. 
  
  - Le sélecteur passé en argument ne doit pas contenir d'autre sélecteur de négation et ne doit pas cibler de pseudo-élément.

- **Exemple:** 

  ```css
  /* Sélectionne n'importe quel élément qui n'est */
    /* pas un paragraphe */
    :not(p) {
      color: blue;
    }

  ```


#### RQ :

- ``docs MDN`` : [doc_pseudo_classes](https://developer.mozilla.org/fr/docs/Web/CSS/Pseudo-classes)