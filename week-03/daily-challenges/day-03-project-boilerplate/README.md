# Day 3: Project Boilerplate Script

Write and run a script that creates a small starter website.

## Challenge

From PowerShell, run:

```powershell
.\new-project.ps1
```

From Git Bash or another Bash shell, run:

```bash
bash ./new-project.sh
```

The script creates a `starter-project` folder containing:

```text
starter-project/
├── assets/
│   ├── css/
│   │   └── styles.css
│   └── js/
│       └── script.js
└── index.html
```

Choose another destination by passing a path:

```powershell
.\new-project.ps1 -ProjectPath .\my-portfolio
```

```bash
bash ./new-project.sh ./my-portfolio
```

Both scripts stop with an error if the destination already exists, so they won't overwrite an existing project. Open `index.html` in a browser and customize the starter page.
