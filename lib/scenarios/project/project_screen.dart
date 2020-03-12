import 'package:flutter/material.dart';
import 'package:portfolio/assets/assets.dart';
import 'package:portfolio/scenarios/project/model/project.dart';

class ProjectScreen extends StatefulWidget {
  @override
  _ProjectScreenState createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  List<Project> projects = [
    Project(
        id: "1",
        projectName: "비플 법인카드",
        url: "https://itunes.apple.com/us/app/비플-법인카드/id1148906760?mt=8",
        projectDesc: """종이영수증을 더 이상 모으지 말고, 자동 수집된 법인카드 영수증으로 간편하게 경비처리를 하세요

*이 앱은 bizplay “법인카드관리”를 이용하는 경비 사용자에게 제공되는 모바일 앱입니다.* (www.bizplay.co.kr)

아직도 회사 경비처리를 위해서 사용한 법인카드 영수증을 모아두고, 결재문서에 풀로 붙여 경비처리를 하시나요? 이 모든 것을 “비플 법인카드” 모바일에서 쉽고 빠르게 처리하세요.

주요기능
* 법인카드 이번 달 사용금액 / 미처리 영수증 확인
* 법인카드 사용내역, 영수증 상세 조회 * “영수증 보내기”에 용도와 내용을 입력하여 경비처리 가능 * “영수증 보내기”시 스마트폰 사진촬영 첨부 가능 * 경비지출결의(준비중)  우리회사에서도 사용이 가능한가요? * “비플 법인카드”는 No.1 경비지출관리관리 bizplay의 “법인카드관리”서비스를 이용해야 사용할 수 있습니다. * bizplay의 “법인카드관리” 컨텐츠를 이용하면 우리회사 법인카드 영수증을 자동수집 합니다. * 자동 수집된 카드영수증을 모바일 “비플 법인카드”또는 PC “bizplay”에서 사용자가 간편하게 경비처리를 할 수 있고, 회사관리자는 PC에서 법인카드 사용내역을 한눈에 보고, 경비지출관리가 가능합니다. * 이용문의는 온라인(www.bizplay.co.kr)을 접속하거나, 전화(1566-7235)으로 연락주세요.""",
        technology: "Swift, URL Session, CoreData"),
         Project(
        id: "1",
        projectName: "비플 법인카드",
        url: "https://itunes.apple.com/us/app/비플-법인카드/id1148906760?mt=8",
        projectDesc: """종이영수증을 더 이상 모으지 말고, 자동 수집된 법인카드 영수증으로 간편하게 경비처리를 하세요

*이 앱은 bizplay “법인카드관리”를 이용하는 경비 사용자에게 제공되는 모바일 앱입니다.* (www.bizplay.co.kr)

아직도 회사 경비처리를 위해서 사용한 법인카드 영수증을 모아두고, 결재문서에 풀로 붙여 경비처리를 하시나요? 이 모든 것을 “비플 법인카드” 모바일에서 쉽고 빠르게 처리하세요.

주요기능
* 법인카드 이번 달 사용금액 / 미처리 영수증 확인
* 법인카드 사용내역, 영수증 상세 조회 * “영수증 보내기”에 용도와 내용을 입력하여 경비처리 가능 * “영수증 보내기”시 스마트폰 사진촬영 첨부 가능 * 경비지출결의(준비중)  우리회사에서도 사용이 가능한가요? * “비플 법인카드”는 No.1 경비지출관리관리 bizplay의 “법인카드관리”서비스를 이용해야 사용할 수 있습니다. * bizplay의 “법인카드관리” 컨텐츠를 이용하면 우리회사 법인카드 영수증을 자동수집 합니다. * 자동 수집된 카드영수증을 모바일 “비플 법인카드”또는 PC “bizplay”에서 사용자가 간편하게 경비처리를 할 수 있고, 회사관리자는 PC에서 법인카드 사용내역을 한눈에 보고, 경비지출관리가 가능합니다. * 이용문의는 온라인(www.bizplay.co.kr)을 접속하거나, 전화(1566-7235)으로 연락주세요.""",
        technology: "Swift, URL Session, CoreData"), Project(
        id: "1",
        projectName: "비플 법인카드",
        url: "https://itunes.apple.com/us/app/비플-법인카드/id1148906760?mt=8",
        projectDesc: """종이영수증을 더 이상 모으지 말고, 자동 수집된 법인카드 영수증으로 간편하게 경비처리를 하세요

*이 앱은 bizplay “법인카드관리”를 이용하는 경비 사용자에게 제공되는 모바일 앱입니다.* (www.bizplay.co.kr)

아직도 회사 경비처리를 위해서 사용한 법인카드 영수증을 모아두고, 결재문서에 풀로 붙여 경비처리를 하시나요? 이 모든 것을 “비플 법인카드” 모바일에서 쉽고 빠르게 처리하세요.

주요기능
* 법인카드 이번 달 사용금액 / 미처리 영수증 확인
* 법인카드 사용내역, 영수증 상세 조회 * “영수증 보내기”에 용도와 내용을 입력하여 경비처리 가능 * “영수증 보내기”시 스마트폰 사진촬영 첨부 가능 * 경비지출결의(준비중)  우리회사에서도 사용이 가능한가요? * “비플 법인카드”는 No.1 경비지출관리관리 bizplay의 “법인카드관리”서비스를 이용해야 사용할 수 있습니다. * bizplay의 “법인카드관리” 컨텐츠를 이용하면 우리회사 법인카드 영수증을 자동수집 합니다. * 자동 수집된 카드영수증을 모바일 “비플 법인카드”또는 PC “bizplay”에서 사용자가 간편하게 경비처리를 할 수 있고, 회사관리자는 PC에서 법인카드 사용내역을 한눈에 보고, 경비지출관리가 가능합니다. * 이용문의는 온라인(www.bizplay.co.kr)을 접속하거나, 전화(1566-7235)으로 연락주세요.""",
        technology: "Swift, URL Session, CoreData"), Project(
        id: "1",
        projectName: "비플 법인카드",
        url: "https://itunes.apple.com/us/app/비플-법인카드/id1148906760?mt=8",
        projectDesc: """종이영수증을 더 이상 모으지 말고, 자동 수집된 법인카드 영수증으로 간편하게 경비처리를 하세요

*이 앱은 bizplay “법인카드관리”를 이용하는 경비 사용자에게 제공되는 모바일 앱입니다.* (www.bizplay.co.kr)

아직도 회사 경비처리를 위해서 사용한 법인카드 영수증을 모아두고, 결재문서에 풀로 붙여 경비처리를 하시나요? 이 모든 것을 “비플 법인카드” 모바일에서 쉽고 빠르게 처리하세요.

주요기능
* 법인카드 이번 달 사용금액 / 미처리 영수증 확인
* 법인카드 사용내역, 영수증 상세 조회 * “영수증 보내기”에 용도와 내용을 입력하여 경비처리 가능 * “영수증 보내기”시 스마트폰 사진촬영 첨부 가능 * 경비지출결의(준비중)  우리회사에서도 사용이 가능한가요? * “비플 법인카드”는 No.1 경비지출관리관리 bizplay의 “법인카드관리”서비스를 이용해야 사용할 수 있습니다. * bizplay의 “법인카드관리” 컨텐츠를 이용하면 우리회사 법인카드 영수증을 자동수집 합니다. * 자동 수집된 카드영수증을 모바일 “비플 법인카드”또는 PC “bizplay”에서 사용자가 간편하게 경비처리를 할 수 있고, 회사관리자는 PC에서 법인카드 사용내역을 한눈에 보고, 경비지출관리가 가능합니다. * 이용문의는 온라인(www.bizplay.co.kr)을 접속하거나, 전화(1566-7235)으로 연락주세요.""",
        technology: "Swift, URL Session, CoreData")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: projects.length,itemBuilder: (context, index){
      return Padding(
      padding: EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          color: Colors.white12,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 80,
                    height: 80,
                    margin: EdgeInsets.all(10),
                    child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://via.placeholder.com/140x100')),
                  ), Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Project title", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
                      Text("Company", style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold), textAlign: TextAlign.left),
                    ],
                  )
                ],
              ),
              Padding(padding: EdgeInsets.all(10),child: Text(projects[0].projectDesc))
            ],
          ),
        ),
      ),
    );
    });
  }
}
