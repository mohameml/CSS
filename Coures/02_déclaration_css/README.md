# cour 02 : **Déclaration des régles:**

Il existe trois principales méthodes pour appliquer des styles CSS à un document HTML : 

1. **Styles intégrés (Inline Styles) :**
   - **Description :** Les styles intégrés sont définis directement dans les balises HTML à l'aide de l'attribut `style`. Ces styles s'appliquent uniquement à l'élément spécifique où ils sont déclarés.
   - **Fonctionnement :** Les propriétés CSS sont déclarées à l'intérieur de l'attribut `style` de la balise HTML, en utilisant la syntaxe `propriété: valeur`.
   - **Exemple :**
     ```html
     <p style="color: blue; font-size: 16px;">Ce paragraphe a des styles intégrés.</p>
     ```

2. **Styles internes (Internal Styles) :**
   - **Description :** Les styles internes sont définis dans la section `<style>` de l'en-tête `<head>` du document HTML. Ils s'appliquent à l'ensemble du document.
   - **Fonctionnement :** Les propriétés CSS sont déclarées à l'intérieur de la balise `<style>` en utilisant la même syntaxe que dans une feuille de style externe.
   - **Exemple :**
     ```html
     <!DOCTYPE html>
     <html lang="en">
     <head>
       <meta charset="UTF-8">
       <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <title>Styles Internes</title>
       <style>
         body {
           font-family: Arial, sans-serif;
         }
         h1 {
           color: green;
         }
       </style>
     </head>
     <body>
       <h1>Ceci est un titre avec des styles internes.</h1>
     </body>
     </html>
     ```

3. **Styles externes (External Styles) :**
   - **Description :** Les styles externes sont définis dans un fichier CSS séparé. Ce fichier peut être lié à plusieurs documents HTML. Les styles externes offrent une approche plus modulaire et réutilisable.
   - **Fonctionnement :** Les propriétés CSS sont déclarées dans un fichier CSS externe, et ce fichier est lié au document HTML à l'aide de la balise `<link>` dans la section `<head>`.
   - **Exemple :**
     - Contenu du fichier "styles.css" :
       ```css
       body {
         background-color: #f0f0f0;
       }
       p {
         color: navy;
       }
       ```
     - Lien dans le fichier HTML :
       ```html
       <!DOCTYPE html>
       <html lang="en">
       <head>
         <meta charset="UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <title>Styles Externes</title>
         <link rel="stylesheet" href="styles.css">
       </head>
       <body>
         <p>Ce paragraphe a des styles externes.</p>
       </body>
       </html>
       ```
Ces trois méthodes offrent différentes approches pour appliquer des styles CSS en fonction des besoins spécifiques de votre projet. L'utilisation de styles externes est souvent recommandée pour une gestion plus efficace et une séparation claire des préoccupations.