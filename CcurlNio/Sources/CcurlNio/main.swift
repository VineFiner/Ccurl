import Ccurl

if let version: UnsafeMutablePointer<Int8> = curl_version() {
    let str = String(cString: version)
    print(str)
}
print("Hello, world!")
