// index.js
const coa = require('coa');

coa.Cmd()
    .name(process.argv[1])
    .title('Test command')
    .helpful()
    .opt()
        .name('version')
        .title('Version')
        .short('v')
        .long('version')
        .flag()
        .act((opts, args) => {
            console.log('v1.0.0');
            process.exit(0);
        })
        .end()
    .act((opts, args) => {
        console.log('Hello, COA!');
    })
    .run(process.argv.slice(2));
