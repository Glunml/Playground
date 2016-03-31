// Create Scene
var scene = new THREE.Scene();

// Create Camera
var camera = new THREE.PerspectiveCamera( 75, window.innerWidth / window.innerHeight, 0.1, 1000 );

//Create Renderer //レンダーするためのもの
var renderer = new THREE.WebGLRenderer();
renderer.setSize( window.innerWidth, window.innerHeight );
document.body.appendChild( renderer.domElement );


// Add Cube
//var cubeGeometry = new THREE.CubeGeometry(1,1,1);
//MeshBasicMaterialは光を当てなくても色付きで表示される
//var material = new THREE.MeshBasicMaterial( { color: 0x00ff00 } );

//MeshLambertMaterialは光を受けるのでライトを設定しないと真っ暗のまま
var material = new THREE.MeshLambertMaterial( { color: 0x00ff88 } );
var sphereMaterial  = new THREE.MeshLambertMaterial({ color: 0x00BEC9 })
var sphereGeometry = new THREE.SphereGeometry(1, 32, 32);

//var cube = new THREE.Mesh(cubeGeometry, material );
var sphere = new THREE.Mesh(sphereGeometry,sphereMaterial)

//scene.add( cube );
scene.add( sphere );
camera.position.y  = -1;
camera.position.z = 5;

// ----------------Adding Light-----------------------


//DirectionalLight
//var light = new THREE.DirectionalLight(0xffffff);


//AmbientLightはオブジェクト全体に均等に光を与える。だから影もできないし、これだけだとフラットに見える。
//var light = new THREE.AmbientLight( 0x404040 );

//HemisphereLightはシーンの真上から当てるライト。
//HemisphereLight(skyColorHex, groundColorHex, intensity)
var light = new THREE.HemisphereLight( 0xffffbb, 0x080820, 1 );

//var light = new THREE.PointLight( 0xff0000, 1, 100 );
light.position.set( 50, 50, 50 );
//light.position.set(1, 1, 1).normalize();
scene.add( light );

//----------------------------------------------------

function render() {
    requestAnimationFrame(render);
/*
    cube.rotation.x += 0.1;
	cube.rotation.y += 0.1;
*/	
	upDown();
	sphere.position.y = sphere.position.y + speed
    renderer.render(scene, camera);//ここでRendererを呼んでレンダーしてる
}

function upDown(){
	speed = 0.1;
	var direction = 0.1;
	
	for(speed = 0; speed <= 1; speed = speed + 0.01){
		
	}
	
	if(speed == 1||speed == -1){
		speed = -speed;
	}
	speed = speed * direction;
	
	return speed;
}

render();
