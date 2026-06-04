# DHP-temp FHIR Implementation Guide

## Purpose
This repository contains the **Digital Health Platform (DHP) FHIR R5 Implementation Guide** for Uzbekistan, authored with **SUSHI/FSH** and published using the **HL7 FHIR IG Publisher**.

## When working in this repo
- Edit source content in `input/` only.
- Avoid changing generated artifacts in `fsh-generated/`, `output/`, or `temp/` unless diagnosing build issues.
- Preserve canonical URLs and ID patterns used across the IG.
- Validation is performed by the IG build process, not by a separate unit-test framework.

## Build / validation commands
- Full build: `./_build.sh` or `./_genonce.sh`
- Offline build: `./_build.sh notx`
- Update publisher: `./_build.sh update`
- Jekyll build: `./_build.sh jekyll`
- Clean generated files: `./_build.sh clean`
- Windows equivalents: use `_build.bat`, `_genonce.bat`, etc.

## Important files and directories
- `sushi-config.yaml` — SUSHI configuration and IG metadata
- `ig.ini` — FHIR IG Publisher settings
- `input/fsh/` — primary FSH definitions for profiles, extensions, valuesets, examples
- `input/manual-fsh/` — manually authored FSH, often large terminology or special cases
- `input/vocabulary/` — pre-rendered terminology artifacts
- `input/pagecontent/` — markdown pages and narrative content
- `fsh-generated/` — generated SUSHI output (do not edit directly)
- `output/` — generated Implementation Guide site and resources
- `input-cache/publisher.jar` — IG Publisher runtime jar

## Key conventions
- Use **lowercase hyphenated identifiers** for resource IDs and naming conventions.
- Follow existing FSH style and structure from nearby files before introducing new patterns.
- Keep term bindings and value set references aligned with the canonicals: `http://dhp.uz` and `https://terminology.dhp.uz`.
- Prefer updating source definitions in `input/` over editing generated content.

## Helpful links
- [README.md](README.md)
- [modelling-guidelines.md](modelling-guidelines.md)
