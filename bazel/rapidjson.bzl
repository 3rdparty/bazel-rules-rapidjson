load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def rapidjson_deps():
    if "com_github_tencent_rapidjson" not in native.existing_rules():
        http_archive(
            name = "com_github_tencent_rapidjson",
            urls = ["https://github.com/Tencent/rapidjson/archive/dfbe1db9da455552f7a9ad5d2aea17dd9d832ac1.tar.gz"],
            sha256 = "a2faafbc402394df0fa94602df4b5e4befd734aad6bb55dfef46f62fcaf1090b",
            strip_prefix = "rapidjson-dfbe1db9da455552f7a9ad5d2aea17dd9d832ac1",
            build_file = "@com_github_3rdparty_bazel_rules_rapidjson//:BUILD.rapidjson",
        )
