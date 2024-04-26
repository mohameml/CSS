# cour :



### 1. `inherit`

- **Description:**

    >Le mot-clé `inherit` force un élément à hériter la valeur de la propriété de son parent.

- **Exemple :**

    ```css
    .child {
        font-size: inherit;
    }
    ```

    Dans cet exemple, l'élément avec la classe `.child` aura la même taille de police que son élément parent.

### 2. **`initial`**

- **Description:**

    >Le mot-clé `initial` réinitialise une propriété à sa valeur initiale. C'est-à-dire, elle rétablit la valeur de la propriété à celle qu'elle aurait par défaut.

- **Exemple :**

    ```css
    .child {
        font-size: initial;
    }
    ```

### 3. **`unset`**

- **Description:**

    >Le mot-clé `unset` réinitialise une propriété à sa valeur héritée si elle est héritable ou à sa valeur initiale si elle n'est pas héritable.
 
- **Exemple :**

    ```css
    .child {
        font-size: unset;
    }
    ```

### 4. `revert`

- **Description:**

    >Le mot-clé `revert` réinitialise une propriété à la valeur de ``user-agent``.

- **Exemple :**

    ```css
    .child {
        font-size: revert;
    }
    ```

