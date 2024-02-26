# cour 26 : **``Le vendor prefix :``**

>Le vendor prefix (ou préfixe de vendeur) en CSS est une pratique consistant à ajouter un préfixe spécifique au nom des propriétés CSS pour indiquer le fournisseur du navigateur qui implémente une fonctionnalité expérimentale ou non standard. Cela est souvent utilisé pendant la période où une fonctionnalité est en cours de développement et n'a pas encore été standardisée.



- **Chaque fournisseur de navigateur a son propre préfixe, :**

    - `-webkit-` : Utilisé par le moteur de rendu WebKit (utilisé notamment par Safari et anciennes versions de Chrome).
    - `-moz-` : Utilisé par le moteur de rendu Gecko (utilisé par Firefox).
    - `-ms-` : Utilisé par Internet Explorer et Microsoft Edge (versions antérieures à EdgeHTML).
    - `-o-` : Utilisé par le moteur de rendu Presto (anciennement utilisé par Opera).

- **Par exemple :**

    si vous avez une propriété expérimentale appelée `example-property`, vous pourriez l'écrire de cette manière pour différents navigateurs :

    ```css
    .example-property {
        -webkit-example-property: value; /* Pour WebKit/Blink (Safari, Chrome) */
        -moz-example-property: value;    /* Pour Gecko (Firefox) */
        -ms-example-property: value;     /* Pour Internet Explorer et Edge (anciennes versions) */
        -o-example-property: value;      /* Pour Opera (anciennes versions) */
        example-property: value;         /* Propriété standard, utilisée lorsque la fonctionnalité est standardisée */
    }
    ```

### RQ :

- Il est important de noter que l'utilisation des préfixes de vendeurs est en déclin, car de nombreuses fonctionnalités expérimentales sont désormais standardisées. Cependant, dans certains cas, vous pourriez encore en avoir besoin pour assurer une compatibilité avec d'anciennes versions de navigateurs. Dans l'idéal, il est recommandé de vérifier la compatibilité actuelle des fonctionnalités et de limiter l'utilisation des préfixes de vendeurs autant que possible.


- Le site "Can I use" est une ressource en ligne très utile pour les développeurs web. Il fournit des informations sur la prise en charge des fonctionnalités CSS, HTML, JavaScript, et d'autres technologies web par différents navigateurs. Vous pouvez consulter le site à l'adresse suivante : [canIUse](https://caniuse.com/?search=border)