// app/javascript/modules/profiles_controller.js
document.addEventListener("DOMContentLoaded", function() {
  const profileImage = document.getElementById("profileImage");
  if (profileImage) {
    profileImage.addEventListener("click", function() {
      document.getElementById("imageUploadInput").click();
    });
    document.getElementById("imageUploadInput").addEventListener("change", function() {
      document.getElementById("imageUploadForm").submit();
    });
  }
});
//# sourceMappingURL=/assets/modules/profiles_controller.js.map
