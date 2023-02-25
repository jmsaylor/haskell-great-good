getBodyMassIndex :: [(Double, Double)] -> [Double]

getBodyMassIndex xs = [bmi w h | (w, h) <- xs]
 where bmi weight height = weight / height ^ 2

getBodyMassIndex' xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]
