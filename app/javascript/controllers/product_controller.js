import { Controller } from "stimulus";
import StimulusReflex from "stimulus_reflex";
import CableReady from "cable_ready";

export default class extends Controller {
  static targets = ["button"];
  connect() {
    StimulusReflex.register(this);
    this.channel = this.application.consumer.subscriptions.create(
      "ProductsChannel",
      {
        received(data) {
          // Called when there's incoming data on the websocket for this channel
          if (data.cableReady) CableReady.perform(data.operations);
        },
      }
    );
  }

  addButton() {
    const button = this.buttonTarget;
    button.style.display = "block";
  }
  removeButton() {
    const button = this.buttonTarget;
    button.style.display = "none";
  }
  disconnect() {
    this.channel.unsubscribe();
  }
}
