'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/AssetManifest.bin.json": "9d92d89967b4d16a66ae7462736ff337",
"assets/assets/picture-white.svg": "5de945b750daba012be48ce4d893fc76",
"assets/assets/Ellipse%252015.png": "3d3fae6d22e3b9eefc12c78cb936e4cf",
"assets/assets/R76/product%2520%25232.jpg": "69176e6018a352b6f0f116b996c45095",
"assets/assets/R76/product%2520%25239.jpg": "ecf02b6f30584e42371c0214338e7954",
"assets/assets/R76/game%2520%25232.png": "f49e3578c08ca02af3c059b7b0368334",
"assets/assets/R76/product%2520%25237.jpg": "519a25cb155678f9a4b22eef0f26a80c",
"assets/assets/R76/Button%2520-%2520_%2520%2520%2520%2520_%2520%2520%2520%2520%2520%2520Previous.png": "3572bda8eb4375ac2067a2cba6ae8b3f",
"assets/assets/R76/pexels-rdne-7915289.jpg": "ac1d3a3c451c157fb5c9b3561f384a3f",
"assets/assets/R76/product%2520%25236.jpg": "8e9ccecf991d2f0eb75e830f2966dbed",
"assets/assets/R76/product%2520%252310.jpg": "c7fbcbce644fa1652ac8c6f6ac937130",
"assets/assets/R76/game%2520%25233.png": "c20018149ece281a1acb503abab77d8b",
"assets/assets/R76/product%2520%25233.jpg": "74ec7618fd42830155a6f7b8f8cce987",
"assets/assets/R76/opgg.png": "fe1b1d6068948638fed293f9eccbece8",
"assets/assets/R76/game%2520%25231.png": "81caeaba0059e9f2b4688b3a0d5a050b",
"assets/assets/R76/game%2520%25234.png": "9d3b2bdc39dccb4b0e54cc9cf150dca3",
"assets/assets/R76/product%2520%25231.jpg": "bc7c525e097bc5b22dbbbaa77312abd2",
"assets/assets/R76/R76.png": "d18945a8cff7204550ac1adb7f9c90b7",
"assets/assets/R76/product%2520%25234.jpg": "4dafbfcd89528a525259a005d03795cf",
"assets/assets/R76/product%2520%25235.jpg": "ea622b1ec4da281127b21f3676bddafe",
"assets/assets/R76/R76-1.png": "a0bbdd8699885385d535b3494414ce20",
"assets/assets/R76/pexels-rdne-7915285.jpg": "a0a90ce94cc6ed6648543241d07f9375",
"assets/assets/R76/pexels-rdne-7915364.jpg": "fe95ea3d5c4bbafef9d1d76e946b5e61",
"assets/assets/R76/1721520063485.png": "1340fc94b3c859ddec4972359d17f90a",
"assets/assets/R76/pexels-rdne-7915280.jpg": "0333c1820960a53f058e247e77c66273",
"assets/assets/R76/Button%2520-%2520_%2520%2520%2520%2520_%2520%2520%2520%2520_%2520%2520%2520%2520%2520%2520Next.png": "763685fcc1fc20358aa8b844429bc197",
"assets/assets/R76/product%2520%25238.jpg": "b6f20f6173f0f9f6c284e43ff2f0dd68",
"assets/assets/bakery-category.jpg": "d041851c4cf26cd9d4561bceecc67d6d",
"assets/assets/Close_MD.svg": "bfa733ac52c9309428b61d8e173d543e",
"assets/assets/footer-search-hover.svg": "33a36f4fcdfa369bcaacca64f6a84e2e",
"assets/assets/search-white.svg": "0ce65e7cf0a4297496a325709393e347",
"assets/assets/drinks-category.jpg": "ee1135cb1a3f645bf1b8e1373efdb664",
"assets/assets/wind.png": "1af026bf0fef763903231d6d3c2f41d6",
"assets/assets/Group%252097.svg": "c8ccf8d717febbfa3673d5f2649550a3",
"assets/assets/side-dish-category.jpg": "d68b1096948c55e354e42ae5a67dbd75",
"assets/assets/sr/Landing.png": "9be9b73a0028d4a29266c676cfb8d44c",
"assets/assets/sr/Social%2520Icon%2520%252301.png": "811f8401472b1ec2bb50558da13e50f2",
"assets/assets/sr/Logo%2520%25231.png": "1d9f00508c9a338a44dd191072f68b81",
"assets/assets/sr/Social%2520Icon%2520%252305.png": "d1a22eeec7d4d19c7477b802c656b8bc",
"assets/assets/sr/Logo%2520%25230.png": "3a5c6198e72399d51aba014d34c3bc9c",
"assets/assets/sr/SVG.png": "f8fd4edc5845dbcdbe5ccafb22d38b81",
"assets/assets/sr/Product%2520%25230.png": "baea17478f54ef5c622ffaafb79c1c62",
"assets/assets/sr/Social%2520Icon%2520%252307.png": "b1047051cbb8019ccdc4ceb2d385a073",
"assets/assets/sr/Social%2520Icon%2520%252302.png": "f534329fda8b5df3c1c837442f40fd29",
"assets/assets/sr/Social%2520Icon%2520%252304.png": "9ff4d14be819ac7227570f45c98dfb09",
"assets/assets/sr/Border.png": "831e7b86cd661a86f9dc2173b5b8b9f3",
"assets/assets/sr/Social%2520Icon%2520%252306.png": "bfa9da4739e4a57d7fe7cca025af399f",
"assets/assets/sr/Social%2520Icon%2520%252303.png": "d54ef2fa4bb52de7b1f8e71643d05400",
"assets/assets/salad-category.jpg": "5c4dc1189aa369355de69cd6debd8ff0",
"assets/assets/goback-white.svg": "ca129923221a3bd892363906610e232d",
"assets/assets/User_03.svg": "462bd8d7855dbb06e5754684c3027f08",
"assets/assets/dessert-category.jpg": "4d85a029dcce5115737bff3c56c8dd80",
"assets/assets/footer-house-hover.svg": "984f76d4ec4b37695a7700352302f34c",
"assets/assets/House_02.svg": "6191004c9d61310ab3a522e8bab6546c",
"assets/assets/main-dish-category.jpg": "386db72ec1c963e7f70670f06197b129",
"assets/assets/comments-white.svg": "91b6ddf97e084afae656f921e1183a3d",
"assets/assets/Arrow_Reload_02.svg": "5343f37c171c755677b001cb79d43db6",
"assets/assets/sun.png": "006234db9333657217c5d3e6e68e7901",
"assets/assets/soup-category.jpg": "b032dc3118bb68b24cdb115000053679",
"assets/assets/rose.png": "42d9c9a740cfc2a5bca3efa1d94b333c",
"assets/assets/platter-logo.svg": "6fc7a41fde8555f9f3f8623c93eb9149",
"assets/assets/comments.svg": "0c3fe9ffa532350c7b167f8914c19cd8",
"assets/assets/Group%2520101.svg": "32f2df12183fd122bf9d9e35f35c3b18",
"assets/assets/user-holder.png": "e89cb9fa82d663e437ff4a42c48fa558",
"assets/assets/clouds.png": "3a06c4d36b60f8531aff3c3b615a13a7",
"assets/assets/water-button.svg": "2f05c49b391110a5d12f3b9a7e2785b1",
"assets/assets/rain-drops.png": "62ab460ea2fcb994d1c46c8f9487d1a2",
"assets/assets/Rectangle%2520194.png": "fe2b52cbaa9f97c25a2c0af96278a020",
"assets/assets/footer-house.svg": "f4bfa92a0a0d1e6f70a3fd1a2c187bba",
"assets/assets/Ellipse%252016.png": "4fdbb2a7f9811d99b8c4caf86f3c04d1",
"assets/assets/footer-search.svg": "d919a03d5b8ce54f0c0f77f7f2cafb73",
"assets/assets/snack-category.jpg": "fd359f17e9425b858a71b47f8b7eb1ae",
"assets/assets/flowers(1).png": "9b29b789647e7969af44ba701118565a",
"assets/assets/search.svg": "b73a78cb946a8bbfef323c8c31918b74",
"assets/assets/picture.svg": "40f6e7c9668fed9f9241d2f6681ab338",
"assets/assets/appetizer-category.png": "3acf5f05bb88aca60ef53ba5fe3cf352",
"assets/assets/snowflake.png": "30a69b092164b9d493014bedefdca7fe",
"assets/assets/cloud.png": "47f612f8c55bda510ca1324e402fb8d6",
"assets/assets/eye-button.svg": "2fbb4d8ce8e7db2852afe292e66bae6b",
"assets/assets/lunch-category.jpg": "0f615a39874e71afa77129d5dbfdf055",
"assets/assets/thunderbolt.png": "0edd31329afd61cc3624381bca278add",
"assets/assets/send.svg": "c9e3f3033bbbfc382228e3da129ad647",
"assets/assets/daisy.png": "6c0dde41549e94e99648abe3d0ec82b6",
"assets/assets/sauces-category.jpg": "550a8bed217a254320e6f87e7949754f",
"assets/assets/Close_SM.svg": "7389e698afb731c8d0782f2f80035197",
"assets/assets/breakfast-category.png": "496e59c414336502e51b732b7aa31470",
"assets/assets/Book_Open.svg": "cd30d546625cad34d17d8b260663052c",
"assets/assets/dot.svg": "306b4f2c474557db10164d735592dd91",
"assets/assets/goback.svg": "8c9b4f16241559a6e8299503b21b07a9",
"assets/assets/search.png": "4343649ae6be8aa183e7d2c3ad371114",
"assets/assets/sunny%25202.png": "7b5fd762787cd8a340bc956b578d9fe8",
"assets/assets/backgrounds/onb0.jpeg": "b6bb9d7dcea03e3726a9e0760921f885",
"assets/assets/backgrounds/onb1.jpeg": "f44523b79f6576ffcfa84543b276869a",
"assets/assets/backgrounds/onb2.jpeg": "9e8f6667db0c1073b40a2157eb3db2f6",
"assets/assets/backgrounds/vertical.png": "91b217eb869ce8b56dd2b691e576e173",
"assets/assets/backgrounds/Rectangle%2520828079.png": "19ca353059e9fde04fc1c43f1c9efeb5",
"assets/assets/backgrounds/endless_care1.png": "09e8b783267c4b98753f11175438cc07",
"assets/assets/backgrounds/horizontal.png": "0956117cbe20e1a2b938411f9293e971",
"assets/assets/backgrounds/placeholder.png": "41b4c178a7f9497ba3c9168db68d7034",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/NOTICES": "b705ecf50f30d0d3907b9f1ae988e274",
"assets/AssetManifest.bin": "2dd121b768d5cb790ab952fef0ebec80",
"assets/AssetManifest.json": "e87dc609c542fb3318979751032dbed1",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"manifest.json": "9caa89cb3f1cbeba5d70ab159cbfb3d4",
"index.html": "2e49083190480aa8ef572358dd67919f",
"/": "2e49083190480aa8ef572358dd67919f",
"main.dart.js": "66081866b341c590994a0a9fdd3df58a",
"version.json": "c5174e7f29f0803b36175d7297535095",
"flutter_bootstrap.js": "70d8621d791eeec025de1081ca8a4c4a",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
