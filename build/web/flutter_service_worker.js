'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "4638d1ce4cf856780f42de143e0bf0ef",
"assets/assets/images/arrow.svg": "a33ea7f530f4b720a3a4c050594842fa",
"assets/assets/images/baby.svg": "180367177854e0c407b5eb99c0234b30",
"assets/assets/images/bird.svg": "cf725f98edb284d25530f5dbd7d30ee4",
"assets/assets/images/car.svg": "53b7f069eafe8fd4fd29b1242eeb82e3",
"assets/assets/images/cat.svg": "a582f38ca1d7c72abd5b2565033bc810",
"assets/assets/images/cow.svg": "7da28de81a5be51f4199da5050e83041",
"assets/assets/images/dog.svg": "2eb6ca0fe3f48e16b1fe240735710094",
"assets/assets/images/flop.svg": "348da7884f4dec0c4005b82f1f3e410a",
"assets/assets/images/horse.svg": "dd3c29b26d0bc7cdfd537f483c9c5bb3",
"assets/assets/images/ic_launcher.png": "86cc1cee257771a1734941439db68abe",
"assets/assets/images/kiss.svg": "1f47248f358622a7398c81207142239b",
"assets/assets/images/lion.svg": "e23557c7f844b57a30a431444b64af5f",
"assets/assets/images/logo.png": "35a811bf2f3c28e2113a0a0af4c2393b",
"assets/assets/images/mp5.svg": "d198f92b9911c7fdbb12baa694a819a2",
"assets/assets/images/pew.svg": "fd0dd759c1ed1e0a044fa6882e95fd02",
"assets/assets/images/sheep.svg": "1118afb9d722b17e0cb0595bbe4f6e0a",
"assets/assets/images/slap.svg": "13dd4bf16aa9bd2a1ee9a491df0a1614",
"assets/assets/images/water.svg": "bbaf8d037b3f9be9c44f45dd8c6c0156",
"assets/assets/sounds/arrow.mp3": "be64f282a807d6b709fef68df1bde61c",
"assets/assets/sounds/bird.mp3": "a2bf6b9a317bd731b59ed4c77455ca9d",
"assets/assets/sounds/car.mp3": "c9e6e4c465c17c7c6ce496d68a5bc91f",
"assets/assets/sounds/cat.mp3": "a3533d7ce012eadb73b1e5f7b1656547",
"assets/assets/sounds/cow.mp3": "5779deba5d28f124cb2da7a8d8da062a",
"assets/assets/sounds/dog.mp3": "1309186417f9dffd59017542e563c56a",
"assets/assets/sounds/flop.mp3": "3c060741cf4852d6ffe2362ee9debaa0",
"assets/assets/sounds/horse.mp3": "34438e776cbf5cd60247e433f1fc296d",
"assets/assets/sounds/kid.mp3": "e63710a2a0ec035b55409d2f57265c7d",
"assets/assets/sounds/kiss.mp3": "ad2a77afc2b4f98d94739bbaa72ab2d2",
"assets/assets/sounds/lion.mp3": "fe45aa28679d9b540db202be030f1edc",
"assets/assets/sounds/mp5.wav": "b2c730df59a4b798d87bf8c04f46a1ea",
"assets/assets/sounds/pew.wav": "e2ab195b506fa59ec4fb1b4fce955830",
"assets/assets/sounds/sheep.mp3": "5ae895942e40da2f9d080256ec56f9d2",
"assets/assets/sounds/slap.wav": "89158ef230238bd1d40bb9c93d2e95e4",
"assets/assets/sounds/water.mp3": "a4ba16d09e32e58477a33529c35c3371",
"assets/FontManifest.json": "a283d0fe50e5599070256c033d331a1c",
"assets/fonts/Bangers-Regular.ttf": "a82040ecf06139df2f3e653326b3420c",
"assets/fonts/CeraRoundProBlack.otf": "740b76b1119af63f43e28583229b1318",
"assets/fonts/CeraRoundProBold.otf": "4fca61df8d93f64cf79fd4dc833bce1b",
"assets/fonts/CeraRoundProLight.otf": "4a8f9d6e0757e75a40ef72ee73547a92",
"assets/fonts/CeraRoundProMedium.otf": "fea79d41994908a221c6dcaa364e59dd",
"assets/fonts/CeraRoundProRegular.otf": "ef283a0703f4243113c3a318978ba09b",
"assets/fonts/CeraRoundProThin.otf": "6a223e8019f943b5cdaa9d8cc7938305",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/NOTICES": "1e081fbe5e6d0622b910bb1dfb10a9e3",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "cae9cebc05b86a73879f7732146cd45c",
"/": "cae9cebc05b86a73879f7732146cd45c",
"logo.png": "35a811bf2f3c28e2113a0a0af4c2393b",
"main.dart.js": "db2c3d7fac39b2c4af384a699eca6d4e",
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
