# Just-Sublime-Plugin
Syntax highlighting for the [Just task runner](https://just.systems).

## Contributing
This is an open source plugin, and your PRs are welcome!

### Installing the package
To try this on your own macOS or Linux system, make sure you have [Sublime installed](https://www.sublimetext.com/download). Then [fork this repo](https://github.com/nk9/Just-Sublime-Plugin/fork), download your fork, and symlink it into place:

```bash
~ $ git clone https://github.com/<YOUR-GITHUB-HANDLE>/Just-Sublime-Plugin.git
~ $ cd Just-Sublime-Plugin
Just-Sublime-Plugin $ ln -s $PWD ~/Library/Application\ Support/Sublime\ Text/Packages/Just-Sublime-Plugin
```

Now the package is installed. You don't have to relaunch Sublime, although you will need to re-open any .just files that are already open.

### Running tests
Sublime contains a [built-in syntax testing system](https://www.sublimetext.com/docs/syntax.html#testing). In fact, it will run whenever code is pushed to GitHub. But before you push any changes, you will want to make sure the tests are running correctly on your local system. To do that, make sure the plugin (with the syntax definiton) is installed as above. Then open one of the `syntax_test_` files in the `tests` directory. Open the Command Palette (<kbd>Cmd</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd>) and run the `Build With: Syntax Tests` command.

![Using the Sublime Command Palette to run syntax tests](/Users/nick/Projects/just/Just-Sublime-Plugin/assets/build_with_syntax_tests.png)

This will open the console and show you the result of the tests.

![Results of the syntax tests appear in the Sublime console](/Users/nick/Projects/just/Just-Sublime-Plugin/assets/syntax_test_results.png)

In this case, the test on line 67 is failing both at column 1, and also in columns 25, 26, 28, and 29.
