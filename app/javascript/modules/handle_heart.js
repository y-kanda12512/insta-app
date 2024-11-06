import axios from "axios";
import $ from "jquery";

// CSRFトークンを追加
document.addEventListener("DOMContentLoaded", () => {
  const token = document.querySelector('meta[name="csrf-token"]')?.getAttribute("content");
  axios.defaults.headers.common["X-CSRF-Token"] = token;
});

const handleHeartDisplay = (postId, hasLiked) => {
  if (hasLiked) {
    $(`.active-heart[data-post-id="${postId}"]`).removeClass("hidden");
    $(`.inactive-heart[data-post-id="${postId}"]`).addClass("hidden");
  } else {
    $(`.inactive-heart[data-post-id="${postId}"]`).removeClass("hidden");
    $(`.active-heart[data-post-id="${postId}"]`).addClass("hidden");
  }
};

document.addEventListener("turbo:load", () => {
  $(".post-show").each(function () {
    const postId = $(this).data("postId");

    axios.get(`/posts/${postId}/like`).then((response) => {
      const hasLiked = response.data.hasLiked;
      handleHeartDisplay(postId, hasLiked);
    });
  });
});
