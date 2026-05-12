# Guide de Transcription et Traduction : "Le Tasbih dans le Coran et la Sunna"

Ce document sert de guide pour l'IA (Gemini/Jules) afin de finaliser la transcription et la traduction du livre arabe : **"التسبيح في الكتاب والسنة والرد على المفاهيم الخاطئة فيه"**.

## État Actuel du Projet
- Le PDF original a été découpé en **25 morceaux** (chunks) de ~50 pages chacun dans le dossier `./chunks/`.
- Les pages sont principalement des images de texte arabe (nécessite de l'OCR/Vision).
- Une structure de dossiers est prête : `markdown_ar/`, `markdown_fr/`, `images_temp/`.

## Protocole de Travail (À suivre par l'IA)

### Étape 1 : Extraction du Texte (Transcription)
Pour chaque chunk (ex: `chunk_001.pdf`) :
1. Convertir les pages en images PNG haute résolution (300 DPI recommandé).
2. Utiliser vos capacités de vision pour transcrire fidèlement le texte arabe en Markdown.
3. Sauvegarder le résultat dans `markdown_ar/chunk_XXX_ar.md`.
   - Utiliser des balises `# Page X` pour séparer les pages.
   - Respecter la mise en forme (titres, citations, notes de bas de page).

### Étape 2 : Traduction en Français
Pour chaque fichier `markdown_ar/chunk_XXX_ar.md` :
1. Traduire le texte en français en conservant le sens théologique précis.
2. Garder les termes techniques importants entre parenthèses ou en translittération si nécessaire.
3. Sauvegarder dans `markdown_fr/chunk_XXX_fr.md`.
4. **Validation :** S'assurer que les références coraniques et les Hadiths sont traduits avec soin.

### Étape 3 : Compilation Finale
1. Fusionner tous les fichiers de `markdown_fr/` dans l'ordre numérique (`001` à `025`).
2. Créer un document unique `TASBIH_COMPLET_FR.md`.
3. (Optionnel) Convertir ce Markdown vers le format final demandé par l'utilisateur (Word .docx, PDF, etc.).

## Directives Spécifiques
- **Langue source :** Arabe classique / Théologique.
- **Langue cible :** Français académique et spirituel.
- **Style :** Formel, respectueux des sources scripturaires.
- **Vérification :** Ne pas inventer de texte. Si une page est illisible, le noter clairement.

---
*Ce prompt a été généré par Gemini CLI pour assurer la continuité du travail.*
