package com.health.api;

import java.util.HashMap;
import java.util.Map;

import com.health.service.PostService;
import com.health.vo.NoticePostVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BoardAPIController {
    @Autowired
    PostService service;
    
    @PutMapping("/noticePost")
    public Map<String, String> putNoticePost(@RequestBody NoticePostVO vo) {
        Map<String, String> resultMap = new HashMap<>();

        service.insertNoticePost(vo);
      
        resultMap.put("status", "success");
        resultMap.put("message", "공지가 등록되었습니다.");

        return resultMap;
    }

    @PatchMapping("/updateNoticePost/{seq}")
    public Map<String, String> updateNoticePost(@PathVariable Integer seq, @RequestBody NoticePostVO vo) {
        Map<String, String> resultMap = new HashMap<>();
        
        service.updateNoticePost(vo);

        resultMap.put("status", "success");
        resultMap.put("message", "공지가 수정되었습니다.");

        return resultMap;
    }
}
