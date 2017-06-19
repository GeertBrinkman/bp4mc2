@echo off
echo Creating concatenated file O...
powershell -Command "(gc 'Concepten Tax local.ttl') -replace 'http://localhost:8080', 'http://pdok-ld-gck.so.kadaster.nl' -replace '/catalogus/tax(|/)$', '/(|/)$' -replace '/catalogus/tax', '' -replace '/catalogus', '' | Out-File -encoding UTF8 'Concepten Tax O.ttl'"
echo Creating concatenated file T...
powershell -Command "(gc 'Concepten Tax local.ttl') -replace 'http://localhost:8080', 'http://pdok-ld-gck.in.kadaster.nl' -replace '/catalogus/tax(|/)$', '/(|/)$' -replace '/catalogus/tax', '' -replace '/catalogus', '' | Out-File -encoding UTF8 'Concepten Tax T.ttl'"
echo Creating concatenated file A...
powershell -Command "(gc 'Concepten Tax local.ttl') -replace 'http://localhost:8080', 'http://pdok-ld-gck.fto.kadaster.nl' -replace '/catalogus/tax(|/)$', '/(|/)$' -replace '/catalogus/tax', '' -replace '/catalogus', '' | Out-File -encoding UTF8 'Concepten Tax A.ttl'"
echo Creating concatenated file P...
powershell -Command "(gc 'Concepten Tax local.ttl') -replace 'http://localhost:8080', 'http://pdok-ld-gck.cs.kadaster.nl' -replace '/catalogus/tax(|/)$', '/(|/)$' -replace '/catalogus/tax', '' -replace '/catalogus', '' | Out-File -encoding UTF8 'Concepten Tax P.ttl'"
echo Whoohoo! All done!
pause