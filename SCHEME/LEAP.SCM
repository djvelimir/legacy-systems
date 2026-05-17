(define (leap-year? year)
  (if (= (remainder year 400) 0)
      #t
      (if (= (remainder year 100) 0)
          #f
          (= (remainder year 4) 0))))

(define (show-result year)
  (display year)
  (display " ")
  (if (leap-year? year)
      (display "Leap")
      (display "Common"))
  (newline))

(show-result 1996)
(show-result 1900)
(show-result 2000)
(show-result 2025)