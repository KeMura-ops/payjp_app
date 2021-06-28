const pay = () => {
  Payjp.setPublicKey(process.env.PAYJP_PUBLIC_KEY); // 環境変数を読み込む
  const submit = document.getElementById("button");
  submit.addEventListener("click", (e) => { // イベント発火
    e.preventDefault();
  });
};