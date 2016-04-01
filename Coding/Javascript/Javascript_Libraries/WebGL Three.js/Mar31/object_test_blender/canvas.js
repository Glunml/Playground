init();
animate();
  
function init() {
    scene = new THREE.Scene();
  
    camera = new THREE.PerspectiveCamera( 75, 640/480, 1, 10000 );
    camera.position.z = 1000;
    //scene.add( camera );
     
    //trackball = new THREE.TrackballControls( camera );//カメラぐりぐり
         
    //ライティング
    var directionalLight = new THREE.DirectionalLight( 0xffffff, 3 ); //平行光源（色、強度）
    directionalLight.position.set(0,0,3);
    scene.add( directionalLight );
     
    //オブジェクト
    loader = new THREE.JSONLoader();
    loader.load( 'cube.json', function ( geometry, materials ) { //第１引数はジオメトリー、第２引数はマテリアルが自動的に取得）
        var faceMaterial = new THREE.MeshFaceMaterial( materials );
        json = new THREE.Mesh( geometry, faceMaterial );
        json.position.set( 0,100,0);
        json.scale.set( 100, 100, 100 );
        scene.add( json );
        } );
     
    //グリッド
    planeGeometry = new THREE.PlaneGeometry( 1000, 1000, 10, 10 );
    planeMaterial = new THREE.MeshBasicMaterial( { color: 0x000000, wireframe: true } );
    planeMesh = new THREE.Mesh( planeGeometry, planeMaterial );
    planeMesh.position.y = -100;
    planeMesh.rotation.x = 90 * 2 * Math.PI / 360; //左に角度いれるとラジアンに変換
    scene.add( planeMesh );
     
    //レンダラー
    renderer = new THREE.WebGLRenderer();//THREE.CanvasRenderer();でもいいけどポリゴンの裏が非表示？
    renderer.setSize( 640, 480 );
    document.body.appendChild( renderer.domElement );
  
}
  
function animate() {
    requestAnimationFrame( animate );
    renderer.render( scene, camera );
    //trackball.update();   //これ追加
}