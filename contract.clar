;; poll-of-day -- daily polls with 3 options each
;; Clarity 4

(define-data-var total-votes uint u0)
(define-map tally { day: uint, option: uint } uint)
(define-map user-vote { day: uint, user: principal } uint)

(define-public (vote (day uint) (option uint))
  (begin
    (asserts! (and (>= option u1) (<= option u3)) (err u100))
    (let ((cur (default-to u0 (map-get? tally { day: day, option: option })))
          (new-tally (+ cur u1)))
      (map-set tally { day: day, option: option } new-tally)
      (map-set user-vote { day: day, user: tx-sender } option)
      (var-set total-votes (+ (var-get total-votes) u1))
      (print { event: "vote", day: day, option: option, user: tx-sender })
      (ok new-tally))))

(define-read-only (get-tally (day uint) (option uint))
  (default-to u0 (map-get? tally { day: day, option: option })))

(define-read-only (get-user-vote (day uint) (user principal))
  (map-get? user-vote { day: day, user: user }))

(define-read-only (total)
  (var-get total-votes))
