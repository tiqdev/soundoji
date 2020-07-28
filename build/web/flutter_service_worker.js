'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "94620973623129ff47a8fb015b1cf920",
"assets/assets/images/about.png": "f0db3272eec8b81a954caf32a87fe118",
"assets/assets/images/arrow.png": "e3d9dd232412cd057f474018ea621d1b",
"assets/assets/images/bird.png": "d9749f66e6dda10631e4a30df46780ba",
"assets/assets/images/car.png": "36e3478fefa3fb781f19d90ea4f88717",
"assets/assets/images/cat.png": "4437fc0cc91594cf81a08558c9ca1b0a",
"assets/assets/images/chicken.png": "e1fe689b00083923c425a6291a0226f6",
"assets/assets/images/contact.png": "2c38c7e57f795f6eb1da5cdf3953ae2e",
"assets/assets/images/cow.png": "f0de0d8539cc469fc55a1a575670aadb",
"assets/assets/images/deranzo.png": "8fee8b9c5058d81f965f742dae7cd0cf",
"assets/assets/images/dog.png": "c3f44b34eb074337fed6bf75176cf337",
"assets/assets/images/donkey.png": "611c7a856d153a4916a2dea890096250",
"assets/assets/images/duck.png": "c07a79a9cb3c37cd535b9d11c79f9043",
"assets/assets/images/eagle.png": "97c62a82041583e1055cac8510dba7d5",
"assets/assets/images/fbi.png": "3a455ce408e7b233cc9798aa18f0f06e",
"assets/assets/images/flop.png": "0a85932d3dd001328a2d8f702038235f",
"assets/assets/images/frog.png": "f523be4393edee03222b9dd8267ebd0f",
"assets/assets/images/helicopter.png": "6a94d1beaccf3d139c5e2e22ec4fb96a",
"assets/assets/images/horse.png": "1e6f45a2ddf8b9e985a8489a32e70632",
"assets/assets/images/hu%25C5%259Fevni.png": "a7255c23897cece6b4ecce5cfceaa9a8",
"assets/assets/images/ic_launcher.png": "86cc1cee257771a1734941439db68abe",
"assets/assets/images/impranto.png": "2c00265cf25dcbf4a626c4e2825d9940",
"assets/assets/images/ios.png": "7ee722385950c091604df374e29bfe28",
"assets/assets/images/kar98.png": "0a9f30fc11dab0684b4601a81ef1c0b6",
"assets/assets/images/kid.png": "21b99a1c911e53d4d79bb9b12e6a3e9f",
"assets/assets/images/kiss.png": "bbc3397df75f2857edd9e409dafdd540",
"assets/assets/images/lion.png": "a1db24e7409133460f5a94e32002311a",
"assets/assets/images/logo.png": "35a811bf2f3c28e2113a0a0af4c2393b",
"assets/assets/images/mp5.png": "b1908000f82411ee0a89f34cbc5bf19b",
"assets/assets/images/pew.png": "6629e62f30d143de13969ceacd270f14",
"assets/assets/images/pikachu.png": "f5351e7336623f09e61272c589fd8a32",
"assets/assets/images/rocket.png": "e943815c3d777d1c751227796a5c177c",
"assets/assets/images/samsung.png": "dcd6f89c591d8a494c0cf3f07cf3471a",
"assets/assets/images/sheep.png": "9e9b6b5fda0c2bdcd87323e28e377c53",
"assets/assets/images/ship.png": "54f3ad8473978d918807d568372f9619",
"assets/assets/images/slap.png": "addbeeee0a968b2a816ff7723583f36e",
"assets/assets/images/train.png": "a68eed9231c1558cea53cd3871333715",
"assets/assets/images/water.png": "4bdeb36c73e630735610d342ce9cbdb0",
"assets/assets/images/yuppi.png": "d0539886d886e5ed468543455bc9fc90",
"assets/assets/sounds/arrow.mp3": "be64f282a807d6b709fef68df1bde61c",
"assets/assets/sounds/bird.mp3": "a2bf6b9a317bd731b59ed4c77455ca9d",
"assets/assets/sounds/bright.mp3": "ae9cd2e458b08d0c372c4e694333d01c",
"assets/assets/sounds/car.mp3": "c9e6e4c465c17c7c6ce496d68a5bc91f",
"assets/assets/sounds/cat.mp3": "a3533d7ce012eadb73b1e5f7b1656547",
"assets/assets/sounds/chicken.mp3": "7184f2fbc153c1008bf7cb483369c87e",
"assets/assets/sounds/cow.mp3": "5779deba5d28f124cb2da7a8d8da062a",
"assets/assets/sounds/deranzo.wav": "ae17016d547579808df7f7765165d84f",
"assets/assets/sounds/dog.mp3": "1309186417f9dffd59017542e563c56a",
"assets/assets/sounds/donkey.mp3": "67203e67beefb7f1d20215cd0023c147",
"assets/assets/sounds/dort.wav": "d083e2c81ecd527afd1ba434feb937c5",
"assets/assets/sounds/duck.mp3": "1b8bd6f555a29c50eb60c35d00efa8ba",
"assets/assets/sounds/eagle.mp3": "6c32ab11fff1872d10742cbb252f1807",
"assets/assets/sounds/fbi.mp3": "a1438c750629134c4ca87e45f8ee0821",
"assets/assets/sounds/flop.mp3": "3c060741cf4852d6ffe2362ee9debaa0",
"assets/assets/sounds/frog.mp3": "522fffa974c552e1a591766554aa329a",
"assets/assets/sounds/helicopter.mp3": "e6815507cceee62ba1ccf3bada01068c",
"assets/assets/sounds/horse.mp3": "34438e776cbf5cd60247e433f1fc296d",
"assets/assets/sounds/hu%25C5%259Fevni.wav": "28262965fee9f0009ce1480dd70d0537",
"assets/assets/sounds/impranto.wav": "7576cfbd4cbb950803961273c8bf9a1e",
"assets/assets/sounds/ios.mp3": "d302b311fd8f90c3c80f3d156771994b",
"assets/assets/sounds/kar98.mp3": "50c1836435187d60c95179fe20d874bf",
"assets/assets/sounds/kid.mp3": "e63710a2a0ec035b55409d2f57265c7d",
"assets/assets/sounds/kiss.mp3": "ad2a77afc2b4f98d94739bbaa72ab2d2",
"assets/assets/sounds/lion.mp3": "fe45aa28679d9b540db202be030f1edc",
"assets/assets/sounds/m%25C3%25B6nik.wav": "55211318206876f9f8847d5ff6a056a4",
"assets/assets/sounds/mp5.wav": "b2c730df59a4b798d87bf8c04f46a1ea",
"assets/assets/sounds/pew.wav": "e2ab195b506fa59ec4fb1b4fce955830",
"assets/assets/sounds/pikachu.mp3": "43d49869625b3b54155dbfe68b0c8681",
"assets/assets/sounds/rocket.mp3": "025a46981e9515ff9e048360ffd93e58",
"assets/assets/sounds/samsung.mp3": "d4a7831679e4e804918977d4ac88e7b7",
"assets/assets/sounds/sheep.mp3": "5ae895942e40da2f9d080256ec56f9d2",
"assets/assets/sounds/ship.mp3": "ac6fd38c3812889b5c536dd571a9b273",
"assets/assets/sounds/slap.wav": "89158ef230238bd1d40bb9c93d2e95e4",
"assets/assets/sounds/train.mp3": "c168a93eb668be060f78a5dd43aac971",
"assets/assets/sounds/water.mp3": "a4ba16d09e32e58477a33529c35c3371",
"assets/assets/sounds/yuppi.mp3": "4cebbc222de5e59c961aa89da9bf17fa",
"assets/FontManifest.json": "a283d0fe50e5599070256c033d331a1c",
"assets/fonts/Bangers-Regular.ttf": "a82040ecf06139df2f3e653326b3420c",
"assets/fonts/CeraRoundProBlack.otf": "740b76b1119af63f43e28583229b1318",
"assets/fonts/CeraRoundProBold.otf": "4fca61df8d93f64cf79fd4dc833bce1b",
"assets/fonts/CeraRoundProLight.otf": "4a8f9d6e0757e75a40ef72ee73547a92",
"assets/fonts/CeraRoundProMedium.otf": "fea79d41994908a221c6dcaa364e59dd",
"assets/fonts/CeraRoundProRegular.otf": "ef283a0703f4243113c3a318978ba09b",
"assets/fonts/CeraRoundProThin.otf": "6a223e8019f943b5cdaa9d8cc7938305",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/NOTICES": "3c5109de751a2f045d64d7a4d630e5e6",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "cae9cebc05b86a73879f7732146cd45c",
"/": "cae9cebc05b86a73879f7732146cd45c",
"logo.png": "35a811bf2f3c28e2113a0a0af4c2393b",
"main.dart.js": "33bf84f3363ff37a64d10d9e72a173e5",
"manifest.json": "dd69fdb4cc55c133108c755c7b2eaf4b"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/LICENSE",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      // Provide a no-cache param to ensure the latest version is downloaded.
      return cache.addAll(CORE.map((value) => new Request(value, {'cache': 'no-cache'})));
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
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#')) {
    key = '/';
  }
  // If the URL is not the the RESOURCE list, skip the cache.
  if (!RESOURCES[key]) {
    return event.respondWith(fetch(event.request));
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache. Ensure the resources are not cached
        // by the browser for longer than the service worker expects.
        var modifiedRequest = new Request(event.request, {'cache': 'no-cache'});
        return response || fetch(modifiedRequest).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.message == 'skipWaiting') {
    return self.skipWaiting();
  }

  if (event.message = 'downloadOffline') {
    downloadOffline();
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
  for (var resourceKey in Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.add(resourceKey);
    }
  }
  return Cache.addAll(resources);
}
