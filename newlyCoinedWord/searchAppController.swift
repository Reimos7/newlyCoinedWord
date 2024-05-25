//
//  searchAppController.swift
//  newlyCoinedWord
//
//  Created by 홍석평 on 5/25/24.
//

import UIKit

class searchAppController: UIViewController{
    
    // 텍스트필드, 검색버튼
    @IBOutlet var searchTextField: UITextField!
    @IBOutlet var searchButton: UIButton!
    
    // 결과 이미지, 결과 내용 텍스트
    @IBOutlet var resultImage: UIImageView!
    @IBOutlet var resultLabel: UILabel!
    
    // 최근 검색어
    @IBOutlet var recentResult: UILabel!
    
    // 버튼 레이블
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    @IBOutlet var button5: UIButton!
    @IBOutlet var button6: UIButton!
    @IBOutlet var button7: UIButton!
    @IBOutlet var button8: UIButton!
    @IBOutlet var button9: UIButton!
    @IBOutlet var button10: UIButton!
    
    
    // 신조어 배열
    var newCoinage = ["보배","디토","제곧내","당모치","내또출","구취","박박","마해자","중꺽마","스불재"]
    
    // 신조어 내용
    var newConinageResult = ["보조배터리!","어떤 상황을 동의할때 사용!","제목이 곧 내용!","당연히 모든 치킨은 옳다!","내일 또 출근함!","구독취소!","최고라는 의미!","마스크에 미모가 가려진 사람!","중요한건 꺽이지 않는 마음!","스스로 불러온 재앙!"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 텍스트 필드 초기 화면 텍스트 및 스타일
        searchTextField.borderStyle = .bezel
        searchTextField.placeholder = "신조어를 검색해 주세요!"
        
        // 검색 결과 배경 이미지
        resultImage.image = UIImage(named: "myback")
        
        
        // 검색 결과 초기 화면 텍스트
        resultLabel.text = "신조어를 검색해 주세요!"
        labelTextSet()
        
        // 최근 검색어 초기 화면 텍스트
        recentResult.text = "최근 검색어가 표시됩니다"
        labelTextSet()
        labelSet(recentResult)
        
        
        // 주석 해제시 최근 검색어 초기 화면 설정 불가..
//        let searchTextFields = UserDefaults.standard.string(forKey: "searchTextField")
//        
//        recentResult.text = searchTextFields
        
        
        
        // 돋보기 버튼 이미지
        //searchButton.setImage(.searchButton, for: .normal)
        
        // 버튼 초기 설정 및 테두리 효과
        button1.setTitle(newCoinage[0], for: .normal)
        buttonStyleSet(button1)
        
        button2.setTitle(newCoinage[1], for: .normal)
        buttonStyleSet(button2)
        
        button3.setTitle(newCoinage[2], for: .normal)
        buttonStyleSet(button3)
        
        button4.setTitle(newCoinage[3], for: .normal)
        buttonStyleSet(button4)
        
        button5.setTitle(newCoinage[4], for: .normal)
        buttonStyleSet(button5)
        
        button6.setTitle(newCoinage[5], for: .normal)
        buttonStyleSet(button6)
        
        button7.setTitle(newCoinage[6], for: .normal)
        buttonStyleSet(button7)
        
        button8.setTitle(newCoinage[7], for: .normal)
        buttonStyleSet(button8)
        
        button9.setTitle(newCoinage[8], for: .normal)
        buttonStyleSet(button9)
        
        button10.setTitle(newCoinage[9], for: .normal)
        buttonStyleSet(button10)
        
        
        // 키보드 return키를 통해 동작 처리 -> ui버튼 돋보기랑 같은 기능
        searchTextField.addTarget(self, action: #selector (searchTextFielAction)
                                  , for: UIControl.Event.primaryActionTriggered)
        
        
        
        // 탭을 통해 키보드 숨기기
        hideKeyboard()
      
        //labelSet(recentResult)
        
      //  let searchTextFields = UserDefaults.standard.string(forKey: "searchTextField")
        
        //recentResult.text = searchTextFields
        
    }
    
    // 검색 버튼 클릭시 (돋보기 버튼)
    @IBAction func searchButtonPressed(_ sender: UIButton) {
        resultScreen()
    }

    // 키보드 return키를 통해 동작 처리 -> ui버튼 돋보기 랑 같은 기능
    @objc func searchTextFielAction(textField: UITextField) {
        
        resultScreen()
        
        UserDefaults.standard.set(searchTextField.text, forKey: "searchTextField")
    }
    
    
    // 검색한 내용을 배열과 비교 후 결과 화면에 출력
    func resultScreen(){
        
        // 결과 화면
        if searchTextField.text == newCoinage[0]{
            resultLabel.text = newConinageResult[0]
            labelTextSet()
            
        } else if searchTextField.text == newCoinage[1]{
            resultLabel.text = newConinageResult[1]
            labelTextSet()
            
        } else if searchTextField.text == newCoinage[2]{
            resultLabel.text = newConinageResult[2]
            labelTextSet()
            
        } else if searchTextField.text == newCoinage[3]{
            resultLabel.text = newConinageResult[3]
            labelTextSet()
            
        } else if searchTextField.text == newCoinage[4]{
            resultLabel.text = newConinageResult[4]
            labelTextSet()
            
        } else if searchTextField.text == newCoinage[5]{
            resultLabel.text = newConinageResult[5]
            labelTextSet()
            
        } else if searchTextField.text == newCoinage[6]{
            resultLabel.text = newConinageResult[6]
            resultLabel.textAlignment = .center
            resultLabel.font = .boldSystemFont(ofSize: 25)
            
        } else if searchTextField.text == newCoinage[7]{
            resultLabel.text = newConinageResult[7]
            labelTextSet()
            
        } else if searchTextField.text == newCoinage[8]{
            resultLabel.text = newConinageResult[8]
            labelTextSet()
            
        } else if searchTextField.text == newCoinage[9]{
            resultLabel.text = newConinageResult[9]
            labelTextSet()
            
        } else {
            resultLabel.text = "검색 결과가 없습니다😭"
            labelTextSet()
        }
    
    }
    
    // 레이블 글자 세팅 -> 가운데 정렬, 볼트체 폰트 30
    func labelTextSet(){
        resultLabel.textAlignment = .center
        resultLabel.font = .boldSystemFont(ofSize: 30)
    }
  
    // 화면 터치시 키보드 숨기기
    // none gesture 방식으로
    func hideKeyboard(){
        view.addGestureRecognizer(UITapGestureRecognizer(target: self,action: #selector (dismissKeyboard)))
    }
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
    
 
    // 레이블 초기 설정 및 테두리 효과
    
    func labelSet(_ label: UILabel){
        
        label.textAlignment = .center
        label.layer.cornerRadius = 10
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.black.cgColor
    }

    
//    func buttonPressedSet(_ newCoinage: [String], _ newConinageResults: [String]){
//        
//       
//    }
    
    
    @IBAction func button1Pressed(_ sender: UIButton) {
        // 현재 버튼을 텍스트필드, 최근검색, 결과화면에 출력
        buttonRandomPrinter(button1)

        // 버튼 랜덤하게 섞어주기
        buttonRandomSet()
        
        
    }
    @IBAction func button2Pressed(_ sender: UIButton) {
        buttonRandomPrinter(button2)
        buttonRandomSet()
    }
    
    @IBAction func button3Pressed(_ sender: UIButton) {
        buttonRandomPrinter(button3)
        buttonRandomSet()
    }
    
    @IBAction func button4Pressed(_ sender: UIButton) {
        buttonRandomPrinter(button4)
        buttonRandomSet()
    }
    
    @IBAction func button5Pressed(_ sender: UIButton) {
        buttonRandomPrinter(button5)
        buttonRandomSet()
    }
    
    @IBAction func button6Pressed(_ sender: UIButton) {
        buttonRandomPrinter(button6)
        buttonRandomSet()
    }
    
    @IBAction func button7Pressed(_ sender: UIButton) {
        buttonRandomPrinter(button7)
        buttonRandomSet()
    }
    
    @IBAction func button8Pressed(_ sender: UIButton) {
        buttonRandomPrinter(button8)
        buttonRandomSet()
    }
    
    @IBAction func button9Pressed(_ sender: UIButton) {
        buttonRandomPrinter(button9)
        buttonRandomSet()
    }
    
    @IBAction func button10Pressed(_ sender: UIButton) {
        buttonRandomPrinter(button10)
        buttonRandomSet()
    }
    
    // 현재 혹은 랜덤후 선택된 버튼을 검색창, 최근검색어 결과 화면에 출력
    func buttonRandomPrinter(_ sender: UIButton){
        guard let title = sender.currentTitle else {return}
        searchTextField.text = title
        recentResult.text = title
        resultScreen()
        
    }
 
    
    // 버튼을 누르면 랜덤하게
    func buttonRandomSet() {
        button1.setTitle(newCoinage.randomElement(), for: .normal)
        button2.setTitle(newCoinage.randomElement(), for: .normal)
        button3.setTitle(newCoinage.randomElement(), for: .normal)
        button4.setTitle(newCoinage.randomElement(), for: .normal)
        button5.setTitle(newCoinage.randomElement(), for: .normal)
        button6.setTitle(newCoinage.randomElement(), for: .normal)
        button7.setTitle(newCoinage.randomElement(), for: .normal)
        button8.setTitle(newCoinage.randomElement(), for: .normal)
        button9.setTitle(newCoinage.randomElement(), for: .normal)
        button10.setTitle(newCoinage.randomElement(), for: .normal)
    }
    
    // 버튼 모양 세팅
    func buttonStyleSet(_ button :UIButton){
        
        button.titleLabel?.font = .boldSystemFont(ofSize: 18)
        button.titleLabel?.textAlignment = .center
        button.setTitleColor(.black, for: .normal)
        
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.black.cgColor
    }
    //
//    func buttonPressedSet (_ newCoinage: Array<Any>, _ newCoinageResult: Array<Any>) {
//        searchTextField.text = newCoinage
//        resultLabel.text = newConinageResult[0]
//    }
}
