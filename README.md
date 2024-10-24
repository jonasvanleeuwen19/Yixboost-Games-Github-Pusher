![Github Pusher](https://github.com/user-attachments/assets/ba6b6099-a79e-40c1-8997-51a5580e2131)

# Yixboost Games GitHub Gamepusher

<img src='https://github.com/user-attachments/assets/e74a16bf-8750-4215-b569-b55967947e21' align='right' width='10%'>

![License](https://img.shields.io/badge/license-GNU%20General%20Public%20License%20v3-blue.svg) ![Windows](https://img.shields.io/badge/platform-Windows-0078D7.svg) ![Batch](https://img.shields.io/badge/code-.bat-orange.svg)

⚡ **Yixboost Games GitHub Gamepusher** is a script designed to create a new GitHub repository and link it to a local folder. This tool simplifies the process of setting up a repository for your game projects, allowing you to focus more on development and less on configuration.

## Features

- Create a new GitHub repository with a single command.
- Link your local folder to the new repository.
- Initialize a local Git repository if it doesn't exist.
- Automatically push your files to GitHub.

## Usage

Run the script using the following command format:

```
yx [repository_name] [folder_path]
```

### Parameters

- **repository_name**: The name of the repository you want to create on GitHub.
- **folder_path**: The local path to the folder you want to link to the repository.

### Options

- `--help`: Display the usage information.
- `--version`: Display the version of GitHub CLI and Git installed on your system.
- `--rick`: Display an ASCII art version of Rick.

## Examples

1. **Creating a new repository:**

   ```bash
   yx my-awesome-game "C:\path\to\your\game\folder"
   ```

   This command creates a new repository named `my-awesome-game` and links it to the specified local folder.

2. **Get help information:**

   ```bash
   yx --help
   ```

3. **Check the versions:**

   ```bash
   yx --version
   ```

## Error Handling

- If you run the script without providing a repository name, it will display an error message:
  ```
  ❌ Error: 😺 No GitHub repository name provided.
  ```

- If you run the script without a folder path, it will display an error message:
  ```
  ❌ Error: 📂 No folder path provided.
  ```

- The script also checks if the specified folder exists and will prompt you if it does not.

## Requirements

- [Git](https://git-scm.com/) must be installed.
- [GitHub CLI](https://cli.github.com/) must be installed and authenticated with your GitHub account.

## License

This project is licensed under the [GNU License](LICENSE).
