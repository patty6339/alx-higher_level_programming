This is the repo for 0x14-javascript-web_scraping project

### Why JavaScript Programming is Amazing

JavaScript is a versatile, powerful, and widely-used programming language that runs in the browser as well as on servers through Node.js. It allows developers to create interactive and dynamic web pages, making it essential for modern web development. JavaScript's asynchronous capabilities, facilitated by callbacks, promises, and async/await, enable efficient handling of concurrent operations, such as API calls and I/O operations. Its vast ecosystem, including libraries and frameworks like React, Angular, and Vue.js, enhances development productivity and application performance. Furthermore, JavaScript's event-driven nature and compatibility with JSON make it ideal for building RESTful APIs and handling real-time data. Its universal adoption ensures a robust community and abundant resources, supporting continuous learning and innovation.

### How to Manipulate JSON Data

JSON (JavaScript Object Notation) is a lightweight data-interchange format that's easy to read and write for humans and machines. Here are basic operations for manipulating JSON data in JavaScript:

1. **Parsing JSON**: Converting a JSON string into a JavaScript object.
    ```javascript
    const jsonString = '{"name": "John", "age": 30}';
    const jsonObject = JSON.parse(jsonString);
    console.log(jsonObject.name); // Output: John
    ```

2. **Stringifying JSON**: Converting a JavaScript object into a JSON string.
    ```javascript
    const jsonObject = { name: "John", age: 30 };
    const jsonString = JSON.stringify(jsonObject);
    console.log(jsonString); // Output: '{"name":"John","age":30}'
    ```

3. **Accessing and Modifying JSON Data**:
    ```javascript
    jsonObject.age = 31;
    console.log(jsonObject); // Output: { name: 'John', age: 31 }
    ```

### How to Use `request` and `fetch` API

Both `request` and `fetch` are used to make HTTP requests, but `fetch` is the modern, built-in API for making such requests.

**Using `fetch` API**:
```javascript
// GET request
fetch('https://api.example.com/data')
    .then(response => response.json())
    .then(data => console.log(data))
    .catch(error => console.error('Error:', error));

// POST request
fetch('https://api.example.com/data', {
    method: 'POST',
    headers: {
        'Content-Type': 'application/json'
    },
    body: JSON.stringify({ name: 'John', age: 30 })
})
    .then(response => response.json())
    .then(data => console.log(data))
    .catch(error => console.error('Error:', error));
```

### How to Read and Write a File Using `fs` Module

In Node.js, the `fs` module is used for file system operations like reading and writing files.

**Reading a file**:
```javascript
const fs = require('fs');

// Asynchronous read
fs.readFile('example.txt', 'utf8', (err, data) => {
    if (err) {
        console.error(err);
        return;
    }
    console.log(data);
});

// Synchronous read
try {
    const data = fs.readFileSync('example.txt', 'utf8');
    console.log(data);
} catch (err) {
    console.error(err);
}
```

**Writing to a file**:
```javascript
const fs = require('fs');

// Asynchronous write
fs.writeFile('example.txt', 'Hello, world!', (err) => {
    if (err) {
        console.error(err);
        return;
    }
    console.log('File has been written');
});

// Synchronous write
try {
    fs.writeFileSync('example.txt', 'Hello, world!');
    console.log('File has been written');
} catch (err) {
    console.error(err);
}
```

These methods allow you to handle files efficiently in a Node.js environment, providing both asynchronous and synchronous options depending on your needs.
