import { Application } from "@hotwired/stimulus";
import ProfilesController from "./profiles_controller";
import FileController from "./form_controller";

const application = Application.start();

// Configure Stimulus development experience
application.debug = false;
window.Stimulus = application;

application.register("profiles", ProfilesController);
application.register("files", FileController);

export { application };
