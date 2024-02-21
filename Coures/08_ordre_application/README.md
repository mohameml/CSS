# cour 08 : **Ordre d'application**


>Lorsque plusieurs règles CSS s'appliquent à un même élément HTML, la cascade CSS détermine l'ordre d'application des styles en fonction de la spécificité des sélecteurs et de l'importance des déclarations. 



## 1. **Priorité entre les différents façons de style:``external`` , ``internal`` , ``inline``**


>La priorité des styles en CSS suit la cascade CSS, qui définit l'ordre de priorité lors de la résolution des conflits entre différentes règles de style. 

- Voici comment la priorité est généralement établie entre les styles ``externes``, ``internes`` et en ``ligne`` :

   1. **Styles externes (feuille de style externe) :**
      - **Emplacement :** Dans un fichier CSS externe lié à la page HTML.
      - **Priorité :** Moyenne.
      - **Exemple :**
      ```html
      <link rel="stylesheet" type="text/css" href="styles.css">
      ```

   2. **Styles internes (balise `<style>` dans l'en-tête) :**
      - **Emplacement :** Dans la balise `<style>` située dans l'en-tête HTML.
      - **Priorité :** Moyenne à haute (supérieure à la feuille de style externe mais inférieure à l'inlinestyle).
      - **Exemple :**
      ```html
      <head>
         <style>
            /* Styles internes ici */
         </style>
      </head>
      ```

   3. **Styles en ligne (attribut `style` dans la balise HTML) :**
      - **Emplacement :** Directement dans l'attribut `style` d'une balise HTML.
      - **Priorité :** La plus élevée.
      - **Exemple :**
      ```html
      <p style="color: red;">Texte rouge</p>
      ```

- Lorsqu'il y a un conflit entre des règles de style, la priorité est généralement attribuée comme suit :

   - Les styles en ligne (`style` directement dans l'élément HTML) ont la priorité la plus élevée.
   - Les styles internes (définis dans la balise `<style>`) ont une priorité intermédiaire.
   - Les styles externes (définis dans un fichier CSS externe) ont une priorité plus basse que les styles internes et en ligne.







## 2. **Spécificité:**


- **Définition:**

   >La spécificité est le moyen par lequel les navigateurs décident quelles valeurs de propriété CSS d'un élément sont les plus pertinentes et seront appliquées. La spécificité est basée sur les règles, ciblant un élément, composées par différents types de sélecteurs CSS.

   >Le principe de spécificité en CSS détermine quelle règle est appliquée lorsqu'il y a des conflits entre différentes règles de style. Plus précisément, la spécificité est utilisée pour déterminer quelle règle s'applique à un élément particulier lorsque plusieurs règles définissent des styles pour cet élément.

   - La spécificité est généralement mesurée en termes de poids attribué à chaque sélecteur. **Plus un sélecteur est spécifique, plus son poids est élevé**. 



- **hiérarchie de la spécificité:**

   Chaque sélecteur a une place dans la hiérarchie de la spécificité. Il y a en tout 4 catégories qui définissent le niveau d’un sélecteur :

   - **``Le style inline``** : c’est le style qui est défini directement dans les balises d’un élément inline, tel que ``<p style="color: red;">``
   
   - **``Les ID`` :** C’est un identifiant unique pour les éléments de la page
   
   - **``Classes``**, **``attributs``** et **``pseudo-classes``**
   
   - **``Éléments``** et **``pseudo-éléments``**

- **Comment Calculer la spécificite:**

   - La spécificité d'une règle de style en CSS est souvent représentée sous la forme **``(a, b, c)``**, où :
      - a est le nombre ``d'ID`` dans le sélecteur,
      - b est le nombre de ``classes``, ``attributs`` et ``pseudo-classes`` dans le sélecteur, et
      - c est le nombre d'``éléments`` et ``pseudo-éléments`` dans le sélecteur.

   Pour calculer la spécificité d'une règle de style donnée, attribuez des valeurs à a, b et c selon les critères ci-dessus.

   - **Par exemple**, considérez le sélecteur `#monId .maClasse p:hover`. Dans ce cas :
      - a = 1 (1 ID),
      - b = 2 (1 classe et 1 pseudo-classe `:hover`), et
      - c = 1 (1 élément `p`).

   Ainsi, la spécificité serait représentée sous la forme (1, 2, 1).

- **comparez deux spécificités:**
   
   - Lorsque vous comparez deux spécificités, commencez par comparer ``a``, puis ``b``, puis ``c``: 
      - Si ``a`` d'une règle est plus grand que ``a`` de l'autre, la règle avec la plus grande ``a`` est plus spécifique. 
      - Si ``a`` est égal, comparez b, et ainsi de suite. 
      - Si tous les trois sont égaux, la règle qui apparaît en dernier dans la feuille de style ou dans le code HTML sera appliquée (principe du ``last declaration wins``).

   - Par exemple, la spécificité (2, 1, 1) est plus spécifique que la spécificité (1, 2, 2) car le premier chiffre est plus grand, même si le deuxième chiffre est plus petit.

      ```css
      <!-- sp = (1,1,1) -->
      p.class#id2 {
            color: red;
      }
      <!-- sp =(2 , 0 , 0) -->
      #id1 #id2 {
         color: gold;
      }

      <!-- donc la dernière est plus spécifique -->
      ```


### RQ :

- ``Sélecteur universel`` (*), combinateurs (``+``, ``>``, ``~``, ``" "``, ``||``) et pseudo-classe de négation ``:not()`` n'ont aucun effet sur la spécificité (cependant, les sélecteurs déclarés à l'intérieur de ``:not()`` ont un effet).



## 3. **``important``**

>L'attribut `!important` en CSS est une déclaration qui peut être ajoutée à une règle de style pour accorder une priorité élevée à cette règle, la rendant ainsi plus spécifique et l'emportant sur d'autres règles qui pourraient normalement la surcharger. 

- Cela peut être utile dans certaines situations, mais son utilisation excessive peut rendre le code difficile à maintenir et peut entraîner des problèmes de spécificité.


- **Voici comment l'attribut `!important` fonctionne :**

   ```css
   .maClasse {
   color: red !important;
   }
   ```

   Dans cet exemple, la couleur du texte pour tous les éléments ayant la classe `.maClasse` sera définie en rouge, et cette règle est marquée comme `!important`. Cela signifie que même si d'autres règles peuvent exister pour modifier la couleur du texte dans cette classe, la règle avec `!important` l'emportera.

- **RQ:**

   - Cependant, l'utilisation de `!important` devrait être évitée autant que possible, car cela peut créer des problèmes de maintenance et de lisibilité dans le code. Il peut également rendre difficile le débogage des styles, car l'application indiscriminée de `!important` peut masquer des problèmes plus profonds dans la structure du code CSS.

   - Il est préférable de favoriser des méthodes plus propres et spécifiques pour définir les styles, comme l'utilisation de sélecteurs plus spécifiques ou la réorganisation des règles de style. Utilisez `!important` avec prudence et seulement lorsque c'est absolument nécessaire pour résoudre des conflits spécifiques.


### RQ :

- **calculataire de spécificité :** [lien](https://specificity.keegan.st/)