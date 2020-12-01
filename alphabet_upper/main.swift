//
//  main.swift
//  alphabet_upper
//
//  Created by 1 on 18.10.2020.
//

import Foundation

 

func detective(_ someText: String) -> [String] {
    let a0 = ",---, "
    let a1 = "|   | "
    let a2 = "|---| "
    let a3 = "|   | "
        
    let b0 = ",--,  "
    let b1 = "|__/  "
    let b2 = "|   \\ "
    let b3 = "|___/ "
    
    let c0 = ",--¬ "
    let c1 = "|    "
    let c2 = "|    "
    let c3 = "|___ "
    
    let d0 = ",--¬  "
    let d1 = "|   \\ "
    let d2 = "|    |"
    let d3 = "|___/ "
    
    let e0 = ",-¬ "
    let e1 = "|__ "
    let e2 = "|   "
    let e3 = "|__,"
    
    let f0 = ",--¬ "
    let f1 = "|__  "
    let f2 = "|    "
    let f3 = "|    "
    
    let g0 = ",--¬  "
    let g1 = "|  __ "
    let g2 = "|   | "
    let g3 = "|___| "
    
    let h0 = "|   | "
    let h1 = "|___| "
    let h2 = "|   | "
    let h3 = "|   | "
    
    let i0 = "• "
    let i1 = "| "
    let i2 = "| "
    let i3 = "| "
    
    let j0 = " • "
    let j1 = " T "
    let j2 = " | "
    let j3 = "_/ "
    
    let k0 = ", , "
    let k1 = "|/  "
    let k2 = "|\\  "
    let k3 = "| \\ "
    
    let l0 = ",    "
    let l1 = "|    "
    let l2 = "|    "
    let l3 = "|__, "
    
    let m0 = ",   , "
    let m1 = "|\\ /| "
    let m2 = "| V | "
    let m3 = "|   | "
    
    let n0 = ",   , "
    let n1 = "|\\  | "
    let n2 = "| \\ | "
    let n3 = "|  \\| "
    
    let o0 = " __  "
    let o1 = "/  \\ "
    let o2 = "|  | "
    let o3 = "\\__/ "
    
    let p0 = ",--,"
    let p1 = "|__/"
    let p2 = "|   "
    let p3 = "|   "
    
    let q0 = " __  "
    let q1 = "/  \\ "
    let q2 = "|  | "
    let q3 = "\\__\\ "
    
    let r0 = ",__  "
    let r1 = "|__) "
    let r2 = "|  \\ "
    let r3 = "|   \\"
    
    let s0 = ",-¬ "
    let s1 = "\\__ "
    let s2 = "   |"
    let s3 = ",__/"
  
    let t0 = ",---,"
    let t1 = "  |  "
    let t2 = "  |  "
    let t3 = "  |  "
    
    let u0 = ""
    let u1 = ""
    let u2 = ""
    let u3 = ""
    
    let v0 = "     "
    let v1 = "\\   /"
    let v2 = " \\ / "
    let v3 = "  V  "
    
    let w0 = "        "
    let w1 = "\\      /"
    let w2 = " \\    / "
    let w3 = "  \\/\\/  "
    
    let x0 = " \\ / "
    let x1 = "  X  "
    let x2 = " / \\ "
    let x3 = "/   \\"
    
    let y0 = "\\   /"
    let y1 = " \\ / "
    let y2 = "  Y  "
    let y3 = "  |  "
    
    let z0 = ",--, "
    let z1 = "  /  "
    let z2 = " /   "
    let z3 = "/__, "
    
    let space0 = "   "
    let space1 = "   "
    let space2 = "   "
    let space3 = "   "
    
    
    let alphabet = ["a" : ["a", a0, a1, a2, a3], "b" : ["b", b0, b1, b2, b3],
                    "c" : ["c", c0, c1, c2 ,c3], "d" : ["d", d0, d1, d2, d3],
                    "e" : ["e", e0, e1, e2, e3], "f" : ["f", f0, f1, f2, f3],
                    "g" : ["g", g0, g1, g2, g3], "h" : ["h", h0, h1, h2, h3],
                    "i" : ["i", i0, i1, i2, i3], "j" : ["j", j0, j1, j2, j3],
                    "k" : ["k", k0, k1, k2, k3], "l" : ["l", l0, l1, l2, l3],
                    "m" : ["m", m0, m1, m2, m3], "n" : ["n", n0, n1, n2, n3],
                    "o" : ["o", o0, o1, o2, o3], "p" : ["p", p0, p1, p2, p3],
                    "q" : ["q", q0, q1, q2, q3], "r" : ["r", r0, r1, r2, r3],
                    "s" : ["s", s0, s1, s2, s3], "t" : ["t", t0, t1, t2, t3],
                    "u" : ["u", u0, u1, u2, u3], "v" : ["v", v0, v1, v2, v3],
                    "w" : ["w", w0, w1, w2, w3], "x" : ["x", x0, x1, x2, x3],
                    "y" : ["y", y0, y1, y2, y3], "z" : ["z", z0, z1, z2, z3],
                    " " : [" ", space0, space1, space2, space3]
                    ]
    
    let cpSomeText: String = someText
    
    var sloy0: String = ""
    var cpSloy0 = ""
    
    for char in cpSomeText {
        for (key, value) in alphabet {
                if (String(char) == key) {
                    cpSloy0 += value[1]
                     sloy0 = cpSloy0
                }
            }
        }
        
    var sloy1: String = ""
    var cpSloy1 = ""
    
    for char in cpSomeText {
        for (key, value) in alphabet {
                if (String(char) == key) {
                    cpSloy1 += value[2]
                     sloy1 = cpSloy1
                }
            }
        }
    
    var sloy2: String = ""
    var cpSloy2 = ""
    
    for char in cpSomeText {
        for (key, value) in alphabet {
                if (String(char) == key) {
                    cpSloy2 += value[3]
                     sloy2 = cpSloy2
                }
            }
        }
    var sloy3: String = ""
    var cpSloy3 = ""
    
    for char in cpSomeText {
        for (key, value) in alphabet {
                if (String(char) == key) {
                    cpSloy3 += value[4]
                     sloy3 = cpSloy3
                }
            }
        }
    
    let stroka = [sloy0, sloy1, sloy2, sloy3,]
    return stroka
    }

func printer(_ stroka: [String]) -> Void {
    print(stroka[0])
    print(stroka[1])
    print(stroka[2])
    print(stroka[3])
}

var stroka = detective("p")
    printer(stroka)
    
   
/*
    __
   ˹  \
   |   |
   ˪__/
 __
(_
__)
 
  ---
 ¦  __
 ¦___¦
 
  "
 ___
  ¦
  ¦
  /
 
 \      /
  \    /
   \/\/

\ /
 X
/ \
  __
 /  \
 |  |
 \__\
 ,---,
 |___/
 |
 |
 __
/  \
|  |
\__/
 abcdefghijklmnopqrstuvwxyz
 |---
 |__
 |
 ___
 |__
 |__

 ___
 |_
 |
   
 ,--,
|   |
|---|
|   |
 
 ,   ,
 |\ /|
 | V |
 |   |
 
_|____|__________________
 /
 ¬
 _
 ¦
 °
 ¨
 •
 ¸
 ˇ
 ˣ
 ˟
 ˕
 ˥
 ˩
 ˪
 ˹
 ˾

 ͝    Ͱ
 │
 Ꜣ
 /
 
 
 | /
 |/
 | \
 |  \
 
,--¬
|   \
|    |
|___/
 
,----,
|    |
|    |
 \__/
 */

