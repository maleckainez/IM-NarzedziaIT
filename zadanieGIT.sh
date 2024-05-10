#level intro 1
git commit
git commit
#level intro 2
git branch bugFix
git checkout bugFix
#level intro 3
git branch bugFix
git checkout bugFix
git commit
git checkout main
git commit 
git merge bugFix
#level intro4
git branch bugFix
git checkout bugFix
git commit 
git checkout main
git commit 
git checkout bugFix
git rebase main
#level rampup1
git checkout C4
#level rampup2
git checkout git^
#level rampup3
git checkout HEAD^
git branch -f bugFix HEAD^
git branch -f main C6
#level rampup4
git reset HEAD^
git checkout pushed 
git revert HEAD
#level move1
git cherry-pick C3 C4 C7
#level move2
git rebase -i C1
#level mixed1 
git checkout main
git cherry-pick C4
#level mixed2
git rebase -i main
git commit --amend
git rebase -i main
git branch -f main caption
#level mixed3
git checkout main 
git cherry-pick C2
git branch -f main C1
git cherry-pick C2 C3
#level mixed4
git checkout C1
git tag v0
git checkout C2
git tag v1
#level mixed5
git describe C0
git describe main
git describe bugFix
#level advanced1
git rebase main bugFix
git rebase bugFix C6
git checkout another
git branch main C6''
git rebase main
git branch -f main another
#level advanced2
git branch bugWork HEAD~^2^
#level advanced3
git checkout one
git cherry-pick C4 C3 C2
git checkout two 
git cherry-pick C5 C4' C3' C2' '
git branch -f three C2
#level remote1
git clone
#level remote2
git commit 
git checkout o/main
git commit
#level remote3
git fetch
#level remote4
git pull
#level remote5
git commit
git commit
git checkout HEAD^2
git commit
git merge main
git branch -f main 
git checkout main
#level remote 6
git commit
git commit
git push
#level remote 7
git clone
git fakeTeamwork
git commit
git pull --rebase
git push 
#level remote8
git reset o/main
git branch feature C2
git push origin feature
git checkout feature
#level remodeAdvanced1
git checkout main
git pull --rebase
git rebase main side1
git rebase side1 side2
git rebase side2 side3
git rebase side3 main
git push
#level remoteAdvanced2
git checkout main
git pull --rebase
git merge side1
git merge side2
git merge side3 
git push
#level remoteAdvanced3
git checkout -b side o/main
git commit
git pull --rebase
git push 
#level remoteAdvanced4
git push origin main
git push origin foo
#level remoteAdvanced5
git push origin main^:foo
git push origin foo:main
#level remoteAdvanced6
git fetch origin c3:foo
git getch origin c6:main
git checkout foo
git merge main
#level remoteAdvanced7
git fetch origin :foo
git push origin :bar
#level remoteAdvanced8
git pull origin C3:foo
git pull orogin C2:side
