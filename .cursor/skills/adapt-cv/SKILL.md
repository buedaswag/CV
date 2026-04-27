---
name: adapt-cv
description: Adapts Miguel's Resume.md to a specific job listing and rewrites the outreach message. Use whenever the user pastes a job listing URL or a job description in this repository, even with no other instructions.
---

# Adapt CV to Job Listing

Do the minimal changes to `cv/Resume.md` to adapt it to the job listing (URL or pasted text — fetch the URL if given, ask for the text if the fetch fails). Take inspiration from `cv/CV.md` which is more complete. Write the result to `cv/adapted/cv-miguel-dias-<company>-<position>.md`.

### Build the PDF

The PDF is built automatically after each agent turn by a `stop` hook ([.cursor/hooks/build-pdf.sh](../../hooks/build-pdf.sh), registered in [.cursor/hooks.json](../../hooks.json)) that runs `make`. If the build fails or produces font warnings, the hook surfaces the error back as a follow-up message. You don't need to run `make` yourself.

### File naming

- All lowercase, ASCII only — strip umlauts/diacritics (`ö` → `o`, `ß` → `ss`, `é` → `e`, etc.).
- Words separated by `-`.
- `<company>`: company name, kebab-cased (e.g. `amazon`, `deutsche-bahn`).
- `<position>`: job title from the listing, kebab-cased, punctuation dropped (e.g. `systems-development-engineer`, `senior-devops-engineer`).
- Append `-de` when the CV is written in German (e.g. `cv-miguel-dias-deutsche-bahn-senior-devops-engineer-de.md`).

This unique-per-job naming lets several agents adapt CVs in parallel without clobbering each other.

### Characters to avoid

Do not use `→` (U+2192) or `↔` (U+2194) in the adapted CV — Helvetica has no glyphs for them and pandoc drops them with a warning. Use ASCII alternatives instead:

- `28 → 10 days` becomes `28 -> 10 days` (or `from 28 to 10 days`)
- `monthly → weekly` becomes `monthly -> weekly`
- `Cloud Engineer → Platform Consultant` becomes `Cloud Engineer -> Platform Consultant`
- `CI/CD ↔ Monitoring` becomes `CI/CD <-> Monitoring`

This applies to both English and German output.

Also adapt the message template below to suit the job. Keep it the same length (one achievement sentence). The sentence should concisely touch on the top key responsibilities/requirements in the listing (not just one), and must stay faithful to `CV.md` — do not embellish or imply scope Miguel didn't have.

```
Hi <person of contact>,

The <position title> position looks like it might be a strong fit:

At RELEX, I managed Terraform infrastructure for large enterprise clients and helped multiple teams cut deployment time by 64% (going from monthly to weekly) and eliminate production incidents.

Worth a quick 15min chat?
https://calendly.com/migueldiaseu/

Best,
Miguel
```

## Output language

Write the message in the same language as the input (job description / recruiter message). If that language is German, always provide both a German and an English version.

## German language caveat

Add a short caveat right before "Worth a quick 15min chat?":

- If the listing requires German (e.g. "fließend Deutsch", "German C1/C2", "German native"):
  ```
  This role looks really interesting, though my German isn't yet at the level required — if you have other openings without that requirement, I'd love to hear about them too.
  ```
- Else if the input is in German but no German requirement is stated, use a lighter heads-up instead:
  ```
  Just a heads-up: I'm fluent in English but still early in learning German.
  ```

Skip the caveat entirely when German is only a "nice to have" / "plus", or when the input is in English with no language requirement.

## Rate

My hourly rate starts at 80 euros/h

## Location
