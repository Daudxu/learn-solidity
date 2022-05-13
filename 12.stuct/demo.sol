// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.4.25;

contract demo {
    struct Student {
        string name;
        uint256 score;
        bool active;
    }

    mapping(uint256 => Student) students;
    modifier ActiveStudent(uint256 id) {
        require(students[id].active, "Student is inactive");
        _;
    }

    function register(uint256 id, string name) public {
        students[id] = Student({name: name, score: 0, active: true});
    }

    function modifyScore(uint256 id, uint256 score) public ActiveStudent(id) {
        students[id].score = score;
    }

    function getStudent(uint256 id)
        public
        view
        ActiveStudent(id)
        returns (string, uint256)
    {
        return (students[id].name, students[id].score);
    }
}
