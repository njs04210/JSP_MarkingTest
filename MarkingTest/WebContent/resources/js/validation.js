function CheckAddAnswer() {

  var guest_id = document.getElementById("guest_id");
  if (guest_id.value.length == 0) {
   alert("고유 아이디를 입력해주세요.");
   guest_id.select();
   guest_id.focus();
   return false;
  }
  
  var num = new Array();

  for (var i = 0; i < 20; i++) {
    num[i] = document.getElementById("num" + (i + 1));
  }

  for (var i = 0; i < 20; i++) {
    if (num[i].value.length == 0) {
      alert((i + 1) + "번 답안을 입력해주세요");
      num[i].select();
      num[i].focus();
      return false;
    }
  }

  if (confirm("제출 후에는 수정이 불가합니다. 신청하시겠습니까?") == true) {
    document.newAnswer.submit();
  } else {
    return;
  }
}

function CheckTemporalAnswer() {

  var num = new Array();

  for (var i = 0; i < 20; i++) {
    num[i] = document.getElementById("num" + (i + 1));
  }

  for (var i = 0; i < 20; i++) {
    if (num[i].value.length == 0) {
      alert((i + 1) + "번 답안을 입력해주세요");
      num[i].select();
      num[i].focus();
      return false;
    }
  }

  document.newAnswer.submit();

}

function totalCalculate() {

  var score = document.getElementsByName("score");

  for (var i = 0; i < 20; i++) {
    if (score[i].value.length == 0) {
      alert((i + 1) + "번 점수를 입력해주세요");
      score[i].select();
      score[i].focus();
      return false;
    }

    if (isNaN(score[i].value)) {
      alert("점수는 숫자만 입력하세요");
      score[i].select();
      score[i].focus();
      return false;
    }

    if (score[i].value < 0) {
      alert("점수는 음수는 입력할 수 없습니다.");
      score[i].select();
      score[i].focus();
      return false;
    }

    if (score[i].value > 5) {
      alert("배점은 5점까지 가능합니다.");
      score[i].select();
      score[i].focus();
      return false;
    }

  }

  document.getElementById('sumfield').setAttribute('value', total(score));

  if (total(score) >= 60) {
    document.getElementById('passcheck').innerHTML = "<h2 style=\"color:blue\">합격!</h2>";
    document.getElementById('next').innerHTML = "<button type=\"submit\" name=\"your_name\" class=\"btn btn-primary\">next</button>";
  } else {
    document.getElementById('passcheck').innerHTML = "<h2 style=\"color:red\">불합격!</h2>";
    document.getElementById('next').innerHTML = "<button type=\"submit\" name=\"your_name\" class=\"btn btn-primary\">next</button>";
  }

}

function total(score) {
  var sum = 0;
  for (var i = 0; i < score.length; i++) {
    sum += parseInt(score[i].value, 10);
  }
  return sum;
}

function showAnswer() {
	var id = document.getElementById('guest_id');
	id.setAttribute('value', id);
}