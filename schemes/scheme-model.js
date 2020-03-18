const db = require("../data/db-config.js");

module.exports = {
    find,
    findById,
    findSteps,
    add,
    update,
    remove,
};

function find() {
    return db("schemes");
}

function findById(id) {
    return db("schemes")
     .where({ id })
     .first();
}

function findSteps(id) {


}

function add(scheme) {
    const schemeData = req.body;
    return db("schemes")
      .insert(schemeData, "id")
      .then(ids => {
          db("schemes")
           .where({ id: ids[0]})
           .then(() => {
               return findById(id);
           })
      })
}

function update(changes, id) {
    return db("schemes")
      .where({ id })
      .update(changes)
      .then(() => {
          return findById(id);
      });
}

function remove(id) {
    return db("schemes")
     .where("id", id)
     .del();
}