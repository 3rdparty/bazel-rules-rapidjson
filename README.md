# Bazel build rules for rapidjson

Follows a "repos/deps" pattern (in order to help with recursive dependencies). To use:

1. Copy `bazel/repos.bzl` into your repository at `3rdparty/bazel-rules-rapidjson/repos.bzl` and add an empty `BUILD` (or `BUILD.bazel`) to `3rdparty/bazel-rules-rapidjson` as well.

2. Copy all of the directories from `3rdparty` that you ***don't*** already have in ***your*** repository's `3rdparty` directory.

3. Either ... add the following to your `WORKSPACE` (or `WORKSPACE.bazel`):

```bazel
load("//3rdparty/bazel-rules-rapidjson:repos.bzl", rapidjson_repos="repos")
rapidjson_repos()

load("@com_github_3rdparty_bazel_rules_rapidjson//bazel:deps.bzl", rapidjson_deps="deps")
rapidjson_deps()
```

Or ... to simplify others depending on ***your*** repository, add the following to your `repos.bzl`:

```bazel
load("//3rdparty/bazel-rules-rapidjson:repos.bzl", rapidjson="repos")

def repos():
    rapidjson()
```

And the following to your `deps.bzl`:

```bazel
load("@com_github_3rdparty_bazel_rules_rapidjson//bazel:deps.bzl", rapidjson="deps")

def deps():
    rapidjson()
```

4. You can then use `@com_github_tencent_rapidjson//:rapidjson` in your target's `deps`.

5. Repeat the steps starting at (1) at the desired version of this repository that you want to use.


