This repo is for the 0x13. JavaScript - Objects, Scopes and Closures

### Why JavaScript Programming is Amazing
JavaScript is amazing because it's versatile, enabling both client-side and server-side development. It allows for dynamic, interactive web applications, has a vast ecosystem of libraries and frameworks, and is supported by all modern browsers.

### How to Create an Object in JavaScript
You can create an object in JavaScript using object literals, constructors, or the `Object.create` method. For example:
```javascript
// Using object literal
const obj = {
  key: 'value',
  method: function() {
    console.log(this.key);
  }
};

// Using constructor
function MyObject(key) {
  this.key = key;
}
const obj2 = new MyObject('value');

// Using Object.create
const obj3 = Object.create(Object.prototype);
obj3.key = 'value';
```

### What `this` Means
In JavaScript, `this` refers to the object that is executing the current function. Its value depends on how the function is called:
- In a method, `this` refers to the owner object.
- Alone, `this` refers to the global object (in non-strict mode) or `undefined` (in strict mode).
- In a function, `this` refers to the global object (in non-strict mode) or `undefined` (in strict mode).
- In an event, `this` refers to the element that received the event.
- With `call`, `apply`, or `bind`, `this` can be explicitly set.

### What `undefined` Means
`undefined` is a primitive value automatically assigned to variables that have just been declared or to function parameters for which there are no arguments provided. It also indicates the absence of a value for a property of an object.

### Why the Variable Type and Scope is Important
Variable type and scope are crucial because they determine how values are stored and accessed in memory, how functions operate on these values, and the visibility and lifetime of variables within the code. Properly managing type and scope helps prevent bugs, makes the code more readable, and ensures efficient memory usage.

### What is a Closure
A closure is a function that retains access to its lexical scope, even when the function is executed outside that scope. It allows functions to maintain references to variables from their containing scope. For example:
```javascript
function outerFunction(outerVariable) {
  return function innerFunction(innerVariable) {
    console.log('Outer variable: ' + outerVariable);
    console.log('Inner variable: ' + innerVariable);
  };
}

const closureExample = outerFunction('outer');
closureExample('inner');
```

### What is a Prototype
A prototype is an object from which other objects inherit properties. Every JavaScript object has a prototype, which allows for property inheritance and method sharing across objects. For example:
```javascript
function Person(name) {
  this.name = name;
}

Person.prototype.greet = function() {
  console.log('Hello, ' + this.name);
};

const person = new Person('John');
person.greet(); // Hello, John
```

### How to Inherit an Object from Another
To inherit an object from another in JavaScript, you can use `Object.create`, or utilize constructor functions and the `prototype` chain. For example:
```javascript
// Using Object.create
const parent = {
  greet: function() {
    console.log('Hello from parent');
  }
};

const child = Object.create(parent);
child.greet(); // Hello from parent

// Using constructor functions and prototype
function Parent() {
  this.parentProperty = 'parent';
}

Parent.prototype.greet = function() {
  console.log('Hello from parent');
};

function Child() {
  Parent.call(this);
  this.childProperty = 'child';
}

Child.prototype = Object.create(Parent.prototype);
Child.prototype.constructor = Child;

const childInstance = new Child();
childInstance.greet(); // Hello from parent
```