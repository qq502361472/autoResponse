-- 定义对象 一个附魔
Item = { parts = "", showContent = "", price = 0, keywords = "" }


-- 派生类的方法 new
function Item:new (parts, showContent, price, keywords)
    local o = {}
    setmetatable(o, self)
    self.__index = self
    o.parts = parts
    o.keywords = keywords
    o.showContent = showContent
    o.price = price or 0
    return o
end

function getTblLen(tbl)
    if type(tbl) ~= "table" then
        print("类型错误")
        return
    end
    local len = 0
    for k, v in pairs(tbl) do
        len = len + 1
    end
    return len
end

list = {
    -- Item:new("头部、腿部", "1%攻速", 150, { "头", "腿", "攻速" }),
    -- Item:new("头部、腿部", "20火炕", 380, { "头", "腿", "火炕" }),
    -- Item:new("头部、腿部", "150法力", 150, { "头", "腿", "法", "蓝" }),
    Item:new("武器", "十字军", 90, { "武器有", "武器能", "十字", "10字" }),
    Item:new("武器", "30法伤", 540, { "武器有", "武器能", "法伤", "30法" }),
    Item:new("武器", "55治疗", 264, { "武器有", "武器能", "治疗", "55治" }),
    Item:new("武器", "15敏捷", 190, { "武器有", "武器能", "武器敏捷", "15敏" }),
    Item:new("武器", "25敏捷", 300, { "武器有", "武器能", "武器敏捷", "25敏" }),
    Item:new("武器", "22智力", 220, { "武器有", "武器能", "智力", "22智" }),
    Item:new("武器", "20精神", 140, { "武器精神", "20精" }),
    Item:new("武器", "+5伤害", 100, { "武器有", "武器能", "武器伤害", "5伤", }),
    -- Item:new("武器", "+4伤害", 35, { "武器", "伤害", "+4","加4","加四", "+四" }),
    Item:new("武器", "冰寒", 70, { "冰寒", "冰冷", "寒冷" }),
    Item:new("武器", "15力量", 110, { "武器力量", "15力" }),
    Item:new("武器", "灼热", 25, { "灼热" }),
    Item:new("武器", "生命偷取", 110, { "生命偷取", "吸血" }),
    Item:new("武器", "邪恶武器", 60, { "邪恶" }),
    Item:new("武器", "3智力", 10, { "3智" }),

    Item:new("手套", "7力量", 40, { "手套有", "手有", "手套力量", "手力量", "7力" }),
    Item:new("手套", "20暗伤", 140, { "手套有", "手有", "手套暗伤", "手暗伤", "20暗" }),
    -- Item:new("手套", "5力量", 10, { "手套", "手","力量","5力"}),
    Item:new("手套", "7敏捷", 20, { "手套有", "手有", "手套能", "手能", "手套敏", "手敏", "7敏" }),
    Item:new("手套", "15敏捷", 255, { "手套有", "手有", "手套能", "手能", "手套敏", "手敏", "15敏" }),
    Item:new("手套", "+1%攻速", 55, { "手套有", "手有", "手套能", "手能", "手套攻速", "手攻速", "攻速" }),
    Item:new("手套", "骑马速度", 55, { "手套有", "手有", "手套能", "手能", "手套钱", "手骑马", "骑马", "速度" }),
    Item:new("手套", "剥皮", 15, { "剥皮" }),
    Item:new("手套", "采药", 10, { "采药" }),
    Item:new("手套", "采矿", 10, { "采矿" }),
    Item:new("手套", "威胁", 180, { "威胁" }),

    Item:new("护腕", "24治疗", 90, { "护腕有", "手腕有", "护腕能", "手腕能", "护腕治疗", "手腕治疗", "24治" }),
    Item:new("护腕", "5回4蓝", 70, { "护腕有", "手腕有", "护腕能", "手腕能", "护腕回蓝", "手腕回蓝", "5回" }),
    Item:new("护腕", "9力量", 55, { "护腕有", "手腕有", "护腕能", "手腕能", "护腕力", "手腕力", "9力" }),
    -- Item:new("护腕", "7力量", 10, { "护腕", "手腕","力量","7力"}),
    Item:new("护腕", "9耐力", 15, { "护腕有", "手腕有", "护腕能", "手腕能", "护腕耐", "手腕耐", "9耐" }),
    Item:new("护腕", "9精神", 30, { "护腕有", "手腕有", "护腕能", "手腕能", "护腕精", "手腕精", "9精" }),
    -- Item:new("护腕", "7精神", 10, { "护腕", "手腕","精神","7精"}),
    Item:new("护腕", "7智力", 20, { "护腕有", "手腕有", "护腕能", "手腕能", "护腕智", "手腕智", "7智" }),
    Item:new("护腕", "3防御", 20, { "护腕防", "手腕防", "3防" }),

    Item:new("胸", "4属性", 130, { "胸有", "衣服有", "胸能", "衣服能", "4属性" }),
    Item:new("胸", "3属性", 40, { "胸有", "衣服有", "胸能", "衣服能", "3属性" }),
    Item:new("胸", "100法力", 40, { "胸有", "衣服有", "胸能", "衣服能", "100蓝" }),
    Item:new("胸", "100生命", 20, { "胸有", "衣服有", "胸能", "衣服能", "100血", "100生命" }),

    Item:new("披风", "70护甲", 15, { "披风护甲", "70护" }),
    Item:new("披风", "5全抗性", 25, { "披风有", "披风能", "披风抗", "5抗", "5全" }),
    Item:new("披风", "3敏", 20, { "披风有", "披风能", "披风敏", "3敏" }),
    Item:new("披风", "10暗抗", 35, { "披风有", "披风能", "披风暗", "10暗" }),
    -- Item:new("披风", "7火炕", 15, { "披风", "背","抗","7火"}),
    Item:new("披风", "15火炕", 110, { "披风有", "披风能", "披风火", "15火抗" }),
    Item:new("披风", "15自然", 120, { "披风有", "披风能", "披风自然", "15自然" }),

    Item:new("鞋子", "7敏捷", 65, { "鞋子有", "鞋有", "鞋子能", "鞋能", "鞋子敏", "7敏" }),
    Item:new("鞋子", "5精神", 30, { "鞋子有", "鞋有", "鞋子精", "鞋子能", "鞋能", "5精" }),
    Item:new("鞋子", "7耐力", 25, { "鞋子有", "鞋有", "鞋子耐", "鞋子能", "鞋能", "7耐" }),
    Item:new("鞋子", "移动速度", 20, { "鞋子有", "鞋有", "鞋子能", "鞋能", "移", "速" }),

    Item:new("盾牌", "7耐力", 25, { "盾有", "盾牌有", "盾能", "盾牌能", "盾牌耐力", "7耐" }),
    Item:new("盾牌", "9精神", 25, { "盾有", "盾牌有", "盾能", "盾牌能", "9精" })
    -- Item:new("盾牌", "8冰抗", 20, { "盾","抗","冰"})
}

InvateMsgs = { "1", "组" }

autoResponseEenabled = false

local autoResponse = CreateFrame("frame")
autoResponse:RegisterEvent("CHAT_MSG_WHISPER")
autoResponse:SetScript("OnEvent",
        function(self, event, arg1, arg2)
            --arg1:私聊内容 --arg2：私聊人的ID
            if autoResponseEenabled == true then
                flag = false;  --匹配标识
                for i = 1, getTblLen(list) do
                    local varItem = list[i];
                    local varKeywords = varItem.keywords;
                    local match = false;
                    for j = 1, getTblLen(varKeywords) do
                        if string.find(arg1, varKeywords[j]) ~= nil then
                            flag = true;
                            match = true;
                        end
                    end

                    if match == true then
                        SendChatMessage(varItem.parts .. ":" .. varItem.showContent .. "，价格[" .. varItem.price .. "]G", "whisper", "common", arg2)
                        -- print(varItem.parts .. ":" .. varItem.showContent .. "，价格[" .. varItem.price .. "]G")
                    end
                end

                for i = 1, getTblLen(InvateMsgs) do
                    local varItem = InvateMsgs[i];
                    if string.find(arg1, varItem) ~= nil then
                        flag = true;
                        break ;
                    end
                end

                if flag == true then
                    --如果匹配到 则自动邀请组队
                    InviteUnit(arg2);
                end
            end
        end
)

function SlashCmdList.AUTORESPONSE(msg, editbox)
    if (msg == 'off') then
        autoResponseEenabled = false
        print("自动回复功能已关闭")
    elseif (msg == 'on') then
        autoResponseEenabled = true
        print("自动回复功能已开启")
    else
        if autoResponseEenabled == true then
            print("自动回复功能处于开启状态 输入 /like off 可关闭")
        else
            print("自动回复功能处于关闭状态 输入 /like on 可开启")
        end
    end
end
SLASH_AUTORESPONSE1 = '/like'