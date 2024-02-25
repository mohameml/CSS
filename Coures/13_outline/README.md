# cour 13 : **``outilne``**


## 1.**Introduction:``border`` vs ``outline``**

- **``border``:**

    la bordure (`border`) peut affecter la taille totale d'un élément en CSS. Par défaut, la taille déclarée avec les propriétés `width` et `height` ne prend pas en compte la bordure. Ainsi, si vous définissez une bordure pour un élément, la taille totale de cet élément sera la somme de la largeur (width), de la bordure à gauche et à droite, de la hauteur (height), et de la bordure en haut et en bas.

    Par exemple, si vous avez le code suivant :

    ```css
    .monElement {
        width: 100px;
        height: 50px;
        border: 2px solid #000;
    }
    ```

    La taille totale de l'élément, y compris la bordure, serait de 104 pixels en largeur (100 pixels de largeur + 2 pixels de bordure à gauche + 2 pixels de bordure à droite) et 54 pixels en hauteur (50 pixels de hauteur + 2 pixels de bordure en haut + 2 pixels de bordure en bas).

- **``outline:``**

    la propriété `outline` en CSS est souvent associée à l'ajout d'une bordure sans affecter la taille totale de l'élément. La propriété `outline` est utilisée pour créer une bordure visuelle autour d'un élément, mais contrairement à la propriété `border`, elle n'affecte pas le modèle de boîte de l'élément.

    L'utilisation de `outline` est pratique lorsque vous souhaitez ajouter une indication visuelle temporaire, telle qu'un contour autour d'un élément lorsqu'il est en surbrillance ou en focus, sans altérer la mise en page globale de la page. Elle est souvent utilisée pour des éléments interactifs tels que les liens ou les boutons.


## 2. **La propriété `outline`:**


- **Description:**
    
    >La propriété `outline` en CSS est utilisée pour définir une bordure qui entoure un élément, mais qui ne modifie pas la taille ou la position réelle de l'élément sur la page. Elle est souvent utilisée pour mettre en évidence un élément lorsqu'il est sélectionné ou pour créer des effets visuels sans modifier le flux normal du document.


- **La syntaxe de base de la propriété `outline` est la suivante :**

    ```css
    .element {
        outline: [largeur] [style] [couleur];
    }
    ```

    Vous pouvez spécifier une largeur, un style (par exemple, "solid" pour une ligne pleine) et une couleur pour l'outline. 
    
    
- **Voici quelques exemples :**

    1. **Outline simple :**

    ```css
    .element {
        outline: 2px solid #3498db;
    }
    ```

    Cela crée un outline de 2 pixels de large, solide, avec une couleur bleue.

    2. **Outline avec une largeur spécifique pour chaque côté :**

    ```css
    .element {
        outline-width: 1px 2px 3px 4px; /* Haut, Droite, Bas, Gauche */
        outline-style: solid;
        outline-color: #e74c3c;
        
    }
    ```

    Cela définit une largeur d'outline différente pour chaque côté avec un style solide et une couleur rouge.

    3. **Outline sans modification de la taille de l'élément :**

    ```css
    .element {
        outline: 2px dashed #2ecc71;
    }
    ```

    Cela ajoute une bordure en pointillés de 2 pixels de large avec une couleur verte sans modifier la taille de l'élément.


