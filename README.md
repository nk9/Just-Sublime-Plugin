# This Package is Just Sublime

This package contains a few different tools to help you make the most of the [just task runner](https://just.systems).

## Syntax Highlighting

The Sublime syntax has been completely rewritten to be more expressive and support the latest just features. Conditional chaining, interpolation, recipe dependencies, nested groups — the syntax now supports it all!

![settings_variables](assets/settings_variables.png)

![interpolation](/Users/nick/Projects/OSS/Just/assets/interpolation.png)

Get instant feedback as you type when you’ve made a syntax error.

<video src="/Users/nick/Projects/OSS/Just/assets/errors.webm" autoplay loop></video>



## Comments

Use the Sublime comment shortcut (<kbd>Cmd</kbd>+<kbd>/</kbd> to easily comment and uncomment lines.

<video src="/Users/nick/Projects/OSS/Just/assets/comments.webm" autoplay loop></video>



## Check Your Just Code

Just contains a built-in formatter, which also checks your file for correctness. When you install this package, a `Check Justfile` Build System will appear in `Tools > Build System`. It will be available to the Automatic Build System when editing a justfile. You can run it with <kbd>Cmd</kbd>+<kbd>B</kbd> (macOS), and you'll see any changes and errors in the console. You can also find the Build System in the Goto Anything menu (<kbd>Cmd</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd>).

<video src="/Users/nick/Projects/OSS/Just/assets/build_system.webm" autoplay loop></video>

## Contributing

Learn how to edit the syntax in [CONTRIBUTING.md](CONTRIBUTING.md).

