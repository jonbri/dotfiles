module.exports = {
  extends: ["@commitlint/config-conventional"],
  rules: {
    "type-enum": [
      2,
      "always",
      [
        "build",
        "ci",
        "chore",
        "docs",
        "feat",
        "fix",
        "perf",
        "refactor",
        "revert",
        "style",
        "test",
        "release"
      ]
    ]
  },
  ignores: [
    message => message.toUpperCase().startsWith("AUTO"),
    message => message.toUpperCase().startsWith("FIXUP"),
    message => message.toUpperCase().startsWith("MERGE"),
    message => message.toUpperCase().startsWith("REVERT"),
    message => message.toUpperCase().startsWith("SQUASH"),
    message => message.toUpperCase().startsWith("WIP")
  ]
};
