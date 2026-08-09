contract Vault {
    address public creator;
    mapping(address => uint)public balances;

       event Deposited(address, uint amount);
       event Withdrawn(address, uint amount);

         constructo
             creator = msg.sender;
      }
          function deposit() public payable {
              balances[msg.sender] = balances[msg.sender] + msg.value;
              emit Deposited(msg.sender, msg.value);
     }
               receive() external payable {
                  require(false, "Direct deposit not allowed");
     }
          function withdraw(uint amount) public {
              require(amount<=balances[msg.sender], "Insufficient balance");
              balances[msg.sender]=balances[msg.sender] - amount;
              (bool success,  ) =msg.sender.call{value: amount}("");
              require(success, "Transaction failed");
              emit Withdrawn(msg.sender, amount);
              }
              }
