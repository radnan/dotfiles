# Create a stable channel PR from edge channel PR
#
#    git-stable-pr 1234 some-name
#
# 1: the PR number in edge channel
# 2: label used to name new branch
git-stable-pr() {
  git remote get-url edge 2>/dev/null || git remote add edge git@github.com:newscred/cmp-client.git
  git fetch edge master

  git remote get-url stable 2>/dev/null || git remote add stable git@github.com:newscred/cmp-client-stable.git
  git fetch stable master

  BR=$(printf -- "-%s" "$@" | awk '{print substr($1, 2)}')
  git fetch edge pull/$1/head:pr/$BR
  git co pr/$BR

  git rebase --onto stable/master $(git merge-base HEAD edge/master) pr/$BR
}

