import 'package:flutter/widgets.dart';

var topBar = ["推荐", "专题", "连载"];
var subscriptData = [
  {
    "slug": "5AUzod",
    "title": "旅行·在路上",
    "content": "邂逅一个国家，讲述一座城市，这里有你期待的诗与远方。\r\n\r\n1....",
    "avatar_url":
        "http://upload.jianshu.io/collections/images/13/%E5%95%8A.png",
    "followed": false,
    "likes_count": "3115.3K",
    "public_notes_count": "185.9K"
  },
  {
    "id": 83,
    "slug": "7b2be866f564",
    "title": "摄影",
    "content": "生活本无趣 \r\n光影挽留年 \r\n用图片 说故事 \r\n记录生活 记...",
    "avatar_url": "http://upload.jianshu.io/collections/images/83/1.jpg",
    "followed": false,
    "likes_count": "2405.1K",
    "public_notes_count": "129.3K"
  },
  {
    "id": 14,
    "slug": "V2CqjW",
    "title": "@IT·互联网",
    "content": "Hi，很高兴在@IT·互联网专题遇见你。\n收录范围：收录IT&amp;互...",
    "avatar_url":
        "http://upload.jianshu.io/collections/images/14/6249340_194140034135_2.jpg",
    "followed": false,
    "likes_count": "2031.2K",
    "public_notes_count": "53.7K"
  },
  {
    "id": 95,
    "slug": "fcd7a62be697",
    "title": "故事",
    "content": "故事专题，不论是旅行生活中亲身经历的真实故事，还是童话玄幻遐想的...",
    "avatar_url": "http://upload.jianshu.io/collections/images/95/1.jpg",
    "followed": false,
    "likes_count": "1749.3K",
    "public_notes_count": "195.7K"
  },
  {
    "id": 4,
    "slug": "yD9GAd",
    "title": "读书",
    "content": "读书专题收录与读书有关的书评、读书笔记、阅读方法、读书清单等文章...",
    "avatar_url":
        "http://upload.jianshu.io/collections/images/4/sy_20091020135145113016.jpg",
    "followed": false,
    "likes_count": "4333.8K",
    "public_notes_count": "330.1K"
  },
  {
    "id": 283250,
    "slug": "8c92f845cd4d",
    "title": "手绘",
    "content": "本专题是绘画爱好者的乐园，欢迎互相分享学习; \n关于专题投稿要求...",
    "avatar_url":
        "http://upload.jianshu.io/collections/images/283250/%E6%BC%AB%E7%94%BB%E4%B8%93%E9%A2%98.jpg",
    "followed": false,
    "likes_count": "1985.1K",
    "public_notes_count": "159.6K"
  },
  {
    "id": 21,
    "slug": "1hjajt",
    "title": "简书电影",
    "content": "本专题收录电影相关文章。要求文内不得带有公众号信息等推广内容。 ...",
    "avatar_url":
        "http://upload.jianshu.io/collections/images/21/20120316041115481.jpg",
    "followed": false,
    "likes_count": "2365.5K",
    "public_notes_count": "99.4K"
  },
  {
    "id": 76,
    "slug": "cc7808b775b4",
    "title": "自然科普",
    "content": "自然科普专题收录与推荐标准请参考: \r\nhttps://www....",
    "avatar_url": "http://upload.jianshu.io/collections/images/76/12.jpg",
    "followed": false,
    "likes_count": "1498.4K",
    "public_notes_count": "7.9K"
  },
  {
    "id": 3730494,
    "slug": "ffc565d738a3",
    "title": "格列柯南",
    "intro": "只有审视观念的各个死角，\r\n才不会让头脑里落满灰尘。\n微信公众号...",
    "avatar_url":
        "http://upload.jianshu.io/users/upload_avatars/3730494/4a86a2a7-d5b9-47f1-969a-d8ef4711488b.jpg",
    "followed": false,
    "recent_notes": [
      {"title": "达尔文的“痛风”及演化...", "slug": "e3a3bbc35e2d"},
      {"title": "训练哲学思维的12件思考工具", "slug": "708eb712f828"}
    ],
    "public_notes_count": "43.5K"
  },
  {
    "id": 4790772,
    "slug": "0f438ff0a55f",
    "title": "茶点故事",
    "intro": "简书上的好故事，我！承！包！了！\r\n\r\n本账号是帮助简书故事获得...",
    "avatar_url":
        "http://upload.jianshu.io/users/upload_avatars/4790772/388e473c-fe2f-40e0-9301-e357ae8f1b41.jpeg",
    "followed": false,
    "recent_notes": [
      {"title": "被手机绑架的人们，在想什么？", "slug": "611e24efd647"},
      {"title": "故事：游走在午夜俱乐部的女人", "slug": "a23a00921ca5"}
    ],
    "public_notes_count": "13.5K"
  },
  {
    "id": 13213889,
    "slug": "080bb4eac1c9",
    "title": "无限猴子",
    "intro": "一只有限写作的无限猴子~\n\n版权合作事宜请联系行距文化：pub@...",
    "avatar_url":
        "http://upload.jianshu.io/users/upload_avatars/13213889/7314c5cc-ca7f-4542-b914-2c8dffaf324d.jpg",
    "followed": false,
    "recent_notes": [
      {"title": "圣诞快乐，船长先生！（...", "slug": "395496c35675"},
      {"title": "圣诞快乐，船长先生！（...", "slug": "9eb8b93d7bb8"}
    ],
    "public_notes_count": "2.0K"
  },
  {
    "id": 3292545,
    "slug": "c4165d16d0ad",
    "title": "北美之北",
    "intro": "是：老司机/奶爸/吃货\r\n写：职场的坑/父女的哏/美食的魂\r\n\r...",
    "avatar_url":
        "http://upload.jianshu.io/users/upload_avatars/3292545/78f2855a-80fd-419a-9fb2-1aeed39690f0.png",
    "followed": false,
    "recent_notes": [
      {"title": "一周休假，两见警察", "slug": "f5835936a6fc"},
      {"title": "油腻中年，零装备完成奥...", "slug": "02b051b995ac"}
    ],
    "public_notes_count": "29.1K"
  },
  {
    "id": 3136195,
    "slug": "6810a6332de9",
    "title": "梅拾璎",
    "intro": "\r\n打马跃青山，长河扬其波 。     爱皎月清风，恋人间烟火\r...",
    "avatar_url":
        "http://upload.jianshu.io/users/upload_avatars/3136195/484e32c3504a.jpg",
    "followed": false,
    "recent_notes": [
      {"title": "夏 天", "slug": "2698399f359c"},
      {"title": "让一个孩子彻底厌学的最...", "slug": "7c06e9243b61"}
    ],
    "public_notes_count": "25.4K"
  },
  {
    "id": 3136195,
    "slug": "6810a6332de9",
    "title": "梅拾璎",
    "intro": "\r\n打马跃青山，长河扬其波 。     爱皎月清风，恋人间烟火\r...",
    "avatar_url":
        "http://upload.jianshu.io/users/upload_avatars/3136195/484e32c3504a.jpg",
    "followed": false,
    "recent_notes": [
      {"title": "夏 天", "slug": "2698399f359c"},
      {"title": "让一个孩子彻底厌学的最...", "slug": "7c06e9243b61"}
    ],
    "public_notes_count": "25.4K"
  },
  {
    "id": 5545154,
    "slug": "898bb4ca481d",
    "title": "徐林Grace",
    "intro": "500强跨国公司总经理——雀巢、荷兰皇家帝斯曼（前瑞士罗氏维生素...",
    "avatar_url":
        "http://upload.jianshu.io/users/upload_avatars/5545154/1a3d5ed6-9ad1-44b3-9457-3e6a29dd1b71.jpg",
    "followed": false,
    "recent_notes": [
      {"title": "玫瑰人生让狂热的心冷却...", "slug": "5ad4148d32bf"},
      {"title": "做个bitch超级爽但...", "slug": "ec47b9f220f1"}
    ],
    "public_notes_count": "6.3K"
  },
  {
    "id": 5205317,
    "slug": "dbfdce352c0d",
    "title": "遛遛心情的溜妈",
    "intro": "溜爸，简书签约作者，舞枪弄棒、舞文弄墨的计算机工程师，梦想老婆孩...",
    "avatar_url":
        "http://upload.jianshu.io/users/upload_avatars/5205317/1179d71b-e7c6-4023-89e8-bba25f88272b.jpg",
    "followed": false,
    "recent_notes": [
      {"title": "一个孩子想家可以如此温柔……", "slug": "320abf7f44d7"},
      {"title": "［现实］中国病人（23）", "slug": "77f1293f52f7"}
    ],
    "public_notes_count": "29.0K"
  },
  {
    "id": 4287007,
    "slug": "f666aefcc318",
    "title": "晖宗聊绘画",
    "intro": "一枚混迹于博物馆工作的男僧\r\n，如果你是喜欢文艺的男女青年，走着...",
    "avatar_url":
        "http://upload.jianshu.io/users/upload_avatars/4287007/b7b9c810-069e-4385-aec7-1823e94ee43d.jpg",
    "followed": false,
    "recent_notes": [
      {"title": "儿童的世界，你不一定全懂", "slug": "0a6a745350d1"},
      {"title": "艺术应该是阳春白雪还是...", "slug": "b747b35816b7"}
    ],
    "public_notes_count": "2.3K"
  },
  {
    "id": 3950651,
    "slug": "ca5b9d6f94dc",
    "title": "三儿王屿",
    "intro": "文字即生活。豆瓣：Suzanne .\n《海岸故事》版权事宜请联系...",
    "avatar_url":
        "http://upload.jianshu.io/users/upload_avatars/3950651/acfaa0ce-42fe-424a-b7c8-9a0136fb96ec.jpg",
    "followed": false,
    "recent_notes": [
      {"title": "大屿(3)客串模特", "slug": "cd7c326ebeed"},
      {"title": "大屿(2)石沉大海", "slug": "d952248a8eba"}
    ],
    "public_notes_count": "3.4K"
  },
  {
    "id": 7416466,
    "slug": "e7dd0b3c7b70",
    "title": "老沈1",
    "intro": "",
    "avatar_url":
        "http://upload.jianshu.io/users/upload_avatars/7416466/fc1a1a0d-e3c7-4bca-9720-028c5c9914f3.jpg",
    "followed": false,
    "recent_notes": [
      {"title": "上海刺客二十八", "slug": "409d468da204"},
      {"title": "执念（尾声）", "slug": "0f14e87f2b2d"}
    ],
    "public_notes_count": "677"
  },
  {
    "id": 3343569,
    "slug": "b3b2c03354f3",
    "title": "吴晓布",
    "intro": "简书签约作者，商业管理优秀作者，视觉优秀作者，顺丰速运集团前高管...",
    "avatar_url":
        "http://upload.jianshu.io/users/upload_avatars/3343569/6940ee65-036f-4b7a-9935-5915d9b67d14.jpg",
    "followed": false,
    "recent_notes": [
      {"title": "我们要感谢那些谋杀时间...", "slug": "9fbff4ff808b"},
      {"title": "《认知》连载电子版和已...", "slug": "d09bb70b837b"}
    ],
    "public_notes_count": "21.6K"
  },
  {
    "id": 2153206,
    "slug": "0c5379fd193e",
    "title": "狼医生",
    "intro": "不会写小说的科普少年不是好医生",
    "avatar_url":
        "http://upload.jianshu.io/users/upload_avatars/2153206/4b7d9e0d-2e6b-4757-b5a9-a76737c5aeff.jpg",
    "followed": false,
    "recent_notes": [
      {"title": "天黑请闭眼，医生请杀人...", "slug": "a4f92d45dce4"},
      {"title": "天黑请闭眼，医生请杀人...", "slug": "80631af68216"}
    ],
    "public_notes_count": "2.2K"
  },
  {
    "id": 2587459,
    "slug": "82854a3500fc",
    "title": "穿着prada挤地铁",
    "intro": "只写好玩的都市生活。\r\n版权合作事宜请联系简书版权中心 :pub...",
    "avatar_url":
        "http://upload.jianshu.io/users/upload_avatars/2587459/9f4cfc0f-88b8-420c-b36e-9741e1191644.jpg",
    "followed": false,
    "recent_notes": [
      {"title": "描述数字增长的时候，你...", "slug": "51a6f6162713"},
      {"title": "有关微信的一些英语说法", "slug": "ea2c326aaadc"}
    ],
    "public_notes_count": "4.5K"
  }
];
