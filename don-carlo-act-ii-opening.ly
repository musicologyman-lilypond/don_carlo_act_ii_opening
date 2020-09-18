\version "2.20.0"

\header {
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
  short-indent = 0.375 \in
  left-margin = 0.5 \in
  right-margin = 0.5 \in
  ragged-last = ##t
  ragged-last-bottom = ##f
  system-separator-markup = \slashSeparator
}

#(set-global-staff-size 16)

globalTempoMarking = {
  \tempo "Andante sostenuto assai" 4 = 72
}

hornGlobal = {
  \clef bass
  \key a \minor
  \time 4/4
}

lineBreaks = \new Voice {
  s1 * 6 \break
  s1 * 7 \break
  s1 * 7 \pageBreak
}

hornI = \relative e' {
  \globalTempoMarking
  \hornGlobal
  \once \override Hairpin.to-barline = ##f
  \once \override Hairpin.shorten-pair = #'(0 . 1)
  e2. \mf \< (g8. c16
  b2) \! e-> \f
  ( c2 a4.. c16
  b2 ~ \> b4 \! ) r4 |
  
  e,2. \mf \< ( g8. c16 |
  \once \override DynamicTextSpanner.dash-period = #-1
  b4 \cresc ) 
  e (g e |
  c4.. a16 fis4 c' |
  b2 ~ \> b4 \! ) r |
  \clef treble b2 \p \< ( cis4 dis |
  e2 ) g4.. -> \f (fis16) |
  \once \override Hairpin.shorten-pair = #'(0 . 2)
  fis2 ~ \> fis8 r8 fis4 \p
  (e-. dis-. \> d-. d-. 
  c4 \ppp ~ c8 ) r8 c4 \p \< ( d 
  e g ) g4..-> \f g16 |
  g2-> r4 
    \once \override Hairpin.shorten-pair = #'(0 . 2)
    dis \mf \> 
  (e2) r4 dis4 \pp 
  (e2) r |
  \clef bass
  e,4 \f (g8. c16 b4 e) |
  g4 \> (fis8 f e dis d cis 
  c!4 \pp a fis c'
  b2) 
}

hornII = \relative e' {
    \hornGlobal
    \once \override Hairpin.to-barline = ##f
    \once \override Hairpin.shorten-pair = #'(0 . 1)
    g2. \mf \< ( bes8. es16 
    d2) \! g-> \f 
    (es c4.. es16 
    d2 ~ \> d4 \! ) r4 |
    g,2. \mf \< (bes8. es16 
    \once \override DynamicTextSpanner.dash-period = #-1
    d4  \cresc ) g (bes g
    es4.. c16 a4 es' |
    d2 ~ \> d4 \! ) r |
    \clef treble r2 r4 es4 \p \< 
    (d2) e4..-> \f e16 |
    \once \override Hairpin.shorten-pair = #'(0 . 2)
    d2 ~ \> (d8) r es!4 \p
    (d4) c2-> \> (b4 
    c4 ~ \ppp c8) r es2 \p \< |
    es2 d4-> \f (c8. d16) |
    es2 -> r4  
      \once \override Hairpin.shorten-pair = #'(0 . 2)
      c4 \mf \> 
    (bes2) r4 c \pp 
    (bes2) r |
    \clef bass
    g4 \f (bes8. es16 d4 g) |
    bes4 \> (a8 aes! g! fis f e!
    es!4 \pp c a es' |
    d2)
    
}

hornIII = \relative d' {
  \hornGlobal
  \once \override Hairpin.to-barline = ##f
  \once \override Hairpin.shorten-pair = #'(0 . 1)
  d2. \mf \< ( f8. bes16 
  a2) \! d-> \f
  (bes2 g4.. bes16
  a2 ~ \> a4 \! ) r4 |
  d,2. \mf \< ( f8. bes16 
  \once \override DynamicTextSpanner.dash-period = #-1
   a4 \cresc ) d (f d 
   bes4.. g16 e4 bes' |
   a2 \> ~ a4) \! r |
   g2 \p \< g4 g 
   f2 \clef treble d'4..-> \f d16 |
   \once \override Hairpin.shorten-pair = #'(0 . 2)
   cis2 ~ \> cis8 r8 cis4 \p 
   ( d-. bes-. \> a-. a-. 
   g4 ~ \ppp g8 ) r g4 \p \< (ges
   f d') es4..-> \f es16 |
   d2 -> r4   
      \once \override Hairpin.shorten-pair = #'(0 . 2)
      bes4 \mf \>
    (a2) r4 \! bes \pp 
    (a2) r |
    \clef bass
    d,4 \f (f8. bes16 a4 d) |
    f \> (e8 es d cis c b! |
    bes!4 \pp g e bes' |
    a2 )
}

hornIV = \relative a' {
  \hornGlobal
  \once \override Hairpin.to-barline = ##f
  \once \override Hairpin.shorten-pair = #'(0 . 1)
  a2. \mf \< (c8. f16
  e2) \! a2-> \f 
  (f2 d4.. f16 
  e2 ~ \> e4 \! ) r |
  a,2. \mf \< (c8. f16
  \once \override DynamicTextSpanner.dash-period = #-1
  e4) \cresc a (c a
  f4.. d16 b4 f' 
  e2 \> ~ e4) \! r
  gis,2 \p \< (a4 b 
  c2 ) dis4..-> \f dis16 |
  \once \override Hairpin.shorten-pair = #'(0 . 2)
  e2 \> ~ e8 r d4 \p
  ( c-. b-. \> a-. a-. 
  bes \ppp ~ bes8) r bes2 \< 
  c c,4..-> \f c16 |
  f2-> r |
  R1 * 2 |
  %\clef bass 
  a4 \f (c8. f16 e4 a) |
  %\clef treble
  c4 \> (b8 bes a gis g fis 
  f4 \pp d b f' 
  e2 )
}

\score {
  <<
    \new GrandStaff <<
      \new Staff \with
      {
        \remove "Key_engraver"
        instrumentName = "Corno I."
        shortInstrumentName = "Cor. I."
      } \transpose c' d \hornI
      \new Staff \with
      {
        \remove "Key_engraver"
        instrumentName = "Corno II."
        shortInstrumentName = "Cor. II."
      } \transpose c' b, \hornII
      \new Staff \with
      {
        \remove "Key_engraver"
        instrumentName = "Corno III."
        shortInstrumentName = "Cor. III."
      } \transpose c' e \hornIII
      \new Staff \with
      {
        \remove "Key_engraver"
        instrumentName = "Corno IV."
        shortInstrumentName = "Cor. IV."
      } \transpose c' a, << 
        \hornIV
        \lineBreaks
      >>
    >>
  >>
  \layout { }
  \midi { \tempo 4 = 72 }
}
