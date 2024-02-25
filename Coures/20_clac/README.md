# cour 20 : **La fonction `calc()`**

- **Description:**

    >La fonction `calc()` en CSS est utilisée pour effectuer des calculs dans les valeurs des propriétés CSS. Elle permet d'effectuer des opérations mathématiques simples pour définir dynamiquement des valeurs de propriétés. 
    
    >La fonction `calc()` peut être utilisée avec plusieurs unités telles que `px`, `%`, `em`, `rem`, etc., et vous pouvez effectuer des opérations d'addition, de soustraction, de multiplication et de division à l'intérieur de la fonction.

    >La fonction `calc()` est utile pour rendre les styles plus flexibles et dynamiques en permettant l'utilisation de valeurs calculées basées sur d'autres propriétés ou unités.


- **La syntaxe générale de `calc()` est la suivante :**

    ```css
        width: calc(expression);
    ```


- **Exemple1: Avce margin=x%**

    - **fichier.html:**

        ```html
        <div>Product One</div>
        <div>Product Two</div>
        <div>Product Three</div>
        <div>Product Four</div>

        ```


    - **ficher.css**

        ```css
        body {
            margin: 0;
        }


        div {
            padding-top: 10px;
            padding-bottom: 10px;
            background-color: #eee;
            text-align: center;
            float: left;
            width: calc(95% / 4); 
            <!--  f.g : calc((100% - (nb.elments + 1)*x%)/nb.elments) -->
            margin-left: 1%;
        }


        /**

            5 espace , espace = 1% => 5%  => place restant = 95%

            4 elments => 95%4 


        **/

        ```


    - **Affichage:**

        ![alt text](image.png)


- **Exemple1: Avce margin= y px**

    - **fichier.html:**

        ```html
        <div>Product One</div>
        <div>Product Two</div>
        <div>Product Three</div>
        <div>Product Four</div>

        ```


    - **ficher.css**

        ```css
        body {
            margin: 0;
        }


        div {
            padding-top: 10px;
            padding-bottom: 10px;
            background-color: #eee;
            text-align: center;
            float: left;
            width: calc((100% - 50px)/4);
            <!--  f.g : calc((100% - (nb.elments + 1)*x px)/nb.elments) -->
            margin-left: 10px;
        }


        /**

            margin : 10px 
            5 espace => place restant = 100% - 5x10px
            4 elments => (100% - 50px)/4

        **/

        ```