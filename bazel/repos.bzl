"""Adds necessary repositories/archives."""

########################################################################
# DO NOT EDIT THIS FILE unless you are inside the
# https://github.com/3rdparty/bazel-rules-rapidjson repository. If you
# encounter it anywhere else it is because it has been copied there in
# order to simplify adding transitive dependencies. If you want a
# different version of bazel-rules-rapidjson follow the Bazel build
# instructions at https://github.com/3rdparty/bazel-rules-rapidjson.
########################################################################

load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

def repos(external = True, repo_mapping = {}):
    if external and "com_github_3rdparty_bazel_rules_rapidjson" not in native.existing_rules():
        git_repository(
            name = "com_github_3rdparty_bazel_rules_rapidjson",
            commit = "3b3f64f0efda7fb543b9d3af46ec0226eac12d3c",
            remote = "https://github.com/3rdparty/bazel-rules-rapidjson",
            shallow_since = "1616863826 -0700",
            repo_mapping = repo_mapping,
        )
