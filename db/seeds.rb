# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)
#Category.delete_all
#[{:level => 1,:url => '#',:name => '服装',:desc => 'This is category 服装'},{:level => 1,:url => '#',:name => '珠宝饰品',:desc => 'This is category 珠宝饰品'},{:level => 1,:url => '#',:name => '化妆品',:desc => 'This is category 化妆品'},{:level => 1,:url => '#',:name => '运动',:desc => 'This is category 运动'},{:level => 1,:url => '#',:name => '手机',:desc => 'This is category 手机'},{:level => 1,:url => '#',:name => '家用电器',:desc => 'This is category 家用电器'},{:level => 1,:url => '#',:name => '家具、建材',:desc => 'This is category 家具、建材'},{:level => 1,:url => '#',:name => '居家生活',:desc => 'This is category 居家生活'},{:level => 1,:url => '#',:name => '食品、保健',:desc => 'This is category 食品、保健'},{:level => 1,:url => '#',:name => '母婴用品',:desc => 'This is category 母婴用品'},{:level => 1,:url => '#',:name => '文化、玩乐',:desc => 'This is category 文化、玩乐'}].each do |category|
#  Category.create(:level => category[:level],:name => category[:name],:desc => category[:desc],:url => category[:url])
#end
#
#[{:level => 2,:url => '#',:name => '品牌女装',:desc => 'This is category 品牌女装'},{:level => 2,:url => '#',:name => '精致内衣',:desc => 'This is category 精致内衣'},{:level => 2,:url => '#',:name => '时尚家居',:desc => 'This is category 时尚家居'},{:level => 2,:url => '#',:name => '时尚配件',:desc => 'This is category 时尚配件'}].each do |category|
#  Category.first.categories.create(:level => category[:level],:name => category[:name],:desc => category[:desc],:url => category[:url])
#end
#
#[{:level => 2,:url => '#',:name => '时尚饰品',:desc => 'This is category 时尚饰品'},{:level => 2,:url => '#',:name => '品牌手表',:desc => 'This is category 品牌手表'},{:level => 2,:url => '#',:name => '太阳镜',:desc => 'This is category 太阳镜'},{:level => 2,:url => '#',:name => '眼镜',:desc => 'This is category 眼镜'},{:level => 2,:url => '#',:name => 'Zippo/烟具',:desc => 'This is category Zippo/烟具'}].each do |category|
#  Category.where(:name => '珠宝饰品').first.categories.create(:level => category[:level],:name => category[:name],:desc => category[:desc],:url => category[:url])
#end
#
#[{:level => 2,:url => '#',:name => '面部护肤',:desc => 'This is category 面部护肤'},{:level => 2,:url => '#',:name => '冬季推荐',:desc => 'This is category 冬季推荐'},{:level => 2,:url => '#',:name => '时尚彩妆',:desc => 'This is category 时尚彩妆'},{:level => 2,:url => '#',:name => '经典香氛',:desc => 'This is category 经典香氛'},{:level => 2,:url => '#',:name => '男士护肤',:desc => 'This is category 男士护肤'},{:level => 2,:url => '#',:name => '精油芳疗',:desc => 'This is category 精油芳疗'},{:level => 2,:url => '#',:name => '美体瘦身',:desc => 'This is category 美体瘦身'},{:level => 2,:url => '#',:name => '时尚假发',:desc => 'This is category 时尚假发'},{:level => 2,:url => '#',:name => '美妆工具',:desc => 'This is category 美妆工具'}].each do |category|
#  Category.where(:name => '化妆品').first.categories.create(:level => category[:level],:name => category[:name],:desc => category[:desc],:url => category[:url])
#end
#
#[{:level => 2,:url => '#',:name => '运动鞋',:desc => 'This is category 运动鞋'},{:level => 2,:url => '#',:name => '运动服',:desc => 'This is category 运动服'},{:level => 2,:url => '#',:name => '体育用品',:desc => 'This is category 体育用品'},{:level => 2,:url => '#',:name => '户外装备',:desc => 'This is category 户外装备'},{:level => 2,:url => '#',:name => '健身器械',:desc => 'This is category 健身器械'},{:level => 2,:url => '#',:name => '休闲运动',:desc => 'This is category 休闲运动'}].each do |category|
#  Category.where(:name => '运动').first.categories.create(:level => category[:level],:name => category[:name],:desc => category[:desc],:url => category[:url])
#end
#
#[{:level => 2,:url => '#',:name => '手机',:desc => 'This is category 手机'},{:level => 2,:url => '#',:name => '随身视听',:desc => 'This is category 随身视听'},{:level => 2,:url => '#',:name => '电子书',:desc => 'This is category 电子书'},{:level => 2,:url => '#',:name => '电脑硬件',:desc => 'This is category 电脑硬件'},{:level => 2,:url => '#',:name => '数码配件',:desc => 'This is category 数码配件'},{:level => 2,:url => '#',:name => '数码相机',:desc => 'This is category 数码相机'},{:level => 2,:url => '#',:name => '台式机',:desc => 'This is category 台式机'},{:level => 2,:url => '#',:name => '笔记本电脑',:desc => 'This is category 笔记本电脑'},{:level => 2,:url => '#',:name => '平板电脑',:desc => 'This is category 平板电脑'},{:level => 2,:url => '#',:name => '办公用品',:desc => 'This is category 办公用品'}].each do |category|
#  Category.where(:name => '手机').first.categories.create(:level => category[:level],:name => category[:name],:desc => category[:desc],:url => category[:url])
#end
#
#[{:level => 2,:url => '#',:name => '次日达专区',:desc => 'This is category 次日达专区'},{:level => 2,:url => '#',:name => '大家电',:desc => 'This is category 大家电'},{:level => 2,:url => '#',:name => '生活电器',:desc => 'This is category 生活电器'},{:level => 2,:url => '#',:name => '厨房电器',:desc => 'This is category 厨房电器'},{:level => 2,:url => '#',:name => '影音电器',:desc => 'This is category 影音电器'},{:level => 2,:url => '#',:name => '护理电器',:desc => 'This is category 护理电器'},{:level => 2,:url => '#',:name => '健康电器',:desc => 'This is category 健康电器'}].each do |category|
#  Category.where(:name => '家用电器').first.categories.create(:level => category[:level],:name => category[:name],:desc => category[:desc],:url => category[:url])
#end
#
#[{:level => 2,:url => '#',:name => '精品家具',:desc => 'This is category 精品家具'},{:level => 2,:url => '#',:name => '灯饰照明',:desc => 'This is category 灯饰照明'},{:level => 2,:url => '#',:name => '厨卫装修',:desc => 'This is category 厨卫装修'},{:level => 2,:url => '#',:name => '墙地面材料',:desc => 'This is category 墙地面材料'},{:level => 2,:url => '#',:name => '电工基建',:desc => 'This is category 电工基建'},{:level => 2,:url => '#',:name => '家居服务',:desc => 'This is category 家居服务'}].each do |category|
#  Category.where(:name => '家具、建材').first.categories.create(:level => category[:level],:name => category[:name],:desc => category[:desc],:url => category[:url])
#end
#
#[{:level => 2,:url => '#',:name => '精品家纺',:desc => 'This is category 精品家纺'},{:level => 2,:url => '#',:name => '布艺软饰',:desc => 'This is category 布艺软饰'},{:level => 2,:url => '#',:name => '家居饰品',:desc => 'This is category 家居饰品'},{:level => 2,:url => '#',:name => '特色手工艺',:desc => 'This is category 特色手工艺'},{:level => 2,:url => '#',:name => '居家日用',:desc => 'This is category 居家日用'},{:level => 2,:url => '#',:name => '厨房餐饮',:desc => 'This is category 厨房餐饮'},{:level => 2,:url => '#',:name => '家庭清洁',:desc => 'This is category 家庭清洁'},{:level => 2,:url => '#',:name => '宠物生活',:desc => 'This is category 宠物生活'}].each do |category|
#  Category.where(:name => '居家生活').first.categories.create(:level => category[:level],:name => category[:name],:desc => category[:desc],:url => category[:url])
#end
#
#[{:level => 2,:url => '#',:name => '本季热推',:desc => 'This is category 本季热推'},{:level => 2,:url => '#',:name => '休闲零食',:desc => 'This is category 休闲零食'},{:level => 2,:url => '#',:name => '茶叶冲调',:desc => 'This is category 茶叶冲调'},{:level => 2,:url => '#',:name => '酒水饮料',:desc => 'This is category 酒水饮料'},{:level => 2,:url => '#',:name => '生鲜粮油',:desc => 'This is category 生鲜粮油'},{:level => 2,:url => '#',:name => '各地特产',:desc => 'This is category 各地特产'},{:level => 2,:url => '#',:name => '品牌保健',:desc => 'This is category 品牌保健'},{:level => 2,:url => '#',:name => '营养滋补',:desc => 'This is category 营养滋补'}].each do |category|
#  Category.where(:name => '食品、保健').first.categories.create(:level => category[:level],:name => category[:name],:desc => category[:desc],:url => category[:url])
#end
#
#[{:level => 2,:url => '#',:name => '婴儿食品',:desc => 'This is category 婴儿食品'},{:level => 2,:url => '#',:name => '婴儿用品',:desc => 'This is category 婴儿用品'},{:level => 2,:url => '#',:name => '童车童床',:desc => 'This is category 童车童床'},{:level => 2,:url => '#',:name => '玩具早教',:desc => 'This is category 玩具早教'},{:level => 2,:url => '#',:name => '童装童鞋',:desc => 'This is category 童装童鞋'},{:level => 2,:url => '#',:name => '孕妈专区',:desc => 'This is category 孕妈专区'},{:level => 2,:url => '#',:name => '玩具模型',:desc => 'This is category 玩具模型'},{:level => 2,:url => '#',:name => '送礼专区',:desc => 'This is category 送礼专区'}].each do |category|
#  Category.where(:name => '母婴用品').first.categories.create(:level => category[:level],:name => category[:name],:desc => category[:desc],:url => category[:url])
#end
#
#[{:level => 2,:url => '#',:name => '图书杂志',:desc => 'This is category 图书杂志'},{:level => 2,:url => '#',:name => '音像制品',:desc => 'This is category 音像制品'},{:level => 2,:url => '#',:name => '品牌乐器',:desc => 'This is category 品牌乐器'},{:level => 2,:url => '#',:name => '门票旅游',:desc => 'This is category 门票旅游'},{:level => 2,:url => '#',:name => '消费卡券',:desc => 'This is category 消费卡券'},{:level => 2,:url => '#',:name => '电子凭证',:desc => 'This is category 电子凭证'},{:level => 2,:url => '#',:name => '网店/软件',:desc => 'This is category 网店/软件'},{:level => 2,:url => '#',:name => '软件定制DIY',:desc => 'This is category 软件定制DIY'},{:level => 2,:url => '#',:name => '鲜花园艺',:desc => 'This is category 鲜花园艺'},{:level => 2,:url => '#',:name => '古董收藏',:desc => 'This is category 古董收藏'}].each do |category|
#  Category.where(:name => '文化、玩乐').first.categories.create(:level => category[:level],:name => category[:name],:desc => category[:desc],:url => category[:url])
#end
#
#[{:level => 3,:url => '#',:name => '毛衣',:desc => 'This is category 毛衣'},{:level => 3,:url => '#',:name => '真皮皮衣',:desc => 'This is category 真皮皮衣'},{:level => 3,:url => '#',:name => 'PU外套',:desc => 'This is category PU外套'},{:level => 3,:url => '#',:name => '羽绒服',:desc => 'This is category 羽绒服'},{:level => 3,:url => '#',:name => '毛呢大衣',:desc => 'This is category 毛呢大衣'},{:level => 3,:url => '#',:name => '皮草',:desc => 'This is category 皮草'},{:level => 3,:url => '#',:name => '西装',:desc => 'This is category 西装'},{:level => 3,:url => '#',:name => '卫衣',:desc => 'This is category 卫衣'},{:level => 3,:url => '#',:name => 'T恤',:desc => 'This is category T恤'},{:level => 3,:url => '#',:name => '牛仔裤',:desc => 'This is category 牛仔裤'},{:level => 3,:url => '#',:name => '连衣裙',:desc => 'This is category 连衣裙'},{:level => 3,:url => '#',:name => '裤子',:desc => 'This is category 裤子'},{:level => 3,:url => '#',:name => '针织衫',:desc => 'This is category 针织衫'},{:level => 3,:url => '#',:name => '衬衫',:desc => 'This is category 衬衫'},{:level => 3,:url => '#',:name => '婚纱礼服',:desc => 'This is category 婚纱礼服'},{:level => 3,:url => '#',:name => '中老年服装',:desc => 'This is category 中老年服装'}].each do |category|
#  Category.where(:name => '品牌女装').first.categories.create(:level => category[:level],:name => category[:name],:desc => category[:desc],:url => category[:url])
#end
#
#[{:level => 3,:url => '#',:name => '文胸',:desc => 'This is category 文胸'},{:level => 3,:url => '#',:name => '塑身衣',:desc => 'This is category 塑身衣'},{:level => 3,:url => '#',:name => '袜子',:desc => 'This is category 袜子'},{:level => 3,:url => '#',:name => '女内裤',:desc => 'This is category 女内裤'},{:level => 3,:url => '#',:name => '男内裤',:desc => 'This is category 男内裤'},{:level => 3,:url => '#',:name => '男袜',:desc => 'This is category 男袜'},{:level => 3,:url => '#',:name => '基础内衣',:desc => 'This is category 基础内衣'}].each do |category|
#  Category.where(:name => '精致内衣').first.categories.create(:level => category[:level],:name => category[:name],:desc => category[:desc],:url => category[:url])
#end
#
#[{:level => 3,:url => '#',:name => '家居套装',:desc => 'This is category 家居套装'},{:level => 3,:url => '#',:name => '睡袍/浴袍',:desc => 'This is category 睡袍/浴袍'},{:level => 3,:url => '#',:name => '家居裙',:desc => 'This is category 家居裙'},{:level => 3,:url => '#',:name => '家居裤',:desc => 'This is category 家居裤'},{:level => 3,:url => '#',:name => '家居上衣',:desc => 'This is category 家居上衣'}].each do |category|
#  Category.where(:name => '时尚家居').first.categories.create(:level => category[:level],:name => category[:name],:desc => category[:desc],:url => category[:url])
#end
#
#[{:level => 3,:url => '#',:name => '帽子',:desc => 'This is category 帽子'},{:level => 3,:url => '#',:name => '男士皮带',:desc => 'This is category 男士皮带'},{:level => 3,:url => '#',:name => '腰链',:desc => 'This is category 腰链'},{:level => 3,:url => '#',:name => '婚纱礼服配件',:desc => 'This is category 婚纱礼服配件'},{:level => 3,:url => '#',:name => '丝巾',:desc => 'This is category 丝巾'},{:level => 3,:url => '#',:name => '领带',:desc => 'This is category 领带'},{:level => 3,:url => '#',:name => '袖扣',:desc => 'This is category 袖扣'}].each do |category|
#  Category.where(:name => '时尚配件').first.categories.create(:level => category[:level],:name => category[:name],:desc => category[:desc],:url => category[:url])
#end
44.times do
  Category.where(:name => '服装').first.products.create(:name => '淘金币香薇儿2011新款秋冬装加厚泡泡袖韩版打底衫女... ',:price => 138.70,:belonged_shop=> '香薇儿瀚雪专...',:area => '上海',:deals => 1040,:trans_expense => 89.70,:picture => 'http://img03.taobaocdn.com/bao/uploaded/i3/T1vRCHXoBjXXbf5gs0_035318.jpg_b.jpg',:color => '黑色',:eval_grade => 4.7,:own_score => 69,:desc => '淘金币香薇儿2011新款秋冬装加厚泡泡袖韩版打底衫女装10%羊毛衣')
end
