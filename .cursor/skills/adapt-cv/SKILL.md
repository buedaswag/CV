---
name: adapt-cv
description: Adapts Miguel's Resume.md to a specific job listing and rewrites the outreach message. Use whenever the user pastes a job listing URL or a job description in this repository, even with no other instructions.
---

# Adapt CV to Job Listing

Do the minimal changes to `Resume.md` to adapt it to the job listing (URL or pasted text — fetch the URL if given, ask for the text if the fetch fails). Take inspiration from `CV.md` which is more complete. Write the result to `resume_adapted.md`.

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

## German language caveat

If the job description or recruiter message is in German, or the listing requires German (e.g. "fließend Deutsch", "German C1/C2", "German native"), add a short caveat right before "Worth a quick 15min chat?", for example:

```
This role looks really interesting, though my German isn't yet at the level required — if you have other openings without that requirement, I'd love to hear about them too.
```

Skip the caveat when German is only a "nice to have" / "plus", or when no language requirement is stated.
