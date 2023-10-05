let videoIndex = 0;
const videoPlayer = document.getElementById("videoPlayer");

onInit();

const videos = [
  "videos/compressed/Alien.mp4",
  "videos/compressed/Monkey.mp4",
  "videos/compressed/Cat1.mp4",
  "videos/compressed/Dog1.mp4",
  "videos/compressed/Cow1.mp4",
  "videos/compressed/Frog1.mp4",
  "videos/compressed/Gorilla.mp4",
];

document.addEventListener("DOMContentLoaded", () => {
  preloadVideos(videos);
  preloadVideos(pixelVideos);
});

function preloadVideos(urls) {
  urls.forEach((url) => {
    const videoElement = document.createElement("video");
    videoElement.preload = "auto"; // Set the preload attribute
    videoElement.src = url; // Set the source

    // This is optional: load video metadata (e.g. duration)
    videoElement.addEventListener("loadedmetadata", () => {
      console.log(`Metadata for ${url} loaded!`);
    });

    // Note: You don't need to append the videoElement to the document
    // It will load in the background
  });
}

let currentVideos = videos;

videoPlayer.src = currentVideos[videoIndex];

videoPlayer.addEventListener("ended", () => {
  window.next();
});

window.next = function () {
  videoIndex++;
  if (videoIndex >= currentVideos.length) {
    videoIndex = 0; // Loop back to the first video
  }
  onChange(videoIndex);
  videoPlayer.src = currentVideos[videoIndex];
  videoPlayer.play();
};

window.previous = function () {
  videoIndex--;
  if (videoIndex < 0) {
    videoIndex = currentVideos.length - 1; // Loop back to the last video
  }
  onChange(videoIndex);
  videoPlayer.src = currentVideos[videoIndex];
  videoPlayer.play();
};

window.playVideo = function (playing) {
  if (playing) {
    videoPlayer.play();
  } else {
    videoPlayer.pause();
  }
};

window.syncValue = function (value) {
  videoIndex = value;
  videoPlayer.src = currentVideos[videoIndex];
  videoPlayer.play();
};

const leftBtn = document.getElementById("left-btn");
const rightBtn = document.getElementById("right-btn");
const topRight = document.getElementById("top-right-btn");

document.addEventListener("keydown", function (event) {
  switch (event.key) {
    case "ArrowLeft":
      window.previous();
      break;
    case "ArrowRight":
      window.next();
      break;
  }
});

leftBtn.addEventListener("click", window.previous);
rightBtn.addEventListener("click", window.next);
topRight.addEventListener("click", routeSignal);

function routeSignal() {
  getRoute("about");
}

function nextBtn() {
  buttonPress("next");
}

function previousBtn() {
  buttonPress("prev");
}
