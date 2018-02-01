
<html>
   
   <head>
      
   </head>
   <body>
   		<div align="center">
	   		<h1>Thuật toán sắp xếp nổi bọt theo thứ tự tăng dần</h1>
	       	<?php 
				function bubble($swapping){
					$tong = count($swapping);
					for ($i = 0; $i < ($tong - 1); $i++){
						for($j = $i + 1; $j < $tong; $j++){
							if($swapping[$i] > $swapping[$j]){
								$tmp = $swapping[$j];
								$swapping[$j] = $swapping[$i];
								$swapping[$i] = $tmp;			
							}
						}
					}
					return $swapping;
				}

				function show($swapping){
					$tong = count($swapping);
					for($i = 0; $i < $tong; $i++){
						echo $swapping[$i];
					}
				}

				$data = array(1, 5, 2, 4, 9); 
				$data = bubble($data);
				show($data);
			?>
       </div>
   </body>
</html>