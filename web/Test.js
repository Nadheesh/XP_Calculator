/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


// testing for minus 
QUnit.test("Testing Add function", function(assert) {
  assert.equal(8, add(5, 3), "5 + 3 is 8");
});
QUnit.test("Testing Minus function", function(assert) {
  assert.equal(2, minus(5, 3), "5 - 3 is 2");
});
QUnit.test("Testing powerTo function", function(assert) {
  assert.equal(81, powerTo(3, 4), "3**4 is 81");
});
QUnit.test("Testing Multiplication function", function(assert) {
  assert.equal(35, mult(5, 7), "5*7 is 35");
});
QUnit.test("Testing Add function with failing", function(assert) {
  assert.equal(2, add(3, 2), "3 - 2 is 2");
});
QUnit.test("Testing powerTo function with failing", function(assert) {
  assert.equal(10, powerTo(3, 2), "3 ** 2 is 10");
});
QUnit.test("Testing Multiplication function with failing", function(assert) {
  assert.equal(7, mult(3, 2), "3 * 2 is 7");
});

QUnit.test("Testing Minus function with failing", function(assert) {
  assert.equal(1, minus(2, 2), "2 - 2 is 1");
});


//testing for the division
QUnit.test("Testing Divide function", function(assert) {
  assert.equal(2.5, divide(5, 2), "5 / 2 is 2.5");
});

QUnit.test("Testing Divide function with failing", function(assert) {
  assert.equal(1, divide(7, 3) , "7 / 3 is 1");
});

//testing for the square
QUnit.test("Testing Square function", function(assert) {
  assert.equal(25, square(5), "5^2 is 25");
});

QUnit.test("Testing Square function with failing", function(assert) {
  assert.equal(4, square(3) , "3^2 is 4");
});


//tesdting for the square root
QUnit.test("Testing SquareRoot function", function(assert) {
  assert.equal(2, squareRoot(4), "root of 4 is 2");
});

QUnit.test("Testing SquareRoot function with failing", function(assert) {
  assert.equal(1, divide(7) , "root of 7 is 1");
});
