\version "2.18.2"

\header {
  title = "Template"
  composer = "Author"
}

upper = \relative c'' {
  \clef treble
  \key e \major
  \time 4/4

  b2 cis4 e8 bes

  \bar "|."
}

lower = \relative c {
  \clef bass
  \key e \major
  \time 4/4

  a2 cis4. r8
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

