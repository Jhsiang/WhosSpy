//
//  Constant.swift
//  WhosSpy
//
//  Created by Jim Chuang on 2018/4/17.
//  Copyright © 2018年 jj. All rights reserved.
//

import Foundation

let PREF_VILL_NUMBERS = "pref_vill_numbers"
let PREF_SPY_INDEX = "pref_spy_index"


func desc(index:Int) -> String{
    return "請給第 \(index) 個人觀看\n\n【觀看底牌請按下一步】"
}

func showA(index:Int,ans:String) -> String{
    return "第 \(index) 個人的答案是[\(ans)]\n\n記住後請按下一步"
}




























let totalA:[Array<String>] = [
    ["撿到兩百塊","發票中兩百塊"],
    ["發票中兩百塊","樂透中兩百塊"],
    ["樂透中兩百塊","撿到兩百塊"],
    ["發票中兩百塊","撿到兩百塊"],
    ["智慧型手機","iPad平版電腦"],
    ["傳統型手機","公共電話"],
    ["電視節目","電影"],
    ["冰塊","冰棒"],
    ["台北市","台南市"],
    ["台南市","台北市"],
    ["書桌","抽屜"],
    ["抽屜","書櫃"],
    ["書櫃","抽屜"],
    ["書桌","椅子"],
    ["椅子","桌子"],
    ["化妝桌","鏡子"],
    ["餐桌","桌巾"],
    ["書桌","書櫃"],
    ["書桌","餐桌"],
    ["書桌","梳妝桌"],
    ["瓜子","花生"],
    ["花生","瓜子"],
    ["瓜子","堅果"],
    ["洋芋片","瓜子"],
    ["陽春麵","泡麵"],
    ["陽春麵","烏龍麵"],
    ["香腸","熱狗"],
    ["熱狗","香腸"],
    ["雞排","牛排"],
    ["牛排","雞排"],
    ["醬油","鹽巴"],
    ["醬油","沙拉油"],
    ["醬油","豬油"],
    ["醬油","味精"],
    ["圍巾","手套"],
    ["圍巾","項鍊"],
    ["墾丁","沖繩"],
    ["澎湖","綠島"],
    ["家樂福","好市多Castco"],
    ["家樂福","全聯福利中心"],
    ["國中生","小學生"],
    ["電費","網路費"],
    ["全聯福利中心","全家便利商店"],
    ["全家便利商店","全聯福利中心"],
    ["爬山","游泳"],
    ["安全帶","安全帽"],
    ["安全帽","安全帶"],
    ["海邊","游泳池"],
    ["浴缸","游泳池"],
    ["火鍋","圍爐"],
    ["火鍋","燒烤"],
    ["燒烤","火鍋"],
    ["醜小鴨","灰姑娘"],
    ["85度C","星巴克"],
    ["星巴克","85度C"],
    ["爭鮮","吉野家"],
    ["廁所","廚餘"],
    ["廚餘","廁所"],
    ["電視","電影"],
    ["電池","充電線"],
    ["電燈","檯燈"],
    ["冷氣","電風扇"],
    ["電風扇","冷氣"],
    ["漢堡","刈包"],
    ["漢堡","三明治"],
    ["牛奶","豆漿"],
    ["公車","捷運"],
    ["同學","同事"],
    ["同事","同學"],
    ["魔術師","魔法師"],
    ["雙胞胎","龍鳳胎"],
    ["兒子","孫子"],
    ["孫子","兒子"],
    ["兒子","女兒"],
    ["刷牙","剔牙"],
    ["刷牙","漱口"],
    ["頭髮","腿毛"],
    ["眼淚","鼻涕"],
    ["老鼠","蟑螂"],
    ["濕紙巾","抹布"],
    ["雜誌","報紙"],
    ["撲克牌","麻將"],
    ["馬桶","小便斗"],
    ["量角器","圓規"],
    ["刷卡","借錢"],
    ["放假","下班"],
    ["下班","放假"],
    ["悠遊卡","信用卡"],
    ["當兵","坐牢"],
    ["上班","上課"],
    ["上課","上班"],
    ["口袋","錢包"],
    ["巧克力牛奶","木瓜牛奶"],
    ["流星","彩虹"],
    ["遊覽車","火車"],
    ["洗澡","上洗手間"],
    ["水壺","水桶"],
    ["蛇","蜈蚣"],
    ["蜈蚣","蜘蛛"],
    ["螃蟹","蜘蛛"],
    ["蜘蛛","螃蟹"],
    ["行動電源","充電線"],
    ["紅茶","綠茶"],
    ["劉德華","張學友"],
    ["曬太陽","賞月"],
    ["綠茶","紅茶"]
]

