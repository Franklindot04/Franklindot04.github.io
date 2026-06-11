# Contributing

Thank you for your interest in contributing to this portfolio repository.

This repository contains the source code for my personal GitHub Pages portfolio website:

- Static portfolio website
- Deployment helper script
- Small Python helper file
- Small Java helper file
- Repository governance files

## Project Scope

The purpose of this repository is to present my personal engineering portfolio, including:

- DevOps and SRE projects
- Platform engineering work
- Cloud infrastructure experience
- CI/CD and automation examples
- Observability and reliability engineering projects

This repository is not intended to contain private company code, client work, production secrets, or confidential implementation details.

## Repository Structure

The expected repository structure is:

    .
    ├── index.html
    ├── deploy.sh
    ├── main.py
    ├── App.java
    ├── README.md
    ├── CONTRIBUTING.md
    ├── CODE_OF_CONDUCT.md
    ├── LICENSE
    └── NOTICE

## Contribution Guidelines

Before opening a pull request, please make sure your change is:

- Relevant to the portfolio website or supporting files
- Clear, focused, and easy to review
- Free from secrets, credentials, tokens, or private keys
- Free from confidential company, client, or user data
- Consistent with the existing structure and style
- Tested locally where applicable

## Local Development

Because this is a GitHub Pages project, the main website is served from `index.html`.

To preview the website locally, open `index.html` in a browser.

You can also use a simple local HTTP server:

    python3 -m http.server 8000

Then open:

    http://localhost:8000

## Local Checks

Check the Python helper file:

    python3 -m py_compile main.py
    python3 main.py

Check the Java helper file:

    javac App.java
    java App

Run the deployment helper:

    chmod +x deploy.sh
    ./deploy.sh

## Pull Request Expectations

Pull requests should include:

- A clear title
- A short description of what changed
- Screenshots for visual website updates, where useful
- Notes about any checks or tests performed

Good pull request examples:

- Update project card wording
- Fix broken repository link
- Improve mobile responsiveness
- Add missing accessibility label
- Update portfolio metadata

Poor pull request examples:

- Large unrelated rewrites
- Adding private company information
- Adding secrets or credentials
- Changing the site purpose without discussion

## Commit Message Style

Use short and clear commit messages.

Examples:

    Add personal portfolio homepage
    Update featured projects section
    Fix mobile layout spacing
    Add repository governance files
    Improve deployment helper script

## Security Guidelines

Do not commit or submit:

- API keys
- Passwords
- Private SSH keys
- Access tokens
- `.env` files
- Internal company code
- Confidential architecture documents
- Customer or user data

If you believe you found a security issue, do not open a public issue. Contact the repository owner privately.

## Deployment

This repository is intended to be deployed with GitHub Pages.

For a personal GitHub Pages site, the repository should be named:

    Franklindot04.github.io

or:

    franklindot04.github.io

The site will be available at:

    https://franklindot04.github.io

## License

This repository is intended to use the Apache License 2.0.

The repository owner will add the official `LICENSE` and `NOTICE` files.