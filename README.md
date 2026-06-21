# grove-registry

Hosted grammar registry for [grove](https://github.com/Entelligentsia/grove) —
structural code intelligence for coding agents.

Each `<language>/` holds the artifacts grove serves, content-addressed and
catalogued in `index.json`:

- `grammar.wasm` — the tree-sitter parser, native `dylink.0` module
- `tags.scm` — the definition/reference query (empty if the grammar ships none)
- `manifest.json` — name, version, file extensions, **provenance** (`source.repo`
  / `source.rev`), and grove's node-kind `profile`

Artifacts are ingested from official tree-sitter releases (`grove ingest`);
grove serves the bytes and attributes the source. Install into the local cache
with `grove fetch`.

Served via jsDelivr's GitHub CDN:
`https://cdn.jsdelivr.net/gh/Entelligentsia/grove-registry@main`
