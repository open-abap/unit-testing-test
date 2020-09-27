global.abap = require("@abaplint/runtime");
const ltcl_test = require("./output/zcl_ret.clas").ltcl_test;

new ltcl_test().test();