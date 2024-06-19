This repo contains files for the 0x12-javascript-warm_up task

Questions and Answers

### Why JavaScript Programming is Amazing
JavaScript is a versatile and powerful language that is essential for web development. Here are a few reasons why it is amazing:
1. **Ubiquity**: JavaScript runs in all modern web browsers, making it a fundamental part of web development.
2. **Interactivity**: It allows for the creation of dynamic and interactive web pages.
3. **Community and Libraries**: A vast ecosystem of libraries and frameworks (like React, Angular, and Vue) enhances development productivity.
4. **Server-Side**: With Node.js, JavaScript can also be used for server-side programming.
5. **Asynchronous Programming**: It supports asynchronous programming with Promises and async/await, enabling efficient handling of operations like data fetching.

### How to Run a JavaScript Script
1. **In a Web Browser**:
   - Include JavaScript code directly in an HTML file within `<script>` tags:
     ```html
     <script>
       console.log("Hello, World!");
     </script>
     ```
   - Link to an external JavaScript file:
     ```html
     <script src="path/to/your/script.js"></script>
     ```
2. **Using Node.js**:
   - Save your script in a file, e.g., `script.js`, and run it using Node.js:
     ```bash
     node script.js
     ```

### How to Create Variables and Constants
- **Variables**: Use `var`, `let`, or `const` keywords.
  ```javascript
  var x = 10;     // Variable with function scope
  let y = 20;     // Variable with block scope
  const z = 30;   // Constant with block scope
  ```

### Differences Between `var`, `const`, and `let`
- **`var`**:
  - Function-scoped.
  - Can be redeclared and updated.
  ```javascript
  var x = 1;
  var x = 2; // Redeclaration allowed
  ```
- **`let`**:
  - Block-scoped.
  - Cannot be redeclared within the same scope, but can be updated.
  ```javascript
  let y = 1;
  y = 2; // Update allowed
  ```
- **`const`**:
  - Block-scoped.
  - Cannot be redeclared or updated.
  ```javascript
  const z = 1;
  // z = 2; // Error: Assignment to constant variable.
  ```

### Data Types Available in JavaScript
1. **Primitive Types**:
   - Number
   - String
   - Boolean
   - Null
   - Undefined
   - Symbol (ES6)
   - BigInt (ES11)
2. **Non-Primitive Type**:
   - Object (includes Arrays, Functions, etc.)

### How to Use `if`, `if ... else` Statements
```javascript
let age = 18;

if (age < 18) {
  console.log("You are a minor.");
} else {
  console.log("You are an adult.");
}
```

### How to Use Comments
- **Single-line comment**:
  ```javascript
  // This is a single-line comment
  ```
- **Multi-line comment**:
  ```javascript
  /* 
   * This is a 
   * multi-line comment 
   */
  ```

### How to Assign Values to Variables
```javascript
let a = 5;
const b = "Hello";
var c = true;
```

### How to Use `while` and `for` Loops
- **`while` Loop**:
  ```javascript
  let i = 0;
  while (i < 5) {
    console.log(i);
    i++;
  }
  ```
- **`for` Loop**:
  ```javascript
  for (let j = 0; j < 5; j++) {
    console.log(j);
  }
  ```

### How to Use `break` and `continue` Statements
- **`break`**: Exits the loop.
  ```javascript
  for (let i = 0; i < 10; i++) {
    if (i === 5) {
      break; // Exit the loop when i is 5
    }
    console.log(i);
  }
  ```
- **`continue`**: Skips the current iteration and continues with the next.
  ```javascript
  for (let i = 0; i < 10; i++) {
    if (i % 2 === 0) {
      continue; // Skip even numbers
    }
    console.log(i);
  }
  ```

### What is a Function and How to Use Functions
- **Function**: A reusable block of code designed to perform a particular task.
  ```javascript
  function greet(name) {
    console.log("Hello, " + name + "!");
  }
  
  greet("Alice");
  ```

### What Does a Function That Does Not Use Any Return Statement Return
- It returns `undefined` by default.
  ```javascript
  function noReturn() {
    // No return statement
  }
  
  console.log(noReturn()); // Outputs: undefined
  ```

### Scope of Variables
- **Global Scope**: Accessible from anywhere in the code.
  ```javascript
  var globalVar = "I am global";
  ```
- **Function Scope**: Accessible only within the function.
  ```javascript
  function scopeTest() {
    var functionVar = "I am local to the function";
  }
  ```
- **Block Scope**: Accessible only within the block (for `let` and `const`).
  ```javascript
  {
    let blockVar = "I am local to the block";
    const blockConst = "I am also local to the block";
  }
  ```

### Arithmetic Operators and How to Use Them
- **Addition**: `+`
- **Subtraction**: `-`
- **Multiplication**: `*`
- **Division**: `/`
- **Modulus**: `%`
- **Increment**: `++`
- **Decrement**: `--`
  ```javascript
  let a = 10;
  let b = 5;
  
  console.log(a + b); // 15
  console.log(a - b); // 5
  console.log(a * b); // 50
  console.log(a / b); // 2
  console.log(a % b); // 0
  a++;
  console.log(a); // 11
  b--;
  console.log(b); // 4
  ```

### How to Manipulate Dictionary (Object)
- **Create an Object**:
  ```javascript
  let person = {
    name: "John",
    age: 30
  };
  ```
- **Access Properties**:
  ```javascript
  console.log(person.name); // John
  console.log(person['age']); // 30
  ```
- **Add/Update Properties**:
  ```javascript
  person.job = "Developer";
  person.age = 31;
  ```
- **Delete Properties**:
  ```javascript
  delete person.job;
  ```

### How to Import a File
- **In a Browser Environment (ES6 Modules)**:
  ```javascript
  // Import a specific function or variable
  import { myFunction } from './myModule.js';
  
  // Import everything from a module
  import * as myModule from './myModule.js';
  
  // Import a default export
  import myDefaultFunction from './myModule.js';
  ```

- **In Node.js**:
  ```javascript
  // Using CommonJS modules
  const myModule = require('./myModule');
  const myFunction = myModule.myFunction;
  ```