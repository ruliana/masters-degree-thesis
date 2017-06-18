#lang racket
(require plot)

(plot (list (function (λ (x) (expt x -2)) #:label "ɣ = 2" #:style 'long-dash)
            (function (λ (x) (expt x -3)) #:label "ɣ = 3" #:style 'dot))
      #:x-min 1
      #:x-max 10
      #:x-label "k"
      #:y-label "p(k)")

(parameterize ([plot-x-transform  log-transform]
               [plot-x-ticks      (log-ticks)]
               [plot-y-transform  log-transform]
               [plot-y-ticks      (log-ticks)])
  (plot (list (function (λ (x) (expt x -2)) #:label "ɣ = 2" #:style 'long-dash)
              (function (λ (x) (expt x -3)) #:label "ɣ = 3" #:style 'dot))
        #:x-min 1
        #:x-max 10
        #:x-label "k"
        #:y-label "p(k)"))
