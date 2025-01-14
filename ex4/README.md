# Ex. 4 - git

## Analysis

The `merge` branch will combine commits in the following maner: 

```
    Initial releas 
    A 
    B 
    C 
    D 
    E 
    F 
    G 
    B (cherry picked from commit 372c1558005515eee58e9e49c590b5faa4962127) 
    F (cherry picked from commit cf24853205d3f398c24a95aadc8fda539a45404c) 
```

while the `rebase` branch will move the changes as follows:

```
    Initial release 
    A 
    B 
    C 
    D 
    E 
    F 
    G 
    F (cherry picked from commit cf24853205d3f398c24a95aadc8fda539a45404c) 
```

As you can see the commit `B (cherry picked from commit 372c1558005515eee58e9e49c590b5faa4962127)` is missing in the rebase processing. 

Therefore any lines exclusievly modfied only by this comit will be missed in the outcome of `rebase` branch.

The commit mark `F (cherry picked from commit cf24853205d3f398c24a95aadc8fda539a45404c)` will be part of changeset as textual changes differ.

## Root couse:

The root cause of this difference is that rebase copies commits but omits the one that has been already applied.

`
Note that any commits in HEAD which introduce the same textual changes as a commit in HEAD.. are omitted (i.e., a patch already accepted upstream with a different commit message or timestamp will be skipped).
`

During a rebase, the process examines the textual changes, and it will reject replaying a commit if that commit already exists on the target branch being rebased onto.

## Reference
http://www.kernel.org/pub/software/scm/git/docs/git-rebase.html
