

require("@nomiclabs/hardhat-waffle");

module.exports = {
  solidity: '0.8.0',
  networks: {
    ropsten: {
      url: 'https://eth-ropsten.alchemyapi.io/v2/Tzz-YGxMGZ9ZUKMBwpSPDrjJUlKvYlii',
      accounts: ['0xd93da5389414102a7f82e058f18ddb3c1b4345a9467d1b98902f648ac4c4715c']
    }
  }
}