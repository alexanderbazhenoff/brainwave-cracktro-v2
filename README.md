# brainwave cracktro v2

ZX-Spectrum crack releases intro by alx^bw.

## Youtube

[![xeno crackro by alx youtube](https://img.youtube.com/vi/gigJQwQKBt0/0.jpg)](https://www.youtube.com/watch?v=gigJQwQKBt0 "xeno crackro by alx youtube")

[![nether world crackro by alx youtube](https://img.youtube.com/vi/eH3-0tv6IoI/0.jpg)](https://www.youtube.com/watch?v=eH3-0tv6IoI "nether world crackro by alx youtube")

## TLDR

These sources are for Zilog Z80 Assembler in Alasm format. You should import and compile this source in 
[Alasm](https://zxart.ee/rus/soft/tool/music/pro-tracker-alasm/qid:365628/) ZX-Spectrum assembler
[(I have used v5.08)](https://speccy.info/ALASM) to compile. Or convert this source manually for 
[SjASMPlus](http://speccy.info/SjASMPlus) which is cross-platform.

## Technical info

This crack intro uses a non-standard timing mode synchronized for [Pentagon-128K 2+](https://speccy.info/Pentagon), a
russian ZX-Spectrum clone. Actually most of a text pages will work on all ZX-Spectrum clone, but less screen
synchronization (some parts of randomously moving sprites with text could miss because of outrun the ray). Some text
pages could be slowed down on ZX-Spectrum clones with less than 71680 CPU tacts per frame, especially machines with slow
memory. Since Pentagon-128K 2+ is a Russian and Ukrainian demo-scene standard I don't care, sorry. At least you can
watch YouTube or emulator.

Here is a few versions of cracktro which differs basically in text (v2.37 and v2.36) with the same binary includes, also
v2.26 with another text, colour scheme and logo.

## Story

In yearly 00s I decided to make another fun cracktro, but as usually tired of waiting graphics logo. I started skipping
classes at university step by step coding this cracktro. I can programming indeed without stupid pascal lessons. But I
still waited for a group logo.

Some month later I have seen a crack release of *'Bubbler'* game by `Slider^BIS` which was shorter on 8 TR-DOS sectors
than mine. But one moment: some people could know, old days size of programs and the whole prestige on the scene was
important. You can't do the shhh for your team name. So I started to optimize the code, `C-jeff^BW` (who is `Seajeff`
nowadays) cutted some minor patterns (you'll never hear them, but this is the additional size) from the awesome
conversion by `Megus^BW`, which was originally comes from *'Fat Cat Wants Tasty Fish'* by `Manwe^Sands`. Then I have
optimized a music player with `Ivan Roshin`'s optimizer, which actually explored some code coverage and remove unused
bytes for better packing. Then I used a latest on those days packing technique *'RIP'* (Real Information Packer) by
`Roman Petrov`. The size of the packed binary of crack intro becomes **7424 bytes** or so (29 TR-DOS sectors). Pure
8-bit demo-scene traditions are supposed do your work technically funny, so I putted a borderlines and a noise in my
loader and depacker. After that I didn't really worry is it more or lass than in Slider's release, it was good enough,
it has music and action. But getting know that this buddy is still making crack releases for oldschool machine inspired
me to do a few dozen more releases. Thank you guys for that good old days.

## Credits

- [alx/brainwave](https://zxart.ee/rus/avtory/a/alx/qid:602008/) - crack intro code, font graphics.
- [megus/brainwave](https://zxart.ee/rus/avtory/m/megus/qid:602024/) - crack intro music 
(['Fat Cat Wants Tasty Fish'](https://www.youtube.com/watch?v=1J2B4emUtis) 
remix, which is originally written by [manwe/sands](https://demozoo.org/sceners/10117/)).
- [prof/4d](https://zxart.ee/rus/avtory/p/prof4d/qid:602037/) or 
[exocet/just for fun](https://zxart.ee/rus/avtory/e/exocet/qid:602036/) - crack intro logo graphics (different versions 
of crack intros contains different logos).
- [c-jeff/brainwave](https://zxart.ee/rus/avtory/c/c-jeff/qid:602039/) (nowadays 
[seajeff](https://c-jeff.bandcamp.com/)) - help on music module optimizing: removed inaudible ornaments and elements to 
extreme size decreasing.
- Also used ZX-Spectrum Pro-tracker player binary optimizer, written by 
[Ivan Roshin](https://zxart.ee/rus/avtory/i/ivan-roschin1/qid:602033/).

## Related

- [**xeno crack intro on YouTube**](https://www.youtube.com/watch?v=gigJQwQKBt0)
- [**nether world crack intro on YouTube**](https://www.youtube.com/watch?v=eH3-0tv6IoI)
- [**xeno crack intro on pouet.net**](https://www.pouet.net/prod.php?which=89860)
- [**nether world intro on pouet.net**](https://www.pouet.net/prod.php?which=89861)

## About

- [brainwave at speccywiki](http://speccy.info/Brainwave)
- [brainwave at wikipedia](https://ru.wikipedia.org/wiki/Brainwave_team)
- [brainwave at pouet.net](https://www.pouet.net/groups.php?which=715)
- [zxart.ee](https://zxart.ee/)
- [cracktro v1 sources](https://github.com/alexanderbazhenoff/brainwave-cracktro-v1)
