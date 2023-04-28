module.exports = {
    "env": {
        "browser": true,
        "es2021": true
    },
    "extends": [
        "eslint:recommended",
        "plugin:react/recommended"
    ],
    "overrides": [
    ],
    "parserOptions": {
        "ecmaVersion": "latest",
        "sourceType": "module"
    },
    "plugins": [
        "react"
    ],
    //Rules
    "rules": {
        "quotes": ["error", "single"],
        "max-len": ["error", {"code": 80}],
        "no-console": "error",
        "semi": ["error", "always"],
        "indent": ["error", 2],
        "no-undef": "error",
        "no-var": "error"
      }
}
