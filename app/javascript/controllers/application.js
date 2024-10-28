import { Application } from "@hotwired/stimulus";
import ProfilesController from "./profiles_controller";

const application = Application.start();

// Configure Stimulus development experience
application.debug = false;
window.Stimulus = application;

application.register("profiles", ProfilesController);

export { application };
