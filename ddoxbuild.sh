dub build -b doc-json
dub run ddox -- filter --min-protection=Protected --only-documented docs.json
dub run ddox -- generate-html --file-name-style=lowerUnderscored --std-macros=ddox.ddoc --navigation-type=ModuleTree docs.json docs
rm __dummy.html
rm docs.json
