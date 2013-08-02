soundManager.createSound
  id: 'wrong',
  url: '/sounds/CM139_FX61.wav',
  autoLoad: true,
  autoPlay: false,
  onload: function() {
    alert('The sound '+this.id+' loaded!');
  },
  volume: 50

soundManager.createSound
  id: 'correct',
  url: '/sounds/CM139_FX11.wav',
  autoLoad: true,
  autoPlay: false,
  onload: function() {
    alert('The sound '+this.id+' loaded!');
  },
  volume: 50

soundManager.getSoundById()