const opn = require('opn');
const exec = require('child_process').execFile

/*
*  OPEN browser
*/
let app = 'firefox'

const pageList = [
	// 活動頁
	'http://www.dmm.com/netgame/freeget/',
	// 我的遊戲頁
	'http://personal.games.dmm.com/zh-CHT/my-games/',
	// 拉霸機
	'http://www.dmm.com/netgame/pachinko/-/game/',

	// 城娘
	'http://pc-play.games.dmm.com/play/oshirore/',
	// 企業少女
	'http://pc-play.games.dmm.com/play/kanpani/',
	// 千年R18
	'http://pc-play.games.dmm.co.jp/play/aigis/',
	// 花騎
	'http://pc-play.games.dmm.com/play/flower/',
	// 神姬
	'http://pc-play.games.dmm.com/play/kamipro/',
	// 千年(一般)
	'http://pc-play.games.dmm.com/play/aigisc/',
	// unitiax
	'http://pc-play.games.dmm.co.jp/play/unitiax/',
	// circlet_princess
	'http://pc-play.games.dmm.co.jp/play/circlet_princess_r/',

	// プリコネR
	'dmmgameplayer://priconner/cl/general/priconner',
	// DEAD OR ALIVE Xtreme Venus Vacation
	'dmmgameplayer://doaxvv/cl/general/doaxvv'
]

Promise.all(pageList.map((path) => {
	console.log(`open ${path}`)
	return opn(path, {app})
})).then((v) => {
	console.log('finish')
})







