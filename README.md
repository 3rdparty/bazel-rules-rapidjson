# Bazel build rules for rapidjson

To use these rules, add the following to your `WORKSPACE` file:

```bazel
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
    name = "com_github_3rdparty_bazel_rules_rapidjson",
    commit = "6e735a0b2e7d125c776418b254648ab319289ccf",
    remote = "https://github.com/3rdparty/bazel-rules-rapidjson",
    shallow_since = "1616434870 -0700",
)

load("@com_github_3rdparty_bazel_rules_rapidjson//bazel:deps.bzl", "rapidjson_deps")

rapidjson_deps()
```

You can then use `@com_github_tencent_rapidjson//:rapidjson` in your target's `deps`.
