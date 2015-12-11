\version "2.18.2"

\header {
  title = "Russian Song"
  subtitle = " "
  subsubtitle = " "
  composer = "L. V. Beethoven"
  arranger = "Arranged by Kaito Mateu"
}

upper = \relative c' {
  \clef treble
  \key g \major
  \time 2/4
  \tempo "Allegro assai"

  \relative c'' {
    % 1
    a8\f d d d
    b d d d
    e c a c
    c b b4 \break
    b8\f d d d
    % 6
    b d d d
    e c a fis
    a g g4 \bar ":..:" \break
    g'\f g8. fis16
    fis8. e16 e4
    % 11
    d8 e d c
    c b b4 \break
    g'\p g8. fes16
    fis8 e e4
    d8 d \< e fis\!
    % 16
    a8.\f g16 g4 \bar ":|."
  }
}

lower = \relative c' {
  \clef bass
  \key g \major
  \time 2/4
  \tempo "Allegro assai"

  \relative c' {
    % 1
    g4 fis
    g b,
    c d
    g, d' \break
    g fis
    % 6
    g b,
    c d
    g,2 \bar ":..:" \break
    b4 g
    c a
    % 11
    d fis
    g d \break
    b g
    c a
    d d,
    % 16
    g2 \bar ":|."
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

\paper {
  top-margin = 3\cm
}
