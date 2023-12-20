
module.exports = async (srv) => {
  const cds = require('@sap/cds')
  const db = await cds.connect.to ('db')
  const { Users } = db.entities ('application')

  srv.on('Login', async (req, res) => {
    const { username, password } = req.data;

    const user = await SELECT.one.from(Users) .where({ username });
    if(user != undefined) {
      return user
    }

    req.error(500, 'error.action.no_prefill_data');

  });
}
