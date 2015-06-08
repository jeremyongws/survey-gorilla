$(document).ready(function() {

  var question_number = 2

  // console.log(positionToAppendQuestion)
  // debugger
  $(".question_button").click(function(e){
    e.preventDefault();
    $(".question-field").append(
      " <div id=question-"+ question_number + "'>\
            <input type='text' name=questions[" + question_number +"][question]" + " placeholder='question'></input>\
            <div class='choice-field-" + question_number + "'>\
            <textarea name=questions[" + question_number + "][choice][1]" + " placeholder='Enter choice here'></textarea> \
            </div>\
                  <button class='choice_button' type='button'  value=" + question_number+">Add Choice</button>\
          </div>");
    question_number++
  })

  $(document).on("click", ".choice_button", function(e) {
      e.preventDefault();
      var questionNumber = $(this).val();
      var choiceNumber = ($(".choice-field-" + questionNumber + " textarea:last-child").index() + 1);

      $(".choice-field-" + questionNumber ).append("<textarea name=questions[" + (question_number-1) + "][choice][" + (choiceNumber+1) + "] placeholder='Enter choice here'></textarea>");

   })

});



  //   $(".choice_button").click(function(e){
  //   e.preventDefault();
  //   var choice_number = 2
  //   $(".choice-field" + question_number).append(
  //     "<textarea name=choice placeholder=Enter choice here value="+choice_number"></textarea>"
  //     );

  // })


   // $(document).on("click", ".add-choice", function() {
   //    var questionNumber = $(this).val();
   //    $("#choice-field-" + questionNumber ).append("<input type='text' placeholder='choice'></input>");
   // })