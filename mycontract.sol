pragma solidity ^0.5.0;

contract cont {
    
    mapping(uint => person) public people;
    uint public count;

    struct person {
        uint _id;
        string _name;
        string _lastname;
        string _email;
    }
    
    constructor() public{
        addperson("swaroop", "r", "sb@sb.com");
    }
    
    //person[] public people;
    
    function addperson(string memory _name, string memory _lastname, string memory _email) public {
        //people.push(person(_name, _lastname, _email));
        
        people[count] = person(count, _name, _lastname, _email);
        count++;
    }
    
   function output(uint _id) public view returns(string memory name, string memory lastname, string memory email){
       return(people[_id]._name, people[_id]._lastname, people[_id]._email);
   }

}