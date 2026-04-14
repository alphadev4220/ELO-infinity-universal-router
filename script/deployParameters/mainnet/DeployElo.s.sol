// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import {DeployUniversalRouter} from "../../DeployUniversalRouter.s.sol";
import {RouterParameters} from "../../../src/base/RouterImmutables.sol";

/**
 * forge script script/deployParameters/mainnet/DeployElo.s.sol:DeployElo -vvv \
 *     --rpc-url https://rpc.elochain.org \
 *     --broadcast \
 *     --slow
 */
contract DeployElo is DeployUniversalRouter {
    function getDeploymentSalt() public pure override returns (bytes32) {
        return keccak256("INFINITY-UNIVERSAL-ROUTER/UniversalRouter/ELO/1.0.0");
    }

    function getCreate3Factory() public pure override returns (address) {
        return 0xc795147EbdBA39FD73f140De524aFF3f6C499DC4;
    }

    function setUp() public override {
        params = RouterParameters({
            permit2: 0x919960FAC8B895d9AA7747B630324eF86FD13A7B,
            weth9: 0xD4949664cD82660AaE99bEdc034a0deA8A0bd517,
            v2Factory: address(0),
            v3Factory: address(0),
            v3Deployer: address(0),
            v2InitCodeHash: bytes32(0),
            v3InitCodeHash: bytes32(0),
            stableFactory: address(0),
            stableInfo: address(0),
            infiVault: 0xc91FCf5bba3F9e848aA4393F6939c66564D5Afd9,
            infiClPoolManager: 0x91420c74F23055e5CfDf3661E0F9171d342023eD,
            infiBinPoolManager: 0xfb8F9059302b67B20863eC5665CEBFE2E4a50b5F,
            v3NFTPositionManager: address(0),
            infiClPositionManager: 0xEDf5ece27677847FB3B5e2a2733036A1d36B237D,
            infiBinPositionManager: 0x464f63C82Bbea313081C00ee77433cCDAA097928
        });

        unsupported = address(0);
    }
}
