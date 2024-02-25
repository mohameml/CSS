# cour 10 : **``background``**


## 1. **Introduction:**

>La propriété `background` en CSS est une fonctionnalité fondamentale qui permet de contrôler l'arrière-plan d'un élément HTML. Cette propriété offre une variété d'options pour personnaliser l'apparence visuelle d'un élément, que ce soit une couleur unie, une image, une répétition de motifs.

- La syntaxe de la propriété `background` peut être assez diversifiée pour répondre à différents besoins de conception. Elle peut être utilisée pour définir plusieurs valeurs, telles que la couleur d'arrière-plan, l'image, la position, la répétition, la taille, et d'autres propriétés associées à l'arrière-plan.




## 2. **les propriétés du ``background-*``:**



### 2.1 **La propriété `background-color`:**

- **Description:**
    >La propriété `background-color` en CSS est utilisée pour définir la couleur d'arrière-plan d'un élément HTML. Elle permet de spécifier une couleur unie qui remplira la zone délimitée par les marges, les bordures et le contenu de l'élément. 
    
    
- **Voici un exemple simple d'utilisation de la propriété `background-color` :**

    ```css
    .element {
    background-color: #3498db; /* Exemple de couleur bleue */
    }
    ```

    Dans cet exemple, l'élément avec la classe "element" aurait un arrière-plan de couleur bleue. 



### 2.2 **La propriété `background-image`:**

- **Description:**

    >La propriété `background-image` en CSS est utilisée pour spécifier une image qui sera utilisée comme arrière-plan d'un élément HTML. Elle permet d'ajouter des visuels attractifs et personnalisés à un site web. 
    
    
- **Voici un exemple simple d'utilisation de la propriété `background-image` :**

    ```css
    .element {
    background-image: url('image.jpg'); /* Chemin vers l'image */
    }
    ```

    Dans cet exemple, l'image spécifiée par le chemin 'image.jpg' sera utilisée comme arrière-plan pour l'élément avec la classe "element". Vous pouvez spécifier le chemin de l'image en utilisant différentes méthodes, telles que l'utilisation d'une URL absolue, d'une URL relative.

    ```css
    .element {
    background-image: url('/images/image.jpg'); /* URL absolue */
    }

    .another-element {
    background-image: url('../images/another-image.jpg'); /* URL relative */
    }



## 2.3 **La propriété `background-repeat`:**

- **Description:**

    >La propriété `background-repeat` en CSS est utilisée pour définir la manière dont une image de fond doit être répétée sur l'arrière-plan d'un élément HTML. Elle contrôle la disposition de l'image lorsque celle-ci ne suffit pas à remplir l'intégralité de l'élément. 
    
    

- **Voici quelques valeurs courantes pour la propriété `background-repeat` :**

    - `repeat`: L'image est répétée à la fois horizontalement et verticalement. C'est la valeur par défaut.
        
        ```css
        .element {
            background-image: url('image.jpg');
            background-repeat: repeat;
        }
        ```

    - `repeat-x`: L'image est répétée horizontalement, mais pas verticalement.

        ```css
        .element {
            background-image: url('image.jpg');
            background-repeat: repeat-x;
        }
        ```

    - `repeat-y`: L'image est répétée verticalement, mais pas horizontalement.

        ```css
        .element {
            background-image: url('image.jpg');
            background-repeat: repeat-y;
        }
        ```

    - `no-repeat`: L'image n'est pas répétée et est affichée une seule fois.

        ```css
        .element {
            background-image: url('image.jpg');
            background-repeat: no-repeat;
        }
        ```


- La propriété `background-repeat` est souvent utilisée en combinaison avec d'autres propriétés de la famille `background`, telles que `background-image`, `background-position` et `background-size`, pour contrôler l'apparence et le comportement de l'arrière-plan. 



- **Par exemple :**

    ```css
    .element {
        background-image: url('image.jpg');
        background-repeat: no-repeat;
    }
    ```

    Cela permet de personnaliser le rendu de l'image de fond en fonction des besoins de conception spécifiques.



### 2.4 **La propriété `background-size`:**

- **Description:**

    >La propriété `background-size` en CSS permet de contrôler la taille de l'image de fond d'un élément. Elle offre différentes valeurs pour ajuster la dimension de l'image par rapport à l'arrière-plan. 
    
    
- **Voici quelques-unes des valeurs courantes pour la propriété `background-size` :**

    - `auto`: C'est la valeur par défaut. L'image conserve sa taille d'origine.

        ```css
        .element {
            background-image: url('image.jpg');
            background-size: auto;
        }
        ```

    - `cover`: L'image est redimensionnée de manière à couvrir complètement l'arrière-plan sans déformer l'image. Cela peut entraîner une découpe de l'image si les proportions ne correspondent pas parfaitement à celles de l'arrière-plan.

        ```css
        .element {
            background-image: url('image.jpg');
            background-size: cover;
        }
        ```

    - `contain`: L'image est redimensionnée pour s'ajuster à l'arrière-plan sans être découpée. Cela garantit que toute l'image est visible, mais il peut y avoir des espaces vides autour de l'image. Les zones éventuellement vides sont remplies avec la couleur d'arrière-plan (définie grâce à ``background-color``)

        ```css
        .element {
            background-image: url('image.jpg');
            background-size: contain;
        }
        ```

    - ``Valeurs spécifiques en pixels ou en pourcentage :`` Vous pouvez spécifier une largeur et une hauteur spécifiques pour l'image.

        ```css
        .element {
            background-image: url('image.jpg');
            background-size: 200px 100px; /* Largeur 200 pixels, hauteur 100 pixels */
        }
        ```
        
- **Exemple :**

    ```css
    .element {
        background-image: url('image.jpg');
        background-repeat: no-repeat;
        background-size: cover;
    }
    ```

    Cela permet de créer des arrière-plans visuellement attrayants et personnalisés en contrôlant la taille de l'image de fond.


### 2.5 **La propriété `background-position` :**

- **Descripition:**
    >La propriété `background-position` en CSS est utilisée pour définir la position de l'image de fond par rapport à l'arrière-plan d'un élément. Elle spécifie les coordonnées horizontales et verticales où l'image de fond doit commencer à être affichée. 
    
- **Les valeurs de  `background-position` :**

    - **Valeurs par défaut :** Si vous ne spécifiez pas de valeur pour `background-position`, l'image de fond est généralement positionnée en haut à gauche de l'arrière-plan.

    ```css
    .element {
        background-image: url('image.jpg');
        /* background-position: top left; (C'est la valeur par défaut) */
    }
    ```

    - **Coordonnées spécifiques :** Vous pouvez spécifier des coordonnées pour positionner l'image de fond de manière précise. Les valeurs peuvent être spécifiées en pourcentage ou en pixels, et vous pouvez utiliser une ou deux valeurs.

        ```css
        .element {
            background-image: url('image.jpg');
            background-position: 50% 50%; /* Centre l'image horizontalement et verticalement */
        }
        ```

        ```css
        .element {
            background-image: url('image.jpg');
            background-position: 10px 20px; /* 10 pixels à partir du haut, 20 pixels à partir de la gauche */
        }
        ```

    - **Valeurs clés :** Vous pouvez utiliser des mots-clés pour définir la position, comme `top`, `bottom`, `left`, `right`, et `center`.

        ```css
        .element {
            background-image: url('image.jpg');
            background-position: right bottom; /* Aligne l'image en bas à droite */
        }
        ```


- **Exemple :**

    ```css
    .element {
        background-image: url('image.jpg');
        background-repeat: no-repeat;
        background-position: center center; /* Centre l'image horizontalement et verticalement */
        background-size: cover;
    }
    ```

    Cela permet de contrôler précisément où l'image de fond doit être positionnée par rapport à l'arrière-plan de l'élément.


### 2.6 **La propriété `background-attachment`:**

- **Description:**

    >La propriété `background-attachment` en CSS est utilisée pour spécifier si l'image de fond d'un élément doit défiler avec le contenu de la page ou rester fixe pendant le défilement(scrole). 
    
- **Voici quelques valeurs courantes pour la propriété `background-attachment` :**

    - **`scroll` (par défaut) :** Ce mot-clé indique que l'arrière-plan est fixé par rapport au contenu de l'élément (il ne défile pas avec) mais est rattaché à la bordure de l'élément

        ```css
        .element {
            background-image: url('image.jpg');
            background-attachment: scroll;
        }
        ```

    - **`fixed` :** Ce mot-clé indique que l'arrière-plan est fixe par rapport à la zone d'affichage (viewport). Ainsi, même si l'élément dispose d'outils de défilement, l'arrière-plan ciblé ne se déplacera pas avec l'élément

        ```css
        .element {
            background-image: url('image.jpg');
            background-attachment: fixed;
        }
        ```

    - **`local` :** L'image de fond défilerait avec le contenu de l'élément contenant, plutôt qu'avec la page elle-même.

        ```css
        .element {
            background-image: url('image.jpg');
            background-attachment: local;
        }
        ```

## 3. **Le raccourci `background`:**

- **Description:**

    >Le raccourci `background` permet de définir plusieurs propriétés liées à l'arrière-plan d'un élément en une seule déclaration. Il offre une manière concise de spécifier les différentes propriétés relatives à l'arrière-plan, telles que `background-color`, `background-image`, `background-repeat`, `background-position`, `background-size`, et `background-attachment`. 
    
    
- **Voici la syntaxe générale du raccourci `background` :**

    ```css
    .element {
    background: [background-color] [background-image] [background-repeat] [background-attachment] [background-position] / [background-size];
    }
    ```


- **Voici un exemple avec des valeurs spécifiques :**

    ```css
    .element {
    background: #3498db url('image.jpg') no-repeat fixed center center / cover;
    }
    ```

    Dans cet exemple :

    - `#3498db` est la couleur d'arrière-plan.
    - `url('image.jpg')` est l'image de fond.
    - `no-repeat` indique que l'image ne doit pas être répétée.
    - `fixed` spécifie que l'image de fond reste fixe par rapport à la fenêtre du navigateur.
    - `center center` détermine la position de l'image de fond au centre horizontalement et verticalement.
    - `cover` spécifie que l'image de fond doit couvrir complètement l'arrière-plan sans déformation.

    Utiliser le raccourci `background` peut rendre le code CSS plus lisible et plus concis, en regroupant plusieurs propriétés en une seule ligne. Cependant, il est important de noter que l'ordre des propriétés doit être respecté pour que le raccourci fonctionne correctement.