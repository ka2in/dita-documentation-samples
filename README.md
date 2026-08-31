# DITA/XML Practice Repository

Structured-authoring practice repo, built while working through the
[DITA/XML + CCMS Practical Familiarity roadmap (v2)](./ROADMAP.md).

Unlike a typical throwaway learning repo, the source content here is real
Farowave material — published documentation and analysis pieces — converted
into DITA topics and maps. The goal is a repo that demonstrates working DITA
fluency using content a prospective client could actually recognize, not
placeholder text.

## Source content

| DITA topic | Source | Topic type | Status |
|---|---|---|---|
| `topics/concepts/frankfurter-openapi-audit.dita` | Frankfurter v1 OpenAPI audit (published version, portal.farowave.com) | Concept | Pending conversion |
| `topics/tasks/git-getting-started.dita` | Git Primer for the Impatient (docs.farowave.com/gitinminutes) — install/config/init/clone/add/commit excerpt | Task | Pending conversion |
| `topics/reference/git-commands-quickref.dita` | Git Primer for the Impatient — essential commands, restructured as a lookup table | Reference | Pending conversion |

Note: the Git Primer excerpts are trimmed from the full ~636-line source to
stay within the roadmap's 1–2 page practice scope. Two SVG diagrams in the
original (`gitflow.svg`, `git-rebase.svg`, CC0 1.0 Universal license) are
not yet included — `<image>` references will be added as placeholders if
the source files are supplied later.

An internal Farowave project (a documentation-portal restructuring) was
initially considered as the task-topic source and was intentionally
excluded — it describes proprietary execution methodology that isn't for
public/portfolio sharing.

## Toolchain

- **oXygen XML Editor** — primary authoring tool, 30-day trial in use
- **DitaCraft** (VS Code extension) — secondary authoring/validation view
- **DITA-OT** — command-line publishing (HTML/PDF output)
- Fedora Linux, Git/GitHub (`ka2in`)

## Structure

```
topics/
  concepts/   — conceptual topics (explains what something is / why)
  tasks/      — procedural topics (numbered steps to accomplish something)
  reference/  — reference topics (lookup tables, field definitions, etc.)
maps/         — DITA maps tying topics together into a publishable set
```

## Publishing

Build HTML/PDF locally via DITA-OT:

```bash
dita -i maps/practice.ditamap -f html5 -o out/
```

## Status

Repo scaffolded — Week 0 of the roadmap. Topic conversion begins Week 2.
