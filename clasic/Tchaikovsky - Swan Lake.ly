\version "2.18.2"

\header {
  title = "Swap Lake"
  composer = "P. I. Tchaikovsky"
  arranger = "Kaito Mateu"
}

upper = \relative c' {
  \clef treble
  \key f \major
  \time 4/4
  \tempo "Andante"

  % 1
  \relative c'' { a2\mp } d8 e f g 
  a4. f8 a4. f8
  a4. \relative c' { d8 } f d bes \relative c' { f }
  d2~ d8 \relative c'' { g f e }
  \relative c'' { a2 } d8 e f g 
  % 6
  a4. f8 a4. f8
  a4. \relative c' { bes8 } f d bes \relative c' { f }
  d2. \bar "|." d4
  e f g a8 bes
  \relative c'' { c4. bes8 a4  bes8 c8 
  % 11
    d4. c8 bes4 c8 d 
    e4. d8 a } f e d 
  e4 f g a8 bes
  c4. bes8 a4 b8 c
  d4. c8 bes4 c8 d
  % 16
  ees4. bes8 g4 bes8 ees
  e4. b8 e2 \bar "||"
}

lower = \relative c' {
  \clef bass
  \key f \major
  \time 4/4

  % 1
  < a f d >2 r2
  r4 < a f d > r < a f d > 
  r < f d > aes g
  d \relative c' { < a f > < a f > r
    < a f d >2 r2
  % 6
    r4 < a f d > r < a f d > 
    r < f d > aes g
    d \relative { < a f > < a f > \bar "|." r
      c2 bes
      a1
  % 11
      < bes g >
      < b gis >2 < cis a >2
      c bes
      a1
      < bes g >
  % 16
      < bes e, >
      < b gis e >2 < c a > \bar "||"
    }
  }
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano    "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
    >>
  \layout { }
  \midi { }
}

