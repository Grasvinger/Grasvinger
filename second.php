<?php
session_start();
echo 'Hash: '.$_SESSION['hash'].'<br>'.'userName: '.$_SESSION['userName'];
