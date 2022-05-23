// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract E {
    event Log(string message);

    function foo() public virtual {
        emit Log("e,foo");
    }

    function bar() public virtual {
        emit Log("e,bar");
    }
}

contract F is E {
    function foo() public virtual override {
        emit Log("F,foo");
        E.foo();
    }

    function bar() public virtual override {
        emit Log("F,bar");
        super.bar();
    }
}

contract G is E {
    function foo() public virtual override {
        emit Log("g.foo");
        E.foo();
    }

    function bar() public virtual override {
        emit Log("g,bar");
        super.bar();
    }
}

contract H is F, G {
    function foo() public override(F, G) {
        F.foo();
    }

    function bar() public override(F, G) {
        super.bar();
    }
}
