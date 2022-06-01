public class CryptoInfo {
    public static Integer showPrice(string coinName) {
        integer price ;
        map<String,Integer> cryptoMap = new Map<String,Integer>();
        cryptoMap.put('BTC', 45000);
        cryptoMap.put('ETH', 3000);
        price = cryptoMap.get(coinName);
        
        return price;

    }
}
