# 🛠 Contributing Guidelines

Welcome! We're excited to have you contribute to **MilliPayMApp**. This project uses a **forked repository model** along with a set of **automation scripts** to make contributing smoother and cleaner. Follow these guidelines to contribute efficiently.

## 📋 Table of Contents

1. [🔗 Fork the Repository](#fork-the-repository)
2. [💻 Clone Your Fork](#clone-your-fork)
3. [🌲 Branching Strategy](#branching-strategy)
4. [✨ Creating a Feature Branch](#creating-a-feature-branch)
5. [📝 Tracking Work Progress](#tracking-work-progress)
6. [🧱 Making Changes (Script)](#making-changes-script)
7. [⛓️ Merge Feature Branch into Develop (Script)](#merge-feature-branch-into-develop-script)
8. [📌 Rebase Feature Branch (Script)](#rebase-feature-branch-script)
9. [🚀 Merge Develop into Main (Script)](#merge-develop-into-main-script)
10. [🔄 Keeping Your Fork in Sync](#keeping-your-fork-in-sync)
11. [🧹 Cleaning Up](#cleaning-up)
12. [🧑‍💻 Need Help?](#need-help)

## Fork the Repository

* Go to the main repository: INNOVITEGRADEV/MilliPayMApp
* Click the **Fork** button (top-right)

## Clone Your Fork

```bash
git clone https://github.com/{YOUR-USERNAME}/MilliPayMApp.git
cd MilliPayMApp
```

Add the upstream repository:

```bash
git remote add upstream https://github.com/INNOVITEGRADEV/MilliPayMApp.git
```

Verify the remotes:

```bash
git remote -v
```

Expected output:

```bash
origin https://github.com/{YOUR-USERNAME}/MilliPayMApp.git (fetch)
origin https://github.com/{YOUR-USERNAME}/MilliPayMApp.git (push)
upstream https://github.com/INNOVITEGRADEV/MilliPayMApp.git (fetch)
upstream https://github.com/INNOVITEGRADEV/MilliPayMApp.git (push)
```

## Branching Strategy

| Branch | Purpose |
|--------|---------|
| `main` | Stable, production-ready code |
| `develop` | Latest development updates |

✅ **Never commit directly** to `main` or `develop`. Always use a **feature branch**.

## Creating a Feature Branch

Sync your `develop` branch first:

```bash
git checkout develop
git pull upstream develop
git push origin develop
```

Create your feature branch:

```bash
git checkout -b feature/your-feature-name
```

## Tracking Work Progress

Use the `WORKING-ON.md` file to track your work progress:

1. **Before Starting Work**

   ```markdown
   # WORKING-ON

   ## [DATE] [DAY]

   [FEATURE_BRANCH_NAME]: [FEATURE_DESCRIPTION]
   - Current task: [CURRENT_TASK]
   - Next steps: [NEXT_STEPS]
   ```

2. **During Development**
   * Update the file daily with your progress
   * Mark completed tasks
   * Add new tasks as they come up

3. **After Merging**
   * Add the merge date and branch name
   * Mark the feature as completed
   * Example:

     ```markdown
     # WORKING-ON

     ## 21-04-25 MONDAY

     feature/occupation-details: Implement OccupationDetailsLoaded state
     - ✅ Implemented loading types
     - ✅ Added select events
     - ✅ Merged with develop on 21-04-25
     ```

This helps:

* Track daily progress
* Maintain transparency
* Document feature completion
* Keep a history of development

## Making Changes (Script)

Use the script `push_feature_branch.sh` to commit and push changes to both **origin** and **upstream**.

```bash
./push_feature_branch.sh
```

This script will:

* Ensure you're on a **feature/** branch
* Add all changes
* Prompt for a commit message
* Push to **origin** and **upstream**

## Merge Feature Branch into Develop (Script)

Once your feature is ready, merge it into `develop` using:

```bash
./merge_feature_to_develop.sh
```

This script will:

* Fetch updates from **origin** and **upstream**
* Sync `develop` branch
* Merge your feature branch into `develop`
* Push `develop` to **origin** and **upstream**
* Switch you back to your **feature** branch

## Rebase Feature Branch (Script)

If you want to keep your feature branch up to date with latest `develop` changes, rebase it:

```bash
./rebase_feature_branch.sh
```

This script will:

* Fetch updates from **origin** and **upstream**
* Rebase your feature branch onto latest `develop`
* Push rebased branch to **origin** and **upstream** (force push)

## Merge Develop into Main (Script)

When you're ready to push stable code to production (`main`), merge `develop` into `main`:

```bash
./merge_develop_to_main.sh
```

This script will:

* Fetch updates from **origin** and **upstream**
* Sync `main` branch
* Merge `develop` into `main`
* Push `main` to **origin** and **upstream**

## Keeping Your Fork in Sync

Periodically update your `develop`:

```bash
git checkout develop
git pull upstream develop
git push origin develop
```

## Cleaning Up

After your feature branch has been merged:

```bash
git checkout develop
git pull upstream develop
git branch -d feature/your-feature-name
git push origin --delete feature/your-feature-name
```

## Need Help?

If you face issues at any step:

* Check [SCRIPT-USAGE.md](SCRIPT-USAGE.md) to understand the usage of these scripts
* Reach out to repo maintainers
* Ask in the project's communication channel

## Happy coding and contributing! 🚀
