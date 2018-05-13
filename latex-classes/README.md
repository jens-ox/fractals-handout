# LaTeX-Classes

- `summary.cls`: Two-column, small-text summary. See [AlgoII](https://github.com/Jintzo/AlgoII) for a real-world example.
- `prose.cls`: Modified copy of [Michael Ummels](https://github.com/ummels)' excellent [mydiss](https://gist.github.com/ummels/3428745) class. See [Elementare Geometrie](https://github.com/Jintzo/elementare-geometrie) for a real-world example.

## Usage
I have the class files under `~/code/[this-repo]` and set up symlinks to `~/texmf/tex/latex/classes/jens/[class].cls`, in order to avoid copying them around all the time, like this:

```bash
ln -s /home/jens/code/[this-repo]/summary.cls /home/jens/texmf/tex/latex/classes/jens/summary.cls
```

Seems like `pdflatex` has no problem finding them there.