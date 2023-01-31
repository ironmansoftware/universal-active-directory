![](./ims-logo.png)

# PowerShell Universal Template

This repository is used for creating PowerShell Universal Templates. You can create a new repository based on this one to publish your own templates.

## Creating a Template

First, create a new repository based on this template. Clone the repository locally and add your files to it. Add your files from `C:\ProgramData\UniversalAutomation\Repository` to the repository. Update the manifest and with the name, description and version of your template. Push the changes to GitHub. Once you're satisfied with the template, you can publish to our website.

## Publishing a Template

Login to [Ironman Software](https://ironmansoftware.com/account) and generate a template token. In GitHub, navigate to Settings \ Secrets and Variables and click Actions. Create a new secret named `TOKEN` with the value of your token. Run the Publish GitHub action.