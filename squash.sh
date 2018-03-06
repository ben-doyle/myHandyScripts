# Squash last X commits with a Commit message.
# Usage: squash X 'COMMIT_MSG'
# where X= Number of last commits.
# where COMMIT_MSG= New commit msg.
function squash() {
    if [ -z "${1}" -o -z "${2}" ]; then
        echo "Usage: \`squash X COMMIT_MSG\`"
        echo "X= Number of last commits."
        echo "COMMIT_MSG= New commit msg."
        return 1
    fi

    git reset --soft HEAD~"$1"
    git add . && git commit -m "$2" # With 100 emoji
    git push --force
}
