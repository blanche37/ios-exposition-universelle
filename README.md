# 🇰🇷ios-exposition-universelle🇫🇷
swift로 구현한 만국박람회 앱
---
- 진행기간: 2021-07-05 ~ 2021-7-16
- camper: charlott, yun, jiwon 

### Index
- [실행화면](#실행화면)
- [Implementation](#Implementation)
- [TroubleShooting](#TroubleShooting)

### 실행화면

![](https://i.imgur.com/Hker8QB.gif)

## Implementation
1. Codable,CodingKey 그리고 JSONDecoder를 활용한 json 파싱
2. StackView를 활용한 UI구성


### 1.Codable,CodingKey 그리고 JSONDecoder를 활용한 json 파싱
코다블은 Decodable & Encodable로 이루어진 typeAlias로써 json에서 모델타입으로 디코딩 하거나, json파일로 인코딩할때 주로 사용합니다. 
이번프로젝트에서 사전에 json파일을 제공 받았는데, 이를 모델타입으로 변경하기위해서 Codable프로토콜을 채택하고, JSONDecoder객체를 활용해서 파싱을 진행하였습니다.
또한 모델타입의 상수 이름과 json파일의 키값이 일치하지 않는 경우가 있었는데, CodingKey프로토콜을 이용해서 매칭시켜 주었습니다. 

### 2.StackView를 활용한 UI구성
StackView는 UI요소들을 일정한 간격을 두고 배치하기 위해서 사용합니다. Constraint를 주어서 배치할 수도 있었지만, 스택뷰를 이용해서 보다 간단하게 UI를 배치하였습니다.

### 3.prepare메소드를 활용한 화면간 데이터 이동
segue로 연결시킨 DetailViewController에 getParsedData(with:)를 구현하여, 데이터를 넘겨받도록 하였습니다.
```swift=
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "ShowItemDetailSegue",
           let destination = segue.destination as? DetailViewController,
           let cell = sender as? ItemListCell,
           let indexPath = tableView.indexPath(for: cell) {
            let itemData = itemList[indexPath.row]
            destination.getParsedData(with: itemData)
     }
}
```

### 4.NumberForamatter를 활용한 숫자에 쉼표 찍기
```swift=
var formattedVisitors: String {
     let formatter = NumberFormatter()
     formatter.numberStyle = .decimal
        
     guard let formatted = formatter.string(for: visitors) else {
            return ""
     }
    
     return formatted
}
```
![](https://i.imgur.com/cXfRnM5.png)

## TroubleShooting


