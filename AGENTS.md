# AGENTS.md

Guidance for AI assistants (and humans) working on this blog. Expand this file as we learn what helps.

## Project

- Personal blog: https://rich.liebling.us/
- Hugo site; source in this repo; deploy via Netlify
- Content lives mainly under `content/posts/`
- Static assets (including diagrams) under `static/images/`
- Version control: `jj` colocated with git

## Writing in Rich's voice

Drafts should sound like the existing posts (see `content/posts/`), not like generic AI prose.

### Do

- Write as a thoughtful practitioner talking to peers: clear, direct, a little conversational
- Prefer first person ("I", "my take") when stating a view
- Lead with the idea or story, then name the framework
- Use concrete engineering/org examples; keep vignettes short
- Cross-link related posts when it helps (`relref` or site paths as elsewhere in the repo)
- Admit nuance ("there's no simple answer", "sometimes the boxes *are* wrong")
- Match frontmatter style of existing posts (`title`, `date`, `draft`, `authors`, `tags`)

### Don't

- **Never use an em dash (—) when writing in this voice.** Use a period, comma, colon, parentheses, or a plain hyphen (-) instead.
- Avoid corporate filler, slogans, and "here's the thing" throat-clearing
- Avoid stacked parallel bullets that read like a slide deck unless the items are truly parallel
- Don't invent a polished "thought leadership" tone that isn't in the older posts
- Don't over-explain jargon the audience already knows; do define metaphors you introduce
- Avoid cute or strained imagery and coined punchlines ("limps", "mux speeches", "alignment theater"). Prefer plain wording.
- Avoid abstract shorthand for the mechanism when a concrete phrase works better (e.g. prefer "work split in a way that…" over leaning on "a cut" once the metaphor is already established)

### Prefer concrete over clever

- Name the real thing: teams, dependencies, metrics, bottlenecks. Framework labels (demux/mux, cut, seams) support the argument; they should not replace the concrete description.
- When a metaphor is already introduced, do not keep restating it with new slang. Say what happened in ordinary engineering language.
- Prefer "progress stalls", "nobody owned aligning those streams", "ignored dependencies on Platform / Analytics / …" over vivid but fuzzy pictures.

### Structure while drafting

- Do not add subsections unless each one earns distinct content. If the intro and a subsection repeat, collapse into one tighter block.
- Drop examples that fight the point (wrong metaphor, wrong vignette) rather than bending the section around them.
- After a round of edits, reread for repeated ideas and for metaphor-heavy lines that sound like AI trying to be memorable.

### Em dash check

Before finishing a draft, search for `—` and rewrite those sentences. En dashes in numeric ranges are fine if they appear naturally; em dashes in prose are not.

## Diagrams (Excalidraw)

Use an Excalidraw diagram when a picture makes the argument easier to grasp than prose alone (flows, splits/rejoins, before/after structure, org metaphors). Skip diagrams that only decorate.

### Conventions

- Prefer the installed `excalidraw-skill` / `npx -y mcp-excalidraw-server` workflow on the agent computer
- Export PNG to `static/images/<slug>.png` and reference it as `/images/<slug>.png`
- Keep the editable `.excalidraw` next to the PNG under `static/images/` when we may revise the figure
- Keep labels short; favor solid fills and clear color roles (e.g. demux vs mux)
- After drawing: screenshot, check truncation/overlap, then embed in the post near the concept it illustrates

### In markdown

```markdown
![Short alt text](/images/example.png)
```

## Drafts and publishing

- New posts start as `draft: true` until Rich is ready to publish
- Prefer editing the markdown in this repo over long chat-only drafts once a file exists
- Do not merge or push production without an explicit ask

## Open items to grow this file

- Preferred tags and taxonomy habits
- Checklist before publish (links, images, Hugo build)
- Analytics / SEO notes if we care later
- House style for titles and headings
