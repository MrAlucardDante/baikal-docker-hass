import { defineConfig } from "cypress";

export default defineConfig({
  e2e: {
    supportFile: false,
    excludeSpecPattern: "**/*.mailtrap.cy.ts",
  },
});