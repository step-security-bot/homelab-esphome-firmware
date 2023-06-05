# Homelab: ESPHome - Firmware

[![Build status](https://img.shields.io/github/actions/workflow/status/muhlba91/homelab-esphome-firmware/build.yml?style=for-the-badge)](https://github.com/muhlba91/homelab-esphome-firmware/actions/workflows/build.yml)
[![License](https://img.shields.io/github/license/muhlba91/homelab-esphome-firmware?style=for-the-badge)](LICENSE.md)

This repository contains the firmware configuration and build for [ESPHome](http://esphome.io) devices.

---

## Configurations

### Template

The template is stored in a file `template.yml` in the corresponding directory, and needs to be copied to the correct configration file.

### Secrets

Secrets are stored in a file `secrets.yaml` in the corresponding directory, and encrypted using [sops](https://github.com/mozilla/sops).

### Layout

- [`config/shelly/plug`](config/shelly/plug/): Shelly plugs

---

## Continuous Integration and Automations

- [GitHub Actions](https://docs.github.com/en/actions) are verifying all configurations.
- [Renovate Bot](https://github.com/renovatebot/renovate) is updating the GitHub Actions.
