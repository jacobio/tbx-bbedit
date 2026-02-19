(function (Prism) {

  Prism.languages.tinderbox = {
    'comment': [
      {
        // Block comment: //…//
        pattern: /\/\/.*?\/\//,
        greedy: true
      },
      {
        // Line comment: // to end of line
        pattern: /\/\/.*/,
        greedy: true
      }
    ],
    'string': {
      pattern: /"[^"]*"|'[^']*'|\b(?:yesterday|today|now|tomorrow)\b/i,
      greedy: true
    },
    'property': {
      // All $Attributes — system and user-defined
      pattern: /\$[A-Za-z]\w*/
    },
    'function': [
      {
        // Dot-notation operators: .trim, .contains, etc.
        pattern: /\.\w+/
      },
      {
        // Function-call style: collect(...), find(...), etc.
        pattern: /\b\w+(?=\s*\()/
      }
    ],
    'keyword': /\b(?:if|else|true|false|var|return|empty|failed)\b/i,
    'builtin': /\b(?:boolean|color|date|dictionary|interval|list|number|set|string)\b/i,
    'variable': /\b(?:adornment|agent|all|ancestors|child|children|current|descendants|destination|firstSibling|grandparent|lastChild|lastSibling|my|nextItem|nextSibling|nextSiblingItem|original|parent|previous|previousItem|previousSiblingItem|prevSibling|randomChild|root|selection|siblings|source|that|this)\b/i,
    'number': /\b\d+(?:\.\d+)?\b/,
    'operator': /[!=<>]=?|[&|+\-*\/;]/,
    'punctuation': /[{}(),:]/
  };

}(Prism));
