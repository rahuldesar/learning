# Cheatsheet (`tldr git-worktree`)

1. Create a new directory with the specified branch checked out into it:

   ```git
    git worktree add path/to/directory branch
   ```

2. Create a new directory with a new branch checked out into it:

   ```git
   git worktree add path/to/directory -b new_branch
   ```

3. List all the working directories attached to this repository:

   ```git
   git worktree list
   ```

4. Remove a worktree (after deleting worktree directory):

   ```git
     git worktree prune
   ```
