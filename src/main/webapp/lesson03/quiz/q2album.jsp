<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
        // 아티스트 정보 

            Map<String, Object> artistInfo = new HashMap<>();
            artistInfo.put("name", "아이유");
            artistInfo.put("debute", 2008);
            artistInfo.put("agency", "EDAM엔터테인먼트");
            artistInfo.put("photo", "https://w.namu.la/s/3ca92265fffe4dd38a729df3df7dd41ea3ef12b72383958c8fd0bea79ffaa0331810fb8bea8ba09156d69e5f792eef522dd8eb932389ed972ff233c2c9adb34fc92d9ebceb03cdd9ae4ff0093f88e0e7bbe21d3251555878b233fa2a5f6af14544c8dd26f4cb608d0b0101c91fc37dce");


        // 아이유 노래 리스트 
            List<Map<String, Object>> musicList = new ArrayList<>();

            Map<String, Object> musicInfo = new HashMap<>();
            musicInfo.put("id", 1);
            musicInfo.put("title", "팔레트");
            musicInfo.put("album", "Palette");
            musicInfo.put("singer", "아이유");
            musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
            musicInfo.put("time", 217);
            musicInfo.put("composer", "아이유");
            musicInfo.put("lyricist", "아이유");
            musicList.add(musicInfo);

            musicInfo = new HashMap<>();
            musicInfo.put("id", 2);
            musicInfo.put("title", "좋은날");
            musicInfo.put("album", "Real");
            musicInfo.put("singer", "아이유");
            musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
            musicInfo.put("time", 233);
            musicInfo.put("composer", "이민수");
            musicInfo.put("lyricist", "김이나");
            musicList.add(musicInfo);

            musicInfo = new HashMap<>();
            musicInfo.put("id", 3);
            musicInfo.put("title", "밤편지");
            musicInfo.put("album", "palette");
            musicInfo.put("singer", "아이유");
            musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
            musicInfo.put("time", 253);
            musicInfo.put("composer", "제휘,김희원");
            musicInfo.put("lyricist", "아이유");
            musicList.add(musicInfo);

            musicInfo = new HashMap<>();
            musicInfo.put("id", 4);
            musicInfo.put("title", "삐삐");
            musicInfo.put("album", "삐삐");
            musicInfo.put("singer", "아이유");
            musicInfo.put("thumbnail", "https://ww.namu.la/s/5ea8ba97baf8af3cc13f2972d9d23bcd17e19b8b8a96ce86d50c4bd03ad4df30321fc7e012738ad4b00c50642195ef7a68ff484ad760b15ff46bb1dc45ffb3fc399e4345c5d4dd2240820b59f3a573a57f84b8a6a2e4fb26ce5e81ad66d85f77debc979900275f6cf7a51386c8c39aa9");
            musicInfo.put("time", 194);
            musicInfo.put("composer", "이종훈");
            musicInfo.put("lyricist", "아이유");
            musicList.add(musicInfo);

            musicInfo = new HashMap<>();
            musicInfo.put("id", 5);
            musicInfo.put("title", "스물셋");
            musicInfo.put("album", "CHAT-SHIRE");
            musicInfo.put("singer", "아이유");
            musicInfo.put("thumbnail", "https://w.namu.la/s/4a817b8f4ec9caca4027a6991651a401d683a7691f1926bd60e59908f306d439f7cc251af5ef263a6f0a249e831d5d9cf641855bf590dadd86869ff941aad8dc236bc91bac89f84cff60c981d8d6c85f57a2ff4df00b5efe3bbc10e9745ce13571eda48f1912435423317450475d6ffe");
            musicInfo.put("time", 194);
            musicInfo.put("composer", "아이유,이종훈,이채규");
            musicInfo.put("lyricist", "아이유");
            musicList.add(musicInfo);

            musicInfo = new HashMap<>();
            musicInfo.put("id", 6);
            musicInfo.put("title", "Blueming");
            musicInfo.put("album", "Love poem");
            musicInfo.put("singer", "아이유");
            musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
            musicInfo.put("time", 217);
            musicInfo.put("composer", "아이유,이종훈,이채규");
            musicInfo.put("lyricist", "아이유");
            musicList.add(musicInfo);
           
            Map<String, Object> temp =null;   
            
            //1.목록에서 클릭한 경우
            if(request.getParameter("ID")!=null){
            	 Integer id = Integer.valueOf(request.getParameter("ID"));
            	//Integer는 얻은 값이 없으면 null로 받는다
            	// int는 0으로 받는다.
            	
            	 for(Map<String, Object> t : musicList){
            		 int i = (Integer)t.get("id");
             		if(i==id){
             			temp= t;
             			break;
             		}
             	}	 	
            }
            
            //2.상단에서 검색한 경우(name 값)
            if(request.getParameter("search")!=null){
            	String text =request.getParameter("search");
            	for(Map<String, Object> t : musicList){
           		 String i = (String)t.get("title");
            		if(i.equals(text)){
            			temp = t;
            			break;
            		}
            	}	 	
            
            }
           
            
            
/*             String name = request.getParameter("text1");
            int id = Integer.parseInt(request.getParameter("ID"))-1;   
            if(!(name==null)){
            	for(Map<String, Object> t : musicList){
            		if(t.get("title").equals(name)){
            			temp = t;
            			id = Integer.parseInt(temp.get("id").toString())-1;
            			break;
            		}
            	}	
            }
                
        	int time, m, s;
        	time = Integer.parseInt(temp.get("time").toString());
        	m = time / 60;
        	s = time % 60; */
        %>
    
 <h4 class="ml-2">곡 정보</h4>   
<article class="d-flex ml-3">
<div class="m-2">
<img alt="곡 사진" src="<%= temp.get("thumbnail") %>" width="200px" height="200px">
</div>
<div class="m-2">
<h3 class="font-weight-bold"><%= temp.get("title") %></h3>
<span class="text-success font-weight-bold"><%= temp.get("singer") %></span><br>
<br>
<span>엘범    <%= temp.get("album") %></span><br>
<span>작곡가    <%= temp.get("composer") %></span><br>
<span>작사가    <%= temp.get("lyricist") %></span><br>
</div>

</article>






