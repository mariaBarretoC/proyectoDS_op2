app.set('port', process.end.PORT || 3001);

//middlewares
app.use(morgan('dev'));
app.use(express.json());
app.use(epress.urlencoded({extended:false}));
app.use(express.json());

//routes
app.get('/', (req, res) => {
    res.send('hello world');

});

app.listen(app.get,('port'),() =>{
    console.log(`server on port ${('port')}`);

});