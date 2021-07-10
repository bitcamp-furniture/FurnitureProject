//hero class안에 있는 li들을 클릭하면  해당 li text를 categoryName에 넣어준다
$(".hero li").on('click',function(){
   var category = ($(this).text());
   location.href='/furniture/category/view/selectList?category='+category;
});   
