# [WIP] ctf-dev-container
[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/pbrucla/ctf-dev-container?quickstart=1)

All the CTF tooling you will need inside a [GitHub Dev Container](https://docs.github.com/en/codespaces/setting-up-your-project-for-codespaces/adding-a-dev-container-configuration/introduction-to-dev-containers)!

One of the most fustrating things for beginners with CTFs & cybersecurity is getting all the tools installed and configured correctly. This project aims to solve that problem by providing a containerized environment with all the tools you will need to get started and can even be run **from your browser on GitHub**! This project is also great for those who want to keep their host machine clean and not install a bunch of tools on it.

This project takes advantages of [GitHub Codespaces](https://github.com/features/codespaces) to allow users to run the container from their browser for free! For this reason, it uses the [free tier](https://docs.github.com/en/billing/managing-billing-for-github-codespaces/about-billing-for-github-codespaces) of Codespaces which has some usage limitations.

- Verifying as a student and receiving GitHub Pro will increase the free tier for you by around 50%. Visit [https://education.github.com/pack/join](https://education.github.com/pack/join) and follow the instructions. UCLA students should use their `@ucla.edu` email and verify using either a copy of their unofficial transcript or [proof of enrollment](https://registrar.ucla.edu/student-records/proof-of-enrollment) letter.
<!--- If you want to use this project locally, you can do so by installing [Docker](https://docs.docker.com/get-docker/) and [VS Code](https://code.visualstudio.com/download) and following the instructions below. -->

## Getting Started
In order to use this project, you will need to have a [GitHub account](https://github.com/).

Simply click here to get started or view a previously created Codespace: [![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/pbrucla/ctf-dev-container?quickstart=1)
- To open the Command Palette, click the gear icon in the bottom left corner and select "Command Palette". You can also use the keyboard shortcut listed here to open up the Command Palette directly.
- To stop a Codespace, open the Command Palette, and search for `Codespaces: Stop Current Codespace`. Your Codespace will automatically stop after a period of inactivity as defined in your github user settings, but you should stop once you are done as you are only given a limited amount of usage per month.
- To delete a Codespace, open the Command Palette, and search for `Codespaces: Delete Codespace...`. This will irreversably delete the Codespace!
- To update your Codespace to the latest version, open the Command Palette, and search for `Codespaces: Full Rebuild Container`. Files in the `/workspaces` folder will be saved; all other changes to your container such as installing additional tools will be removed.
- To view your Codespaces, visit [https://github.com/codespaces](https://github.com/codespaces)

<!-- 
## Tools
Currently, the container comes with the following list of tools. If you would like to see a tool added, please open an issue or submit a pull request! You can also add your own tools by running.

```bash
sudo apt update && sudo apt install -y <tool-name>
```
-->
