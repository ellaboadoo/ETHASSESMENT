contract MyToken {

   
   string public tokenName = "MANAYAM"; 
   string public tokenAbbrv = "MNM";
   uint public totalSupply = 0;
   
    
   mapping(address => uint) public balances;

    
   function mint (address Taddress , uint Tvalue) public {
      totalSupply += Tvalue;
      balances[Taddress] += Tvalue;
   }
   
    
   function burn (address Taddress , uint Tvalue) public {
      if (balances[Taddress] >= Tvalue) {
      totalSupply -= Tvalue;
      balances[Taddress] -= Tvalue;
      }
   }
}
