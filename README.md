# Tinderbox BBEdit Codeless Language Module

A [BBEdit Codeless Language Module](https://www.barebones.com/support/develop/clm.html) (CLM) that provides syntax highlighting for [Tinderbox](http://www.eastgate.com/Tinderbox/) action code.

## Features

- **Syntax highlighting** for Tinderbox action code in `.tbxc` files
- **400+ system attributes** (`$Name`, `$Color`, `$Rule`, etc.)
- **220+ operators** (`collect`, `find`, `linkedTo`, `replace`, etc.)
- **30 designators** — item (`this`, `parent`, `child`), group (`children`, `descendants`, `all`), and link (`source`, `destination`)
- **Control flow keywords** (`if`, `else`, `true`, `false`)
- **Comment highlighting** for Tinderbox's `//comment//` syntax
- **String highlighting** for double-quoted, single-quoted, and date literals (`yesterday`, `today`, `now`, `tomorrow`)
- **Function folding** for brace-delimited `{ }` blocks
- **Keyword pattern** for unlisted user attributes (`$MyCustomField`)

## Installation

```sh
curl -fsSL https://raw.githubusercontent.com/jacobio/tbx-bbedit/main/install.sh | sh
```

Or clone the repo and run `./install.sh` — this creates a symlink so updates via `git pull` are picked up automatically.

Relaunch BBEdit to activate.

## Color Groups

The CLM defines five keyword groups, each mapped to a different BBEdit color run:

| Group | RunKind | Contents |
|-------|---------|----------|
| Control flow | `file-include` | `if`, `else`, `true`, `false`, `var`, `return`, `empty`, `failed` |
| Types | `preprocessor` | `boolean`, `color`, `date`, `dictionary`, `interval`, `list`, `number`, `set`, `string` |
| System attributes | `keyword` | `$Name`, `$Color`, `$Rule`, ... |
| Operators | `predefined-symbol` | `collect`, `find`, `replace`, ... |
| Designators | `variable` | `this`, `parent`, `children`, ... |

Colors for each group can be customized in **BBEdit > Settings > Text Colors**.

## File Association

The module activates for files matching `*.tbxc`. To use it with other file extensions, add them to the `BBLMFileNamesToMatch` array in the plist, or set the language manually in BBEdit via the status bar language popup.

## Reference Lookup

Selecting a keyword and using **Search > Find in Reference** (or its keyboard shortcut) searches [A Tinderbox Reference File](https://atbref.com/atbref11/) via DuckDuckGo.

## Prism.js (Web Syntax Highlighting)

A [Prism.js](https://prismjs.com/) language definition is included for syntax-highlighting Tinderbox action code on the web (blogs, documentation, etc.).

Add the script after the Prism core. You can use the [jsdelivr CDN](https://www.jsdelivr.com/package/npm/prismjs) for Prism itself:

```html
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/prismjs/themes/prism.min.css">
<script src="https://cdn.jsdelivr.net/npm/prismjs/prism.min.js"></script>
<script src="prism-tinderbox.js"></script>
```

Then use the `language-tinderbox` class on your code blocks:

```html
<pre><code class="language-tinderbox">
if($Prototype == "Task") {
   $Color = "red";
}
</code></pre>
```

## Credits

Originally created by [Pete](https://forum.eastgate.com/t/a-bbedit-codeless-language-module-for-tinderbox-action-code/5199) and shared on the Tinderbox Forum.
