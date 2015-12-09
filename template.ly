\version "2.18.2"

\header {
  title = "Template"
  subtitle = " "
  subsubtitle = " "
  composer = "Author"
  arranger = "Arranged by Kaito Mateu"
}

upper = \relative c'' {
  \clef treble
  \key e \major
  \time 4/4
  \tempo "Andante"

  b2 cis4 e8 bes

  \bar "|."
}

lower = \relative c {
  \clef bass
  \key e \major
  \time 4/4
  \tempo "Andante"

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

\paper {
  top-magin = 3\cm
}
