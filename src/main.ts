import Fastify from 'fastify'

const app = Fastify({
  logger: true
})

app.get('/', async function handler(request, reply) {
  return { message: 'URL Shortener is up 🚀' }
})

app.listen({ port: 3000 }).then((address) => {
  app.log.info(`Server listening at ${address}`)
})
