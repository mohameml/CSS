

## 1. **`counter-increment`:**

- **Description:**

    >La propriété CSS `counter-increment` est utilisée pour incrémenter la valeur d'un compteur CSS. Ce compteur peut être utilisé pour numériser ou identifier des éléments dans votre mise en page. 
    
    
- **Voici un exemple simple d'utilisation de `counter-increment` :**

  ```css
  /* Création d'un compteur nommé "monCompteur" et incrémentation à chaque paragraphe (<p>) */
  body {
    counter-reset: monCompteur;
  }

  p {
    counter-increment: monCompteur;
  }

  /* Utilisation du compteur dans le contenu des paragraphes */
  p::before {
    content: "Paragraphe " counter(monCompteur) ": ";
  }
  ```

  Dans cet exemple, la propriété `counter-reset` initialise le compteur nommé "monCompteur" à zéro au niveau du corps (`body`), puis `counter-increment` incrémente ce compteur pour chaque paragraphe (`<p>`). En utilisant le pseudo-élément `::before`, on affiche le numéro du compteur avant le contenu de chaque paragraphe.

  Ainsi, cette propriété est utile pour créer une numérotation personnalisée ou pour identifier des éléments dans une mise en page en utilisant des compteurs CSS.



[lien](https://developer.mozilla.org/fr/docs/Web/CSS/CSS_counter_styles/Using_CSS_counters)

[lien](https://developer.mozilla.org/fr/docs/Web/CSS/counter-increment)