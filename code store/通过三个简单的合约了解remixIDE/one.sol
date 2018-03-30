pragma solidity 0.4.9;
contract DemoTypes303 {

    string[] strArr;
    function add(string str){
        strArr.push(str);
    }

    function getStrAt(uint n) constant returns (string s){

      string tmp = strArr[n];
      return tmp;
    }

    function updateStrAt(uint n,string str){

      strArr[n] = str;
    }

    function deleteStrAt(uint index) {

      uint len = strArr.length;
      if(index >= len) return;

      for (uint i = index; i < len - 2; i++){
          strArr[i] = strArr[i+1];
      }
      strArr.length--;
    }
}
