# cour 24 : **Table-style:**


## 1. **`border-collapse`:**

- **Description:**

    >La propriété CSS `border-collapse` est utilisée pour spécifier comment les bordures des cellules d'un tableau doivent être gérées. 
    

- **Elle a deux valeurs possibles :**

    1. **`separate` :** C'est la valeur par défaut. Chaque cellule a ses propres bordures distinctes, et elles peuvent se chevaucher.

    ```css
    table {
        border-collapse: separate;
    }
    ```

    2. **`collapse` :** Les bordures des cellules sont fusionnées, créant une seule bordure entre les cellules. Cela évite le chevauchement des bordures.

    ```css
    table {
        border-collapse: collapse;
    }
   ```

## 2. **`border-spacing`:**

- **Description:**

    >La propriété CSS `border-spacing` est utilisée pour spécifier l'espacement entre les cellules d'un tableau lorsque la propriété `border-collapse` est définie sur la valeur `separate`. 
    
    >la valeur `border-spacing` permet de définir à la fois l'espacement horizontal (`border-spacing: <horizontal>`) et vertical (`border-spacing: <horizontal> <vertical>`). 


- **Voici un exemple :**

    ```css
    table {
        border-collapse: separate; /* Assurez-vous que la propriété border-collapse est définie sur separate */
        border-spacing: 10px; /* Espacement horizontal et vertical de 10 pixels entre les cellules */
    }
    ```

    Dans cet exemple, la propriété `border-collapse` est définie sur `separate` pour indiquer que les bordures des cellules ne doivent pas se chevaucher. Ensuite, `border-spacing` est utilisée pour spécifier l'espacement entre les cellules, à la fois horizontalement et verticalement, avec une valeur de 10 pixels.


### Exercice : 

[mise_en_forme_tab](https://juliencrego.com/exercices/mise-en-forme-dun-tableau-en-css-css10/)