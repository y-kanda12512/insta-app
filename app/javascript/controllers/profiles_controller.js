import { Controller } from "@hotwired/stimulus";

document.addEventListener("DOMContentLoaded", function () {
  const profileImage = document.getElementById("profileImage");

  if (!profileImage) {
    return;
  }

  if (profileImage) {
    profileImage.addEventListener("click", function () {
      document.getElementById("imageUploadInput").click();
    });

    document.getElementById("imageUploadInput").addEventListener("change", function () {
      document.getElementById("imageUploadForm").submit();
    });
  }
});

export default class extends Controller {
  connect() {
    console.log("Profiles controller connected");
  }
}
