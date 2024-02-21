# cour 6 : **Les unités CSS**


>Les unités de mesure en CSS sont utilisées pour définir la taille, la longueur, la couleur et d'autres propriétés des éléments sur une page web. Elles permettent aux développeurs web de spécifier des dimensions de manière précise et cohérente. 


## 1. **les unités absolues:**

>En CSS, les unités absolues sont des unités de mesure qui sont considérées comme fixes et ne dépendent pas de facteurs tels que la taille de l'écran ou la taille de la police. Ces unités sont souvent utilisées pour définir des dimensions fixes indépendamment de l'environnement d'affichage. 


1. **Pixel (px) :**
   - *Description :* Le pixel est l'unité de mesure la plus courante en CSS. Un pixel est une unité fixe et représente un point individuel sur l'écran.
   - *Utilisation en pratique :* Souvent utilisé pour définir des dimensions fixes, telles que la taille des bordures, la largeur et la hauteur d'éléments.
   - *Exemple :* `border-width: 1px;` définira une bordure d'une épaisseur d'un pixel.

2. **Point (pt) :**
   - *Description :* Le point est une unité de mesure utilisée principalement pour les impressions. Un point est équivalent à 1/72e de pouce.
   - *Utilisation en pratique :* Souvent utilisé pour définir la taille de la police lors de la création de documents destinés à l'impression.
   - *Exemple :* `font-size: 12pt;` définira la taille de la police à 12 points.

3. **Pica (pc) :**
   - *Description :* La pica est une unité de mesure similaire au point, également utilisée principalement pour les impressions. Une pica équivaut à 12 points.
   - *Utilisation en pratique :* Moins fréquemment utilisée que le point, mais peut être utilisée dans des contextes d'impression spécifiques.
   - *Exemple :* `line-height: 1.5pc;` définira la hauteur de ligne à 1,5 pica.

Ces unités absolues sont utiles lorsque des dimensions fixes sont nécessaires, par exemple pour garantir la cohérence visuelle dans une mise en page ou pour respecter des spécifications de conception spécifiques. Cependant, il est important de les utiliser avec précaution, car elles peuvent ne pas s'adapter de manière dynamique à différentes tailles d'écran ou de police, ce qui peut entraîner des problèmes de conception sur des dispositifs variés.








## 2. **les unités relatives :**

>En CSS, les unités relatives sont des unités de mesure qui dépendent de certaines caractéristiques de l'environnement ou de la structure de la page. Elles permettent de créer des mises en page plus flexibles et adaptables. 

1. **Em (em) :**
   - *Description :* L'unité ``em`` est basée sur la taille de la police de l'élément parent. Une valeur de 1em équivaut à la taille de la police actuelle.
   - *Utilisation en pratique :* Utile pour définir la taille de la police, les marges et les rembourrages de manière proportionnelle à la taille de la police de l'élément parent.
   - *Exemple :* `font-size: 1.5em;` définira la taille de la police à 1.5 fois la taille de la police de l'élément parent.

2. **Rem (rem) :**
   - *Description :* Similaire à "em", mais basé sur la taille de la police de l'élément racine (root), c'est-à-dire la taille de la police définie au niveau de la balise `<html>`.
   - *Utilisation en pratique :* Utile pour créer une mise en page où la taille des éléments dépend de la taille de la police globale plutôt que de l'élément parent immédiat.
   - *Exemple :* `margin: 2rem;` définira une marge équivalente à deux fois la taille de la police de la balise `<html>`.

3. **Pourcentage (%) :**
   - *Description :* Les pourcentages sont utilisés par rapport à la taille de l'élément parent. Par exemple, une largeur de 50% signifie que l'élément occupera la moitié de la largeur de son parent.
   - *Utilisation en pratique :* Souvent utilisé pour définir la largeur, la hauteur, les marges, etc., de manière proportionnelle à la taille de l'élément parent.
   - *Exemple :* `width: 50%;` définira la largeur de l'élément à 50% de la largeur de son parent.

4. **VW (Viewport Width) :**
   - *Description :* Basé sur la largeur de la fenêtre d'affichage (viewport). 1 VW équivaut à 1% de la largeur totale de la fenêtre d'affichage.
   - *Utilisation en pratique :* Utile pour créer des mises en page réactives qui s'adaptent à la largeur de l'écran.
   - *Exemple :* `width: 50vw;` définira la largeur de l'élément à 50% de la largeur de la fenêtre d'affichage.

5. **VH (Viewport Height) :**
   - *Description :* Basé sur la hauteur de la fenêtre d'affichage (viewport). 1 VH équivaut à 1% de la hauteur totale de la fenêtre d'affichage.
   - *Utilisation en pratique :* Utile pour créer des mises en page réactives qui s'adaptent à la hauteur de l'écran.
   - *Exemple :* `height: 50vh;` définira la hauteur de l'élément à 50% de la hauteur de la fenêtre d'affichage.

Ces unités relatives offrent une flexibilité dans la conception des pages web, car elles permettent aux éléments de s'ajuster dynamiquement en fonction de leur contexte ou de l'environnement d'affichage.