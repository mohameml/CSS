# cour 05 : **Mise en forme texte**


>La mise en forme du texte en CSS permet de personnaliser l'apparence du contenu textuel sur une page web. Elle inclut des propriétés telles que la couleur du texte, la police, la taille, le style (gras, italique), le soulignement, le barré, l'espacement des lettres et des mots, l'alignement, la transformation du texte (majuscules, minuscules), l'espacement des lignes, l'ombre du texte, et d'autres options. Ces propriétés offrent un contrôle précis sur l'esthétique du texte, améliorant ainsi la lisibilité et l'attrait visuel des pages web.



## 1. **Modification de la police de caractères :`font-family`**

>La propriété CSS `font-family` est utilisée pour définir la famille de polices de caractères à utiliser pour afficher le texte dans un élément HTML. Cette propriété spécifie une liste ordonnée de noms de polices ou de types génériques de polices.


- **La syntaxe générale de la propriété `font-family` est la suivante :**

    ```css
    selector {
        font-family: value1, value2, ...;
    }
    ```

    - `selector` : L'élément HTML auquel vous souhaitez appliquer la propriété.
    - `value1`, `value2`, ... : Les noms de polices spécifiques ou les types génériques de polices. Vous pouvez lister plusieurs valeurs en les séparant par des virgules. Si un nom de police contient des espaces, il doit être placé entre guillemets.


- **Exemple d'utilisation :**

    ```css
    body {
        font-family: "Helvetica Neue", Arial, sans-serif;
    }
    ```

    Dans cet exemple, la police "Helvetica Neue" sera utilisée si elle est disponible sur l'ordinateur de l'utilisateur. Sinon, le navigateur utilisera Arial, et en dernier recours, il utilisera une police sans empattement générique (sans-serif).

#### RQ : 

- Il est important de fournir une liste de polices avec des alternatives pour assurer une meilleure compatibilité entre les différents systèmes d'exploitation et les préférences des utilisateurs. La propriété `font-family` donne aux développeurs une certaine flexibilité pour choisir la meilleure apparence du texte en fonction de la disponibilité des polices sur différents appareils.

- pour plus de fonts : [fonts_google](https://fonts.google.com/)



## 2. **Ajustement de la taille du texte :`font-size`**

>La propriété CSS `font-size` est utilisée pour définir la taille du texte dans un élément HTML. Elle spécifie la hauteur du caractère, et vous pouvez définir la taille en utilisant différentes unités telles que pixels (`px`), ems (`em`), pourcentage (`%`), points (`pt`), etc.

- **La syntaxe générale de la propriété `font-size` est la suivante :**

    ```css
    selector {
        font-size: value;
    }
    ```

    - `selector` : L'élément HTML auquel vous souhaitez appliquer la propriété.
    - `value` : La valeur numérique représentant la taille du texte, suivie de l'unité de mesure appropriée.

- **Exemples d'utilisation :**

    ```css
    p {
        font-size: 16px;
    }
    ```

    Dans cet exemple, tous les paragraphes (`<p>`) auront une taille de texte de 16 pixels.

    ```css
    h1 {
        font-size: 2em;
    }
    ```

    Dans cet exemple, toutes les balises `<h1>` auront une taille de texte équivalente à deux fois la taille de texte par défaut de leur parent.

    ```css
    body {
        font-size: 100%;
    }
    ```

    Dans cet exemple, la taille du texte dans le corps (`<body>`) sera définie à 100% de la taille par défaut du navigateur, ce qui est souvent équivalent à 16 pixels.


## 3. **`font-weight`:**

>La propriété CSS `font-weight` est utilisée pour définir l'épaisseur ou le poids de la police de caractères (contrôle **la densité visuelle du texte**) d'un élément HTML. Elle permet de spécifier si le texte doit apparaître en caractères gras ou avec une épaisseur normale.


- **La syntaxe générale de la propriété `font-weight` est la suivante :**

    ```css
    selector {
        font-weight: value;
    }
    ```

    - `selector` : L'élément HTML auquel vous souhaitez appliquer la propriété.
    - `value` : La valeur représentant l'épaisseur de la police. Les valeurs courantes sont `normal`, `bold`, ou des valeurs numériques, généralement dans la plage de 100 à 900.


- **Exemples d'utilisation :**

    ```css
    p {
        font-weight: normal;
    }
    ```

    Dans cet exemple, tous les paragraphes (`<p>`) auront une épaisseur de police normale.

    ```css
    h1 {
        font-weight: bold;
    }
    ```

    Dans cet exemple, toutes les balises `<h1>` auront une épaisseur de police en caractères gras.

    ```css
    span {
        font-weight: 600;
    }
    ```

    Dans cet exemple, tous les éléments `<span>` auront une épaisseur de police définie à 600. Les valeurs numériques entre 100 et 900 sont généralement acceptées, où 400 est considéré comme normal et 700 est considéré comme gras.

## 4. **`font-style`:**


>La propriété CSS `font-style` est utilisée pour définir le style de la police de caractères d'un élément HTML, notamment pour spécifier s'il doit être affiché en italique.


- **La syntaxe générale de la propriété `font-style` est la suivante :**

    ```css
    selector {
        font-style: value;
    }
    ```

    - `selector` : L'élément HTML auquel vous souhaitez appliquer la propriété.
    - `value` : La valeur représentant le style de la police. Les valeurs courantes sont `normal`, `italic`, ou `oblique`.

- **Exemples d'utilisation :**

    ```css
    p {
        font-style: normal;
    }
    ```

    Dans cet exemple, tous les paragraphes (`<p>`) auront un style de police normal.

    ```css
    em {
        font-style: italic;
    }
    ```

    Dans cet exemple, tous les éléments `<em>` auront un style de police en italique.

    La valeur `oblique` est une alternative à `italic`. Cependant, `oblique` peut être moins pris en charge et n'est pas aussi largement utilisé que `italic`.

    ```css
    blockquote {
        font-style: oblique;
    }
    ```

Il est important de noter que le rendu de l'italique dépend de la police spécifique utilisée. Certaines polices peuvent avoir une version distincte en italique, tandis que d'autres peuvent appliquer un style oblique à la version normale de la police. Si une police italique spécifique n'est pas disponible, le navigateur peut simuler l'italique en inclinant simplement les caractères.

## 5. **``text-decoration:``**

>La propriété CSS `text-decoration` est utilisée pour définir la décoration du texte, telle que le soulignement, le texte barré, ou la suppression de toute décoration. Elle permet de styliser le texte en ajoutant ou en supprimant des lignes ou des traits décoratifs.

- **La syntaxe générale de la propriété `text-decoration` est la suivante :**

    ```css
    selector {
        text-decoration: value;
    }
    ```

    - `selector` : L'élément HTML auquel vous souhaitez appliquer la propriété.
    - `value` : La valeur représentant le type de décoration du texte. Les valeurs courantes incluent `none` (aucune décoration), `underline` (souligné), `overline` (surligné en haut), `line-through` (barré), ou `inherit` (hériter de la décoration du texte du parent).

- **le raccourci `text-decoration`:**

    La propriété `text-decoration` en CSS est un raccourci qui combine trois propriétés distinctes : `text-decoration-line`, `text-decoration-style`, et `text-decoration-color`. Cela permet de définir la décoration complète du texte en utilisant une seule propriété.

    La syntaxe générale de `text-decoration` est la suivante :

    ```css
    selector {
        text-decoration: line style color;
    }
    ```

    - `line` : La ligne de décoration du texte (par exemple, `underline`, `overline`, `line-through`, `none`, etc.).
    - `style` : Le style de la ligne de décoration (par exemple, `solid`, `dashed`, `dotted`, `double`, etc.).
    - `color` : La couleur de la ligne de décoration (une valeur CSS valide pour la couleur).

    Exemple d'utilisation :

    ```css
    a {
        text-decoration: underline dotted #3366cc;
    }
    ```

    Dans cet exemple, tous les liens (`<a>`) auront un soulignement (`underline`) avec un style en pointillé (`dotted`) de couleur bleu (`#3366cc`).


- **Exemples d'utilisation :**

    ```css
    a {
        text-decoration: none;
    }
    ```

    Dans cet exemple, tous les liens (`<a>`) n'auront aucune décoration de texte, supprimant ainsi tout soulignement par défaut des liens.

    ```css
    h2 {
        text-decoration: underline;
    }
    ```

    Dans cet exemple, toutes les balises `<h2>` auront un soulignement.

    ```css
    p {
        text-decoration: line-through;
    }
    ```

    Dans cet exemple, tous les paragraphes (`<p>`) auront un texte barré.

Il est courant d'utiliser la propriété `text-decoration` pour styliser les liens en supprimant ou en modifiant l'apparence du soulignement par défaut. Vous pouvez également combiner plusieurs valeurs pour appliquer différentes décorations à un même texte, par exemple, `text-decoration: underline overline;`.



## 6. **Espacement des lettres et des mots : `letter-spacing` && `word-spacing`**

   - `letter-spacing` ajuste l'espacement entre les lettres, et `word-spacing` ajuste l'espacement entre les mots.

   ```css
   p {
       letter-spacing: 2px;
       word-spacing: 5px;
   }
   ```

## 7. **Alignement du texte :`text-align`**

>La propriété CSS `text-align` est utilisée pour définir l'alignement horizontal du texte à l'intérieur d'un élément HTML. Elle permet de spécifier si le texte doit être aligné à gauche, à droite, au centre ou justifié.


- **La syntaxe générale de la propriété `text-align` est la suivante :**

    ```css
    selector {
        text-align: value;
    }
    ```

    - `selector` : L'élément HTML auquel vous souhaitez appliquer la propriété.
    - `value` : La valeur représentant l'alignement horizontal du texte. Les valeurs courantes incluent `left` (gauche), `right` (droite), `center` (centre), et `justify` (justifié).

- **Exemples d'utilisation :**

    ```css
    p {
        text-align: left;
    }
    ```

    Dans cet exemple, tous les paragraphes (`<p>`) auront leur texte aligné à gauche.

    ```css
    h1 {
        text-align: right;
    }
    ```

    Dans cet exemple, toutes les balises `<h1>` auront leur texte aligné à droite.

    ```css
    div {
        text-align: center;
    }
    ```

    Dans cet exemple, tous les éléments `<div>` auront leur texte centré horizontalement.

    ```css
    blockquote {
        text-align: justify;
    }
    ```

    Dans cet exemple, tous les éléments `<blockquote>` auront leur texte justifié, ce qui signifie que l'espace entre les mots sera ajusté pour occuper toute la largeur de l'élément.


La propriété `text-align` est un moyen efficace de contrôler l'alignement horizontal du texte dans vos mises en page web.


## 8. **Transformation du texte :`text-transform`**

>La propriété CSS `text-transform` est utilisée pour spécifier comment le texte doit être transformé en termes de casse (majuscules ou minuscules). Elle permet de modifier la capitalisation des caractères dans le texte d'un élément HTML.

- **La syntaxe générale de la propriété `text-transform` est la suivante :**

    ```css
    selector {
        text-transform: value;
    }
    ```

    - `selector` : L'élément HTML auquel vous souhaitez appliquer la propriété.
    - `value` : La valeur représentant le mode de transformation du texte. Les valeurs courantes incluent `uppercase` (tout en majuscules), `lowercase` (tout en minuscules), `capitalize` (la première lettre de chaque mot en majuscule), et `none` (pas de transformation).


- **Exemples d'utilisation :**

    ```css
    p {
        text-transform: uppercase;
    }
    ```

    Dans cet exemple, tous les paragraphes (`<p>`) auront leur texte transformé en majuscules.

    ```css
    h2 {
        text-transform: lowercase;
    }
    ```

    Dans cet exemple, toutes les balises `<h2>` auront leur texte transformé en minuscules.

    ```css
    span {
        text-transform: capitalize;
    }
    ```

    Dans cet exemple, tous les éléments `<span>` auront leur texte avec la première lettre de chaque mot en majuscule.

## 9. **Espacement du texte :`line-height`**

   `line-height` contrôle l'espacement entre les lignes.

   ```css
   p {
       line-height: 1.5;
   }
   ```

## 10. **Ombre du texte : `text-shadow`**

   - `text-shadow` ajoute une ombre au texte. Les valeurs sont la position horizontale, la position verticale, le flou et la couleur.

   ```css
   h1 {
       text-shadow: 2px 2px 4px #333;
   }
   ```
