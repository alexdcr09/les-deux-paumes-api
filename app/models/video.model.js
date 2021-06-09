const sql = require("./db.js");

// constructor
const Video = function (video) {
    this.texte = video.texte;
    this.title = video.title;
    this.src = video.src;
    this.miniature = video.miniature;
    this.categories_id = video.categories_id;
};

Video.create = (newVideo, result) => {
    sql.query("INSERT INTO videos SET ?", newVideo, (err, res) => {
        if (err) {
            console.error("error: ", err);
            result(err, null);
            return;
        }

        console.info("created videos: ", { id: res.insertId, ...newVideo });
        result(null, { id: res.insertId, ...newVideo });
    });
};

Video.findById = (
    videoId /* stipuler que c'est un INT pour éviter une injection SQL */,
    result
) => {
    sql.query(`SELECT * FROM videos WHERE id = ${videoId}`, (err, res) => {
        if (err) {
            console.error("error: ", err);
            result(err, null);
            return;
        }

        if (res.length) {
            console.info("found video: ", res[0]);
            result(null, res[0]);
            return;
        }

        // not found Video with the id
        result({ kind: "not_found" }, null);
    });
};

// liaison à faire entre Id + name pour avoir le retour de l'bjet catégorie
Video.findByCategory = (categories_id, result) => {
    sql.query(
        `SELECT * FROM categories INNER JOIN videos on categories.id = videos.categories_id WHERE categories_id = ${categories_id}`,
        (err, res) => {
            if (err) {
                console.error("error: ", err);
                result(err, null);
                return;
            }

            if (res.length) {
                console.info("found video: ", res);
                result(null, res);
                return;
            }

            // not found Video with the id
            result({ kind: "not_found" }, null);
        }
    );
};

Video.findBySubCategory = (sous_categories_id, result) => {
    sql.query(
        `SELECT * FROM sous_categories INNER JOIN videos on sous_categories.id = videos.sous_categories_id WHERE sous_categories_id = ${sous_categories_id}`,
        (err, res) => {
            if (err) {
                console.error("error: ", err);
                result(err, null);
                return;
            }

            if (res.length) {
                console.info("found video: ", res);
                result(null, res);
                return;
            }

            // not found Video with the id
            result({ kind: "not_found" }, null);
        }
    );
};

Video.getAll = (result) => {
    sql.query("SELECT * FROM videos", (err, res) => {
        if (err) {
            console.error("error: ", err);
            result(null, err);
            return;
        }

        console.info("videos: ", res);
        result(null, res);
    });
};

Video.remove = (id, result) => {
    sql.query("DELETE FROM videos WHERE id = ?", id, (err, res) => {
        if (err) {
            console.error("error: ", err);
            result(null, err);
            return;
        }

        if (res.affectedRows == 0) {
            // not found Video with the id
            result({ kind: "not_found" }, null);
            return;
        }

        console.info("deleted video with id: ", id);
        result(null, res);
    });
};

module.exports = Video;
