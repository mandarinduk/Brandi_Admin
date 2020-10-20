import React from "react";
import styled from "styled-components";

export default function Footer() {
  return (
    <FooterBox>
      <p>
        | 상호 : (주)브랜디 | 주소 : (06223) 서울특별시 강남구 테헤란로 32길 26
        청송빌딩 | 사업자등록번호 : 220-88-93187 | 통신판매업신고 :
        2016-서울강남-00359호 | 이메일 : help@brandi.co.kr
      </p>
      <p>2018 © brandi inc.</p>
    </FooterBox>
  );
}

const FooterBox = styled.footer`
  color: #222;
  background-color: #35363a;
  p {
    color: #222;
  }
`;
