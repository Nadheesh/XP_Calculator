/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


QUnit.test("Testing Minus function", function(assert) {
  assert.equal(2, minus(5, 3), "5 - 3 is 2");
});

QUnit.test("Testing Minus function with failing", function(assert) {
  assert.equal(1, minus(2, 2), "2 - 2 is 1");
});

QUnit.test("Testing Divide function", function(assert) {
  assert.equal(2.5, divide()(5, 2), "5 / 2 is 2.5");
});

QUnit.test("Testing Divide function with failing", function(assert) {
  assert.equal(1, divide(7/ 3), "7 / 3 is 1");
});
