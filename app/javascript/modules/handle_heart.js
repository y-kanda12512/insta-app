// // import axios from "axios";
// // import $ from "jquery";
// // import { csrfToken } from "rails-ujs";

// // axiosにCSRFトークンを設定
// // axios.defaults.headers.common["X-CSRF-Token"] = csrfToken();

// const handleHeartDisplay = (hasLiked) => {
//   if (hasLiked) {
//     $(".active-heart").removeClass("hidden");
//     console.log("hasLiked is true");
//   } else {
//     $(".inactive-heart").removeClass("hidden");
//     console.log("hasLiked is false");
//   }
// };

// document.addEventListener("turbolinks:load", () => {
//   const dataset = $("#post-show").data();
//   const postId = dataset.postId;

//   //   ここでlikesコントローラーのshowメソッドが発動する
//   axios.get(`/posts/${postId}/like`).then((response) => {
//     const hasLiked = response.data.hasLiked;
//     handleHeartDisplay(hasLiked);
//   });
// });
