# [WIP] ctf-dev-container
All the CTF tooling you will need inside a [GitHub Dev Container](https://docs.github.com/en/codespaces/setting-up-your-project-for-codespaces/adding-a-dev-container-configuration/introduction-to-dev-containers)!

One of the most fustrating things for beginners with CTFs & cybersecurity is getting all the tools installed and configured correctly. This project aims to solve that problem by providing a containerized environment with all the tools you will need to get started and can even be run **from your browser on GitHub**! This project is also great for those who want to keep their host machine clean and not install a bunch of tools on it.

This project takes advantages of [GitHub Codespaces](https://github.com/features/codespaces) to allow users to run the container from their browser for free! For this reason, it uses the [free tier](https://docs.github.com/en/billing/managing-billing-for-github-codespaces/about-billing-for-github-codespaces) of Codespaces which has some usage limitations. If you want to use this project locally, you can do so by installing [Docker](https://docs.docker.com/get-docker/) and [VS Code](https://code.visualstudio.com/download) and following the instructions below.

## Getting Started
In order to use this project, you will need to have a [GitHub account](https://github.com/).

1. Visit this repository on GitHub.
2. Open the GitHub Codespace by typing `.` or visiting [https://github.dev/pbrucla/ctf-dev-container](https://github.dev/pbrucla/ctf-dev-container). This should open a GitHub Codespace in your browser.
3. Once inside the codespace, open a terminal by typing `ctrl + \``.
4. The terminal should prompt you to "Continue Working in GitHub Codespaces". Select this option.
5. It will them prompt you for the instance type for your codespace. Select `2 cores, 8 GB RAM, 32 GB storage` and this will start up a new GitHub Codespace. You are now ready to start using the container!

## Tools
Currently, the container comes with the following list of tools. If you would like to see a tool added, please open an issue or submit a pull request! You can also add your own tools by running.

```bash
sudo apt update && sudo apt install -y <tool-name>
```
