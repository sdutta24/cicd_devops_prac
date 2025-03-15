import pytest
from calculator import add, subtract, multiply, divide

def test_add():
    assert add(3, 2) == 5

def test_subtract():
    assert subtract(5, 3) == 2

def test_multiply():
    assert multiply(4, 3) == 12

def test_divide():
    assert divide(10, 2) == 5

def test_divide_by_zero():
    assert divide(10, 0) == "Error! Division by zero."
