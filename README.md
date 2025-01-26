# ⌨️ silverlps.github
BisonBackup modules for interacting with the GitHub platform

This module package was written for the BisonBackup software but outside of the project just for my personal needs. For more information about the project and detailed usage instructions, please refer to the [project site](https://github.com/SilverLPs/BisonBackup).

---

## Requirements
This package relies on the following software:
- [GitHub CLI](https://cli.github.com)

Before using the modules in this package, please ensure that the listed software and all its dependencies are installed and available on your system.

---

## Modules
Below is a list of all modules currently included in this package, along with their respective parameters:

**listrepos** - Generates a list of all Git repositories belonging to a specific user or organization. Ensure that your personal access token (PAT) has the necessary permissions to access all the repositories you wish to include in the list.
- SOURCE = The name of the user or organization whose repositories should be listed. Example: "SilverLPs"
- DESTINATION = The path to the text file where the repository list will be saved.
- PAT = The password or personal access token (PAT) used for authentication with GitHub.

---

## License and Disclaimer

This software is licensed under the MIT License. See [LICENSE](LICENSE) for more details.

This module is not affiliated with, endorsed by, or associated with GitHub, GitHub Inc., or its products in any way. "GitHub" and all related trademarks, logos, and intellectual property are the sole property of GitHub Inc.

### Disclaimer of Warranty and Responsibility

BisonBackup is a private project developed in my spare time. It is provided "as is" without any warranty of any kind, either expressed or implied. I cannot offer any guarantees regarding its functionality, security, or suitability for a specific purpose. Anyone using the software does so entirely at their own risk.

### Use at Your Own Risk

Users are encouraged to thoroughly review the scripts and modules before using them. The software, including BisonBackup itself and all associated modules, is intended for technically proficient users who understand the potential risks and can assess whether the software meets their requirements. If you are not confident in your technical ability to understand or review the code, I strongly advise against using this software.

### Recommendations for Technical Users

- Carefully review the provided scripts and configurations before running them.
- Test the software in a safe environment before applying it to critical data or systems. 
- Use the software only if you are comfortable with its functionality and limitations.

This project is not intended for non-technical users, and I explicitly discourage anyone without a strong technical understanding from using this software.
