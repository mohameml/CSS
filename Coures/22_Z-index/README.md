# cour 22 : **``Z-index``**

## 1. **La propriété `z-index`**

- **Description:**

    >La propriété `z-index` en CSS est utilisée pour spécifier la pile d'ordre des éléments positionnés le long de l'axe Z (la profondeur) de la page web. Elle détermine l'ordre d'empilement des éléments lorsqu'ils se chevauchent dans la mise en page. Plus précisément, elle affecte la façon dont les éléments sont empilés les uns par rapport aux autres sur l'axe de la profondeur, où un `z-index` plus élevé signifie que l'élément est au-dessus des éléments avec un `z-index` inférieur.

    
    >Il est important de noter que la propriété `z-index` n'a d'effet que sur les éléments dont la propriété `position` est définie à autre chose que `static` (la valeur par défaut).

- **La syntaxe de base de la propriété `z-index` est la suivante :**

    ```css
    .element {
        z-index: valeur;
    }
    ```

    - **`valeur` :** Un nombre entier, positif ou négatif, qui indique l'ordre d'empilement. Plus la valeur est élevée, plus l'élément sera placé au-dessus des autres éléments.


- **Voici un exemple simple :**

    - **ficher.html**

        ```html
        <!DOCTYPE html>
        <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>

            <style>

                div {

                    color: white;
                    padding: 10px;
                    width: 200px;
                    position: absolute;
                }

                .div1 {
                    background-color: red;
                    z-index: 300;

                }

                .div2 {
                    background-color: blue;
                    left: 25px;
                    top: 20px;
                    z-index: 400;
                }

                .div3 {
                    background-color: gold;
                    left: 30px;
                    top: 25px;
                    z-index: 100;       
                }
            </style>

        </head>
        <body>
            <div class="div1">Div1</div>
            <div class="div2">Div2</div>
            <div class="div3">Div2</div>
        </body>
        </html>

        ```

    - **Affichage:**

        ![alt text](image.png)







### RQ : 

- Il est également possible d'utiliser des valeurs spécifiques, telles que `auto` (la valeur par défaut), `inherit`, ou `initial`, en fonction des besoins spécifiques de votre mise en page.

    ```css
    .element {
        z-index: auto; /* La valeur par défaut, l'élément suit l'ordre du flux du document */
    }
    ```



## 2. **Utilisation En pratique::**


>L'utilisation pratique de `z-index` se manifeste souvent lors de la création d'éléments superposés sur une page web, tels qu'un petit menu qui doit s'afficher au-dessus du contenu principal. On peut ajuster le `z-index` pour contrôler l'ordre d'empilement des éléments et assurer que le menu apparaît au premier plan.

- **Exemple:**


Prenons un exemple où nous avons un menu déroulant qui doit apparaître au-dessus du contenu, assombrissant légèrement le contenu pendant son affichage. Voici comment cela pourrait être mis en œuvre en utilisant `z-index` et `opacity` :

```html
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>
    /* Contenu de la page */
    .contenu {
      position: relative;
      z-index: 1; /* Valeur de z-index par défaut */
        opacity: 0.5; /* Opacité pour assombrir légèrement le contenu */
    }

    h1 {
        margin : 10px
    }

    /* Menu déroulant */
    .menu {
      position: absolute;
      top: 50px;
      left: 50px;
      z-index: 2; /* Une valeur plus élevée pour le menu, afin qu'il apparaisse au-dessus du contenu */
      background-color: white;
      padding: 15px;
      border: 1px solid #ccc;
    }
  </style>
</head>
<body>

  <div class="contenu">
    <!-- Contenu principal de la page -->
    <h1>Contenu Principal</h1>
    <p>Texte, images, etc.</p>
  </div>

  <div class="menu">
    <!-- Menu déroulant -->
    <h2>Menu</h2>
    <ul>
      <li>Option 1</li>
      <li>Option 2</li>
      <li>Option 3</li>
    </ul>
  </div>

</body>
</html>
```

Dans cet exemple, le contenu principal a un `z-index` par défaut de 1, et le menu déroulant a un `z-index` de 2. Cela garantit que le menu apparaîtra au-dessus du contenu. De plus, l'opacité est utilisée  pour assombrir légèrement le contenu en dessous.

Cela offre une expérience utilisateur où le menu est clairement visible et se détache du reste de la page. L'utilisation réfléchie de `z-index` contribue à contrôler l'ordre d'empilement des éléments et à créer des mises en page web plus visuellement cohérentes.