const { defineConfig } = require("@playwright/test");

module.exports = defineConfig({
  testDir: "./playwright-tests",
  use: {
    baseURL: process.env.BASE_URL || "http://localhost:3000",
    headless: process.env.CI ? true : false,
  },
});
