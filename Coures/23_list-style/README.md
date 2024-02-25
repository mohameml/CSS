# cour 23 : **list-style:**


- **Description:**

    >La propriété `list-style` en CSS est utilisée pour définir le style de la liste (généralement appliquée à une liste `<ul>`, `<ol>`, ou `<dl>`). Cette propriété regroupe plusieurs sous-propriétés qui contrôlent l'apparence des marqueurs (puces ou numéros) et des listes.


- **Les sous-propriétés les plus couramment utilisées dans `list-style` sont les suivantes :**

    1. **`list-style-type` :** 
        
        - Définit le type de marqueur utilisé pour la liste. Les valeurs possibles incluent `disc` (puce pleine), `circle` (cercle creux), `square` (carré creux)..etc

            ```css
            ul {
                list-style-type: disc; /* Puce pleine par défaut */
            }

            ol {
                list-style-type: decimal; /* Numéros décimaux pour les listes ordonnées */
            }
            ```

    2. **`list-style-position` :** Définit la position des marqueurs par rapport au contenu de la liste. La valeur par défaut est `outside`, ce qui signifie que les marqueurs sont en dehors du flux de contenu normal. La valeur `inside` place les marqueurs à l'intérieur du flux de contenu.

            ```css
            ul {
                list-style-position: outside; /* Position par défaut, les puces sont en dehors du contenu */
            }

            ol {
                list-style-position: inside; /* Les numéros sont à l'intérieur du flux de contenu */
            }
            ```

    3. **`list-style-image` :** Permet de spécifier une image personnalisée comme marqueur. Vous pouvez utiliser `none` pour désactiver les marqueurs par défaut.

        ```css
        ul {
            list-style-image: url('puce-personnalisee.png'); /* Utilisation d'une image comme puce */
        }

        ol {
            list-style-image: none; /* Désactive les numéros par défaut pour les listes ordonnées */
        }
        ```


- Vous pouvez combiner ces sous-propriétés dans la propriété `list-style` pour simplifier le style des listes. Par exemple :

    ```css
    ul {
    list-style: square inside; /* Utilise un carré creux comme puce et positionne à l'intérieur du flux de contenu */
    }
    ```


### RQ : 

Dans la pratique, la propriété `list-style` est souvent utilisée pour désactiver le style de liste par défaut fourni par les navigateurs. Par défaut, les navigateurs appliquent un padding-left et un style de marqueurs aux listes. On utilise donc `list-style: none;` pour désactiver tous les marqueurs et `padding-left: 0;` pour éliminer l'espacement à gauche. En pratique, il existe d'autres moyens simples de styliser les listes. 

```css
.unstyle-list {
    padding-left: 0 ;
    list-style ; none ;
}

```
