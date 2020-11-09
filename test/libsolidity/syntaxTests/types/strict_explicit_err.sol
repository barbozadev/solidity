contract B{}
contract C
{
    function f() public pure {

        uint16 a = uint16(int8(-1));

        int8 b = -1;
        uint16 c = uint16(b);

        int8 d = int8(uint16(type(uint16).max));

        uint16 e = type(uint16).max;
        int8 g = int8(e);

        address h = address(uint(type(uint).max));

        uint i = uint(address(0));

        uint j = type(uint).max;
        address k = address(j);

        int80 l = int80(bytes10("h"));
        bytes10 m = bytes10(int80(-1));

        B n = B(int(100));
        int o = int(new B());
    }
}
// ----
// TypeError 9640: (77-93): Explicit type conversion not allowed from "int8" to "uint16".
// TypeError 9640: (136-145): Explicit type conversion not allowed from "int8" to "uint16".
// TypeError 9640: (165-195): Explicit type conversion not allowed from "uint16" to "int8".
// TypeError 9640: (252-259): Explicit type conversion not allowed from "uint16" to "int8".
// TypeError 9640: (282-311): Explicit type conversion not allowed from "uint256" to "address".
// TypeError 9640: (331-347): Explicit type conversion not allowed from "address payable" to "uint256".
// TypeError 9640: (403-413): Explicit type conversion not allowed from "uint256" to "address".
// TypeError 9640: (434-453): Explicit type conversion not allowed from "bytes10" to "int80".
// TypeError 9640: (475-493): Explicit type conversion not allowed from "int80" to "bytes10".
// TypeError 9640: (510-521): Explicit type conversion not allowed from "int256" to "contract B".
// TypeError 9640: (539-551): Explicit type conversion not allowed from "contract B" to "int256".
