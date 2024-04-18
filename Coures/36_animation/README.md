# cour 36 : **``Animation``**


## 1. **``Introduction:``**


>Pour former une animation avec ``keyframes``, on a besoin au minimum de trois choses : construire l'animation avec ``@keyframes``, l'associer à un élément avec `animation-name`, et lui donner une durée avec `animation-duration`.


### 1.1 **``keyframes:``**

- **Description:**

    >Les ``keyframes`` en CSS sont utilisés pour définir les étapes d'une animation. Avec les keyframes, vous pouvez définir comment un élément doit changer à différents moments pendant l'animation. Ils sont souvent utilisés avec la propriété `animation` pour créer des animations fluides sur les éléments HTML.

- **Syntaxe**

    La syntaxe de base pour définir les keyframes est la suivante :

    ```css
    @keyframes <nom_de_l_animation> {
        <étape_1> {
            /* propriétés CSS */
        }
        <étape_2> {
            /* propriétés CSS */
        }
        /* ... */
    }
    ```

    - `<nom_de_l_animation>` : Le nom de l'animation que vous souhaitez définir.
    - `<étape_1>`, `<étape_2>`, etc. : Les étapes de l'animation définies en pourcentage (`0%`, `50%`, `100%`) ou en termes de durée (`from`, `to`).

- **Exemple:**

    Imaginons que vous vouliez créer une animation simple où un élément se déplace horizontalement de gauche à droite.

    - **Définir les keyframes** :

    ```css
    @keyframes moveRight {
        0% {
            transform: translateX(0);
        }
        100% {
            transform: translateX(200px);
        }
    }
    ```

    Dans cet exemple, l'élément commencera à sa position originale (`translateX(0)`) et se déplacera de 200 pixels vers la droite (`translateX(200px)`) à la fin de l'animation.

    - **Appliquer l'animation à un élément HTML** :

    ```css
    .move {
        width: 50px;
        height: 50px;
        background-color: #e74c3c;
        animation-name: moveRigh;
        animation-duration : 2s ;
    }
    ```

    Ici, l'élément avec la classe `.move` aura une animation `moveRight` qui durera 2 secondes, sera animée avec un effet d'accélération et de décélération (`ease-in-out`), et sera répétée indéfiniment (`infinite`).


### 1.2 **``animation-name``:**

- **Description:**

    >La propriété `animation-name` en CSS est utilisée pour spécifier le nom de l'animation définie avec les keyframes que vous souhaitez appliquer à un élément. Cette propriété permet de lier une animation spécifique à un élément HTML.


- **Syntaxe:**


    ```css
    animation-name: <nom_de_l_animation> | none | initial | inherit;
    ```

    - `<nom_de_l_animation>` : Le nom de l'animation définie avec les keyframes que vous souhaitez appliquer à l'élément.
    - `none` : Aucune animation ne sera appliquée.
    - `initial` : Définit la propriété à sa valeur par défaut.
    - `inherit` : Hérite la valeur de la propriété de son élément parent.

- **Exemple:**

    Supposons que vous ayez défini une animation nommée `bounce` à l'aide de keyframes, comme suit :

    ```css
    @keyframes bounce {
        0%, 20%, 50%, 80%, 100% {
            transform: translateY(0);
        }
        40% {
            transform: translateY(-30px);
        }
        60% {
            transform: translateY(-15px);
        }
    }
    ```

    Vous pouvez maintenant appliquer cette animation à un élément HTML en utilisant la propriété `animation-name` :

    ```css
    .bouncing-box {
        width: 100px;
        height: 100px;
        background-color: #3498db;
        animation-name: bounce;
        animation-duration: 2s;
        animation-iteration-count: infinite;
    }
    ```

    Dans cet exemple :

    - L'élément avec la classe `.bouncing-box` aura une animation nommée `bounce`.
    - L'animation durera 2 secondes (`animation-duration: 2s`).
    - L'animation sera répétée indéfiniment (`animation-iteration-count: infinite`).

### 1.3 **``animation-duration``:**

- **Description:**

    >La propriété `animation-duration` en CSS est utilisée pour définir la durée totale d'une animation spécifiée avec les keyframes. Cette propriété indique combien de temps une animation devrait prendre pour s'exécuter d'un début à une fin.

- **Syntaxe:**



    ```css
    animation-duration: <durée> | initial | inherit;
    ```

    - `<durée>` : La durée de l'animation, exprimée en secondes (s) ou en millisecondes (ms).
    - `initial` : Définit la propriété à sa valeur par défaut.
    - `inherit` : Hérite la valeur de la propriété de son élément parent.


### 2. **Propriétés des animation :**

- animation-iteration-count : infinite , number --> APP : spin load 
- animation-timing-function : ease
- animation-direction : normal , reverse , alternate , alternate-reverse 
- animation-delay

### 2.1 **``animation-iteration-count:``**

- **Description:**

    >La propriété `animation-iteration-count` en CSS est utilisée pour définir le nombre de fois qu'une animation spécifiée avec les keyframes doit être répétée. Elle permet de contrôler la répétition d'une animation après sa première exécution.

- **Syntaxe:**

    ```css
    animation-iteration-count: <nombre> | infinite ;
    ```

    - `<nombre>` : Le nombre de fois que l'animation doit être répétée.
    - `infinite` : L'animation sera répétée indéfiniment.



### 2.2 **``animation-timing-function:``**

- **Description:**

    >La propriété `animation-timing-function` en CSS est utilisée pour contrôler la vitesse de progression d'une animation. Elle permet de spécifier la manière dont les étapes intermédiaires d'une animation sont calculées, influençant ainsi la vitesse et l'accélération de l'animation.

- **Syntaxe:**

    ```css
    animation-timing-function: <fonction_de_timing>;
    ```

    - `<fonction_de_timing>` : La fonction de timing qui contrôle la vitesse de progression de l'animation. Voici quelques valeurs courantes :
        - `linear` : L'animation progresse à une vitesse constante.
        - `ease` : L'animation commence lentement, accélère et ralentit à nouveau vers la fin.
        - `ease-in` : L'animation commence lentement et accélère vers la fin.
        - `ease-out` : L'animation commence rapidement et ralentit vers la fin.
        - `ease-in-out` : L'animation commence lentement, accélère, puis ralentit à nouveau.


### 2.3  **``animation-direction:``**

- **Description:**

    >La propriété `animation-direction` en CSS est utilisée pour définir la direction de l'animation lorsque celle-ci est répétée. Elle permet de contrôler si l'animation doit avancer normalement (0% -> 100%), en sens inverse (100% -> 0%) ou alterner entre les deux à chaque itération.

- **Syntaxe:**

    La syntaxe de base de la propriété `animation-direction` est la suivante :

    ```css
    animation-direction: normal | reverse | alternate | alternate-reverse;
    ```

    - `normal` : L'animation avance dans le sens normal (du début vers la fin) à chaque itération. C'est la valeur par défaut.
    - `reverse` : L'animation avance dans le sens inverse (de la fin vers le début) à chaque itération.
    - `alternate` : L'animation alterne entre le sens normal et le sens inverse à chaque itération.
    - `alternate-reverse` : L'animation alterne entre le sens inverse et le sens normal à chaque itération.



### 2.4  **``animation-delay:``**

- **Description:**

    >La propriété `animation-delay` en CSS est utilisée pour définir un délai avant le démarrage d'une animation. Elle permet de retarder le début de l'animation après le chargement de la page ou après une autre animation.

- **Syntaxe:**


    ```css
    animation-delay: <durée>;
    ```

    - `<durée>` : La durée du délai avant le démarrage de l'animation, exprimée en secondes (s) ou en millisecondes (ms).






### 2.5 **``animation-fill-mode:``**

- **Description:**

    La propriété `animation-fill-mode` en CSS est utilisée pour définir le comportement d'un élément avant et après l'exécution d'une animation. Elle permet de contrôler comment les styles d'un élément sont appliqués avant le début de l'animation, pendant l'animation et après la fin de l'animation.

- **Syntaxe**

    ```css
    animation-fill-mode: none | forwards | backwards | both;
    ```

    - `none` : Aucun style n'est appliqué avant ou après l'animation. C'est la valeur par défaut.
    - `forwards` : Les styles de la dernière étape de l'animation (généralement `100%` ou `to`) sont appliqués à l'élément après la fin de l'animation.
    - `backwards` : Les styles de la première étape de l'animation (généralement `0%` ou `from`) sont appliqués à l'élément avant le démarrage de l'animation.
    - `both` : Les styles de la première étape sont appliqués avant le démarrage de l'animation, et les styles de la dernière étape sont appliqués après la fin de l'animation.


### 2.6 **`animation-play-state`:**

- **Description:**

    >La propriété `animation-play-state` en CSS est utilisée pour contrôler si une animation est en cours d'exécution ou en pause. Cette propriété permet de mettre en pause et de reprendre une animation dynamiquement à l'aide de JavaScript ou de pseudo-classes CSS comme `:hover`.

- **Syntaxe:**

    ```css
    animation-play-state: running | paused ;
    ```

    - `running` : L'animation est en cours d'exécution (par défaut).
    - `paused` : L'animation est en pause et ne progresse pas.



#### RQ : **``animation-delay < 0:``**

- Lorsque la valeur de `animation-delay` est négative, le navigateur considère que le délai a déjà été écoulé au moment où l'animation est déclenchée. Par conséquent, il commence l'animation à l'endroit où elle serait si elle avait commencé après le délai négatif, c'est-à-dire à l'intermédiaire de l'animation plutôt qu'au début (0%).


### 3. **Le raccourci `animation`:**

- **Description:**

    >Le raccourci `animation` en CSS permet de définir plusieurs propriétés d'animation en une seule déclaration. Cela simplifie la définition des animations en regroupant `animation-name`, `animation-duration`, `animation-timing-function`, `animation-delay`, `animation-iteration-count`, `animation-direction`, et `animation-fill-mode` en une seule ligne de code.

- **Syntaxe:**


    ```css
    animation: <animation-name> <animation-duration> <animation-timing-function> <animation-delay> <animation-iteration-count> <animation-direction> <animation-fill-mode>;
    ```

    - `<animation-name>` : Le nom de l'animation définie par les keyframes.
    - `<animation-duration>` : La durée totale de l'animation, exprimée en secondes (s) ou en millisecondes (ms).
    - `<animation-timing-function>` : La fonction de timing pour contrôler la vitesse de progression de l'animation.
    - `<animation-delay>` : Le délai avant le début de l'animation, exprimé en secondes (s) ou en millisecondes (ms).
    - `<animation-iteration-count>` : Le nombre de fois que l'animation doit être répétée.
    - `<animation-direction>` : La direction de l'animation (`normal`, `reverse`, `alternate`, `alternate-reverse`).
    - `<animation-fill-mode>` : Le comportement de l'élément avant et après l'exécution de l'animation (`none`, `forwards`, `backwards`, `both`).

- **Exemple:**

    ```css
    .rotate-box {
        width: 100px;
        height: 100px;
        background-color: #e74c3c;
        animation: rotate 3s linear 1s infinite reverse both;
    }

    @keyframes rotate {
        from {
            transform: rotate(0deg);
        }
        to {
            transform: rotate(360deg);
        }
    }
    ```

