# siman
Simple It MANagement tool

It was influenced by the Chef.
In reference to the migration function of ActiveRecord, to perform a server configuration management.

## Installation
1. Clone siman

  ```sh
  $ git clone https://github.com/mmts1007/siman.git ~/.siman
  ```

2. Add siman to your PATH

  ```sh
  $ echo 'export PATH="$HOME/.siman/bin:$PATH"' >> ~/.bash_profile
  ```

3. Reflect the change of PATH

  ```sh
  $ source ~/.bash_profile
  ```

## Usage
Reflect the contents written on the menu to the server

```sh
$ siman /path/to/menu
```

## Menu format
Formatted as an overview of the menu below

```
Number  Content  Location of recipes
Number  Content  Location of recipes
Number  Content  Location of recipes
...
```

- Separate each item with a space
- The number of spaces is more than one
- Space can not be included in the "Content"

Example

```
001  echo_hello_world  https://git.io/vEAWK
```
