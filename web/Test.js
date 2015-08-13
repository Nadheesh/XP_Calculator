/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


QUnit.test("Testing Minus function", function(assert) {
  assert.equal(5, minus(5, 3), "5 - 3 is 5");
});
QUnit.test("Testing powerTo function", function(assert) {
  assert.equal(81, powerTo(3, 4), "3**4 is 81");
});
QUnit.test("Testing Multiplication function", function(assert) {
  assert.equal(35, mult(5, 7), "5*7 is 35");
});

QUnit.test("Testing Plus function with failing", function(assert) {
  assert.equal(5, minus(2, 2), "2 + 2 is 5");
});
