set -x

os_name=$1
dir=$2

echo $os_name
echo $dir

pwd
ls

# export STACK_ROOT="$(Build.SourcesDirectory)"/.stack-root;
# echo $STACK_ROOT
# mkdir -p ~/.local/bin
# curl -f -L "https://github.com/fpco/cache-s3/releases/download/${CACHE_S3_VERSION}/cache-s3-${CACHE_S3_VERSION}-linux-x86_64.tar.gz" -o ~/.local/bin/cache-s3.tar.gz
# tar xzf ~/.local/bin/cache-s3.tar.gz -C ~/.local/bin
# export PATH=$HOME/.local/bin:$PATH;
# cache-s3 --prefix="${CACHE_S3_PREFIX}" --git-branch="$(Build.SourceBranchName)" --suffix="${OS_NAME}" restore stack --base-branch="${BASE_BRANCH}"
# cache-s3 --prefix="${CACHE_S3_PREFIX}" --git-branch="$(Build.SourceBranchName)" --suffix="${OS_NAME}" restore stack work --base-branch="${BASE_BRANCH}"
# etc/scripts/ci-setup.sh
# export PATH=$HOME/.local/bin:/opt/ghc/$GHCVER/bin:/opt/happy/1.19.5/bin:/opt/alex/3.1.7/bin:$PATH

# export STACK_ROOT="$(Build.SourcesDirectory)"/.stack-root;
# export PATH=$HOME/.local/bin:$PATH;
# set -ex
# stack etc/scripts/release.hs build
# cp _release/stack-* $(Build.ArtifactStagingDirectory)
# set +ex

# - task: PublishBuildArtifacts@1
# inputs:
# pathtoPublish: '$(Build.ArtifactStagingDirectory)'
# artifactName: stack-alpine-linux-64
# condition: in(variables['Agent.JobStatus'], 'Succeeded', 'SucceededWithIssues', 'Failed')
# - script: |
# export PATH=$HOME/.local/bin:$PATH;
# export AWS_ACCESS_KEY_ID="$(AWS_ACCESS_KEY_ID)";
# export AWS_SECRET_ACCESS_KEY="$(AWS_SECRET_ACCESS_KEY)";
# export STACK_ROOT="$(Build.SourcesDirectory)"/.stack-root;
# if [ "$(Build.SourceBranchName)" = "${BASE_BRANCH}" ]; then
# cache-s3 --prefix="${CACHE_S3_PREFIX}" --git-branch="$(Build.SourceBranchName)" --suffix="${OS_NAME}" save stack;
# fi;
# cache-s3 --prefix="${CACHE_S3_PREFIX}" --git-branch="$(Build.SourceBranchName)" --suffix="${OS_NAME}" save stack work
