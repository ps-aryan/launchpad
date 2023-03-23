
const hre = require("hardhat");

async function main() {

 

  const SimpleToken = await hre.ethers.getContractFactory("SimpleToken");
  const simpleToken = await SimpleToken.deploy("Pixel" , "PX" , 1000 , 1);

  await simpleToken.deployed();

  console.log(
`Contract Address: ${simpleToken.address}`
  );
}


main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});