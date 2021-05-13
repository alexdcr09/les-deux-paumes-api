module.exports = app => {
    const videos = require("../controllers/video.controller.js");
  
    // Create a new videos
    app.post("/videos", videos.create);
  
    // Retrieve all videos
    app.get("/videos", videos.findAll);
  
    // Retrieve a single videos with videoId
    app.get("/videos/:videoId", videos.findOne);

    // Retrieve a videos with categories_id
    app.get("/videos/categories/:categories_id", videos.findByCategory);
  
     // Retrieve a videos with sous_categories_id
     app.get("/videos/sous_categories/:sous_categories_id", videos.findBySubCategory);
  
    // Delete a videos with videoId
    app.delete("/videos/:videoId", videos.delete);
  
  };