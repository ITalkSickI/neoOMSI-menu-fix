# Contributing to neoOMSI

Thanks for your interest in contributing. neoOMSI optimizes for **correctness, simplicity, and long-term maintainability** over raw merge volume.

## Non-negotiable principles

1. **Clean-room implementation:** Never decompile proprietary OMSI binaries, commit proprietary source code, or import copyrighted assets (textures, meshes, audio, maps, scripts). All code must be an independent, clean-room implementation.
2. **Compatibility first:** If a change affects simulation behavior, verify what OMSI 2.2.032 actually does before altering engine logic. See [Compatibility policy](docs/COMPATIBILITY.md).
3. **No AI slop / Strict code ownership:** AI tools may assist your workflow, but generated code receives **no lower review standard**. Every line submitted must be understood, verified, and defended by the author. Speculative abstractions, unreviewed AI dumps, and vibe-coded refactors will be closed during triage.
4. **Focused PR scope:** Keep diffs tight and focused on a single architectural or behavioral boundary. Never combine bug fixes with unrelated cosmetic refactoring, reformatting, or dependency updates.
5. **Contributor License Agreement:** Every contribution requires acceptance of the [Contributor License Agreement](#contributor-license-agreement-cla) below. PRs without it will not be merged.

## Contributor License Agreement (CLA)

By submitting a contribution (code, documentation, or any other material) to neoOMSI, you agree to the following:

1. **Original work:** You wrote the contribution yourself, or you have the right to submit it under these terms. You do not submit code of third parties, your employer's code (unless authorized in writing), or proprietary OMSI material.
2. **Grant of rights:** You grant the neoOMSI maintainers (the "Project") a perpetual, worldwide, irrevocable, non-exclusive, transferable, sublicensable, royalty-free license to use, reproduce, modify, adapt, publish, distribute, and otherwise exploit your contribution in any form and for any purpose, **including under licenses other than the GNU General Public License** (for example proprietary or closed-source licenses). To the extent the law of your country does not allow such a grant of rights in advance, you grant the Project the broadest rights that are permitted.
3. **Right to relicense:** The Project may change the license of the project, including your contribution, at any time, without asking you again.
4. **You keep your rights:** You retain the copyright in your contribution and may use it elsewhere. Where applicable law allows, you waive claims to be named in individual files; the Project may keep the name "neoOMSI contributors" in copyright notices.
5. **Patents:** You grant the Project and all recipients of the software a perpetual, worldwide, royalty-free patent license for any patent claims of yours that are necessarily infringed by your contribution.
6. **No warranty:** Your contribution is provided "as is", without warranties of any kind.
7. **Acceptance:** By opening a pull request or otherwise submitting a contribution to the Project, you confirm that you have read this agreement and accept it. No further action is required.

Contributions made before this agreement existed remain under the license under which they were submitted (GPL-3.0-or-later).

## Quick contribution checklist

1. **Build & test locally:**
   - Install prerequisites and use the fast local build scripts described in [Building from source](docs/BUILDING.md).
   - Ensure the workspace checks pass: `cargo nextest run --workspace`.
2. **Branch from `main`:**
   - Use short-lived, single-purpose branches (`feat/`, `fix/`, `parity/`, `refactor/`, `perf/`, `docs/`, `chore/`).
   - Details: [Development workflow](docs/DEVELOPMENT.md).
3. **Read the CLA:**
   - Submitting a pull request means you accept the [CLA](#contributor-license-agreement-cla).
4. **Add a changelog fragment:**
   - User-visible PRs must include a small fragment under `.changes/` (e.g. `.changes/<pr-number>.<category>.md`).
   - Details: [.changes/README.md](.changes/README.md).
5. **Open your Pull Request:**
   - Document the _what_, _why_, and how you validated the change.
   - For `parity/` changes, provide reference evidence against OMSI 2.2.032.

## Deep-dive guides

| Topic                      | Document                                       |
| :------------------------- | :--------------------------------------------- |
| **Development & Review**   | [docs/DEVELOPMENT.md](docs/DEVELOPMENT.md)     |
| **OMSI 2 Compatibility**   | [docs/COMPATIBILITY.md](docs/COMPATIBILITY.md) |
| **Building & Testing**     | [docs/BUILDING.md](docs/BUILDING.md)           |
| **Issue Triage**           | [docs/ISSUE_TRIAGE.md](docs/ISSUE_TRIAGE.md)   |
| **Releasing & Versioning** | [docs/RELEASING.md](docs/RELEASING.md)         |