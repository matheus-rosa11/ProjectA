var express = require("express");
var router = express.Router();

var usuarioController = require("../controllers/usuarioController");

router.get("/", function (req, res) {
    usuarioController.testar(req, res);
});

router.get("/listar", function (req, res) {
    usuarioController.listar(req, res);
});

router.get("/getAlbums", function (req, res) {
    usuarioController.getAlbums(req, res);
});

router.get("/getStyles", function (req, res) {
    usuarioController.getStyles(req, res);
});

//Recebendo os dados do html e direcionando para a função cadastrar de usuarioController.js
router.post("/cadastrar", function (req, res) {
    usuarioController.cadastrar(req, res);
})

router.post("/autenticar", function (req, res) {
    usuarioController.entrar(req, res);
});

router.post("/votoUsuario", function (req, res) {
    usuarioController.votar(req, res);
});

router.post("/votoEstilo", function (req, res) {
    usuarioController.votarEstilo(req, res);
});

router.post("/registroVotoEstilo", function (req, res) {
    usuarioController.registrarVotoEstilo(req, res);
});

router.post("/registroVotoArtista", function (req, res) {
    usuarioController.registrarVotoArtista(req, res);
});

router.post("/getLastData", function (req, res) {
    usuarioController.getLastData(req, res);
});

module.exports = router;