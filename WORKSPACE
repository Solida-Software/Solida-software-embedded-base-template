load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

# git_repository(
#     name="SSEB",
#     remote="https://github.com/Solida-Software/Solida-Software-Embedded-Base.git",
#     branch="develop",
#     init_submodules = True
# )

local_repository(
    name="SSEB",
    path="../Solida-Software-Embedded-Base"
)

local_repository(
	name="avr_tools",
	path="../Solida-Software-Embedded-Base/toolchain"
)

register_toolchains(
	"@avr_tools//tools/avr:toolchain_avr"
)

load("@SSEB//:platforms.bzl", "platforms_def")

user_platforms = {
    "atmega328p_optimized": [
        "//chip/atmega328p",
        "//toolchain/compiler/avr8",
        "//toolchain/optimize/O0",

        "//drivers/gpio"
    ]
}

platforms_def(user_platforms)