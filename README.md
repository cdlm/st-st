# SmallTest — SmallTalk unit tests, from scratch
[![Build Status][travis-status]][travis]

Currently still in the initial implementation phase, meaning the main pieces are
there but many features are still missing and may force changes in the design.

### Loading instructions

#### starting from a Pharo image

```smalltalk
Metacello new baseline: 'SmallTest;
    repository: 'github://cdlm/st-st/src';
    load.
```

[travis]: https://travis-ci.org/cdlm/st-st
[travis-status]: https://travis-ci.org/cdlm/st-st.svg?branch=master
