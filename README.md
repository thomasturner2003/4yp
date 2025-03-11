# report_template_oxford

Use Xelatex to compile.
Go to Menu on Overleaf and change the field `compiler`.

## Modifications for group usage

- Scroll all the way down in `report_template_oxford.cls` to find a place to insert your own acronyms and packages.
- Compile {name}/{name}.tex to only see your section.
- Use \include{{section}.tex} to add new tex documents.
- When you add new sections, make sure to add \fancyhead[C]{Name} above it.
- When you add new sections, try to add \label{section} so that others can reference your section. 