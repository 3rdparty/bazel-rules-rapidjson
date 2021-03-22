# Bazel build rules for rapidjson

To use these rules, add the following to your `WORKSPACE` file:

```bazel
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
    name = "com_github_3rdparty_bazel_rules_rapidjson",
    commit = "29676731c7b315d2070de86d1109964f40b968df",
    remote = "https://github.com/3rdparty/bazel-rules-rapidjson",
    shallow_since = "1616434655 -0700",
)

load("@com_github_3rdparty_bazel_rules_rapidjson//:bazel/rapidjson.bzl", "rapidjson_deps")

rapidjson_deps()
```

You can then use `@com_github_tencent_rapidjson//:rapidjson` in your target's `deps`.
