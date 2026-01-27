;; title: crowdfunding
;; version:
;; summary:
;; description:

;; traits
;;

;; token definitions
;;

;; constants
(define-constant err-not-found (err u404))
(define-constant err-already-exists (err u409))
(define-constant err-forbidden (err u403))
(define-constant err-goal-not-met (err u400))
(define-constant err-deadline-not-passed (err u401))
(define-constant err-already-claimed (err u402))
(define-constant err-deadline-passed (err u405))

;; data vars
(define-data-var next-campaign-id uint u1)

;; data maps
(define-map campaigns
    uint 
    {
        owner: principal,
        title: (string-ascii 50),
        goal: uint,
        deadline: uint,
        pledged: uint,
        claimed: bool
    }
)

(define-map pledges
    { campaign-id: uint, backer: principal }
    { amount: uint }
)

;; public functions
;;

;; read only functions
;;

;; private functions
;;

