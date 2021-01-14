import { Controller } from "stimulus";
import StimulusReflex from "stimulus_reflex";

export default class extends Controller {
  static targets = ["button"];
  connect() {
    StimulusReflex.register(this);
  }

  addButton() {
    const button = this.buttonTarget;
    button.style.display = "block";
  }
  removeButton() {
    const button = this.buttonTarget;
    button.style.display = "none";
  }
}
