pragma solidity ^0.6.7;

contract info {
    struct StudentInfo {
        uint rollNum;
        string name;
        string course;
        uint marks;
    }
    mapping(uint => StudentInfo) StudentMapping;
    uint benchNumber = 0;
    
    function benchSetter(uint _rollNum,
                         string memory _name,
                         string memory _course,
                         uint _marks)
                         public {
                         StudentMapping[benchNumber] = StudentInfo(_rollNum,
                                                                   _name,
                                                                   _course,
                                                                   _marks);
                                                                   benchNumber++;
                        }
                        
                        function getInfo(uint num) public view returns(uint,
                                                                       string memory,
                                                                       string memory,
                                                                       uint)
                                                                       {
                            return StudentMapping[num];
                        }
}