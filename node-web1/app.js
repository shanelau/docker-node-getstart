const Koa = require('koa');
const app = new Koa();
const port = process.env.PORT || 3000;

app.use(ctx => {
  ctx.body = 'Hello Koa';
});

app.listen(port, (err)=>{
  if(err) {
    return console.error(err);
  }
  console.log(`node running on port: ${port}`);
});