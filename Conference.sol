pragma solidity ^0.4.19;

contract Conference {
    // Structs are custom defined types that can group several variables
    struct ConferenceInformation {
        string name;
        string city;
    }
    
    // Array to hold conference information 
    ConferenceInformation[] private conferences;

    // Function used to add a new conference from web UI and add it to the array of conferences
    function addConference(string _name, string _city) public {
        ConferenceInformation memory conference = ConferenceInformation({name: _name, city: _city });
        conferences.push(conference);
    }
    
    // Function to return the total number of conferences added
    function getConferenceCount() public view returns(uint) {
        return conferences.length;
    }
}
