appName="alist"
builtAt="$(date +'%F %T %z')"
goVersion=$(go version | sed 's/go version //')
gitAuthor=$(git show -s --format='format:%aN <%ae>' HEAD)
gitCommit=$(git log --pretty=format:"%h" -1)
gitTag=$(git describe --long --tags --dirty --always)
ldflags="\
-w -s \
-X 'github.com/Xhofe/alist/conf.BuiltAt=$builtAt' \
-X 'github.com/Xhofe/alist/conf.GoVersion=$goVersion' \
-X 'github.com/Xhofe/alist/conf.GitAuthor=$gitAuthor' \
-X 'github.com/Xhofe/alist/conf.GitCommit=$gitCommit' \
-X 'github.com/Xhofe/alist/conf.GitTag=$gitTag' \
"
go build -ldflags="$ldflags" alist.go
