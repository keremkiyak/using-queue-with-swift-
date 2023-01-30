import UIKit//dokunma ve diğer girdileri almamızı sağlayan kütüphane.
//burdaki T generic tip dir generic=tüm veri tiplerinde çalışacak şekilde yazılmış.
struct Queue<T>
{
    var list = [T]()
    mutating func enqueue(deger:T){
//mutating bir fonksiyona aşırı yükleme yaparak onun özelliklerini değiştirmemizi sağlar.
        list.append(deger)
    }
    mutating func dequeue()->T?
//T nin yanindaki soru işareti çıkarılacak elaman yoksa optional ı
    {
        if !list.isEmpty{
            return list.removeFirst()
        }
        else{
            return nil
        }
    }
    func ilkEklenenEleman() -> T? {
            if !list.isEmpty {
                return list.first
            } else {
                return nil
            }
        }
}
var selamlama = Queue<String>()
selamlama.enqueue(deger: "ben kerem")
selamlama.enqueue(deger: "nasilsin")
selamlama.ilkEklenenEleman()

    

