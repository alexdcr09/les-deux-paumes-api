const Video = require("../models/video.model.js");

// Create and Save a new Video
exports.create = (req, res) => {
    // Validate request
    if (!req.body) {
        res.status(400).send({
        message: "Content can not be empty!"
        });
    }

    // Create a Video
    const video = new Video({
        texte: req.body.texte,
        title: req.body.title,
        src: req.body.src,
        miniature: req.body.miniature,
        categories_id: req.body.categories_id
    });

    // Save Video in the database
    Video.create(video, (err, data) => {
        if (err)
        res.status(500).send({
            message:
            err.message || "Some error occurred while creating the Video."
        });
        else res.send(data);
    });
};

// Retrieve all Videos from the database.
exports.findAll = (req, res) => {
    Video.getAll((err, data) => {
        if (err)
          res.status(500).send({
            message:
              err.message || "Some error occurred while retrieving videos."
          });
        else res.send(data);
      });
};

// Retrieve Videos in catégories from the database.
exports.findByCategory = (req, res) => {
  Video.findByCategory(req.params.categories_id, (err, data) => {
    if (err) {
      if (err.kind === "not_found") {
        res.status(404).send({
          message: `Not found Video with id ${req.params.categories_id}.`
        });
      } else {
        res.status(500).send({
          message: "Error retrieving Video with id " + req.params.categories_id
        });
      }
    } else res.send(data);
  });
};

// Retrieve Videos in sub catégories from the database.
exports.findBySubCategory = (req, res) => {
  Video.findBySubCategory(req.params.sous_categories_id, (err, data) => {
    if (err) {
      if (err.kind === "not_found") {
        res.status(404).send({
          message: `Not found Video with id ${req.params.sous_categories_id}.`
        });
      } else {
        res.status(500).send({
          message: "Error retrieving Video with id " + req.params.sous_categories_id
        });
      }
    } else res.send(data);
  });
};

// Find a single Video with a VideoId
exports.findOne = (req, res) => {
    Video.findById(req.params.videoId, (err, data) => {
        if (err) {
          if (err.kind === "not_found") {
            res.status(404).send({
              message: `Not found Video with id ${req.params.videoId}.`
            });
          } else {
            res.status(500).send({
              message: "Error retrieving Video with id " + req.params.videoId
            });
          }
        } else res.send(data);
      });
};

// Delete a Video with the specified VideoId in the request
exports.delete = (req, res) => {
    Video.remove(req.params.videoId, (err, data) => {
        if (err) {
          if (err.kind === "not_found") {
            res.status(404).send({
              message: `Not found video with id ${req.params.videoId}.`
            });
          } else {
            res.status(500).send({
              message: "Could not delete video with id " + req.params.videoId
            });
          }
        } else res.send({ message: `Video was deleted successfully!` });
      });
};