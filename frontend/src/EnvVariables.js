const host = process.env.NODE_ENV === 'production' ? 'http://localhost' : 'http://localhost';
const port = process.env.NODE_ENV === 'production' ? 8000 : 3000;

const url = `${host}:${port}`

export default url
