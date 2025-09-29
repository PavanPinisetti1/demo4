-- 1. Initializing git repo
host git init --initial-branch=main

host git add .

-- 2. Committing changes
ACCEPT INITIAL_COMMIT CHAR PROMPT 'Enter Initial Commit Message: '
host git commit -m &INITIAL_COMMIT&

-- 3. Adding remote repository
ACCEPT REMOTE_URL CHAR PROMPT 'Enter Git remote URL: '
host git remote add origin &REMOTE_URL

-- 4. Create base-release branch
host git checkout -b base-release

-- 6. Commit base release into Git
host git add .
host git commit -m "Base release"

-- 7. Push branches to remote
host git push -u origin main
host git push -u origin base-release