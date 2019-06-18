"-*- mode: smalltalk; -*-"

Metacello new baseline: #SmallTest;
    repository: 'gitlocal://.';
    onLock: [:ex :old :new | ex honor]; load.
