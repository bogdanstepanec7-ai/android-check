#<!DOCTYPE html>
<html>
<head>
    <title>System Update</title>
    <style>
        body { background-color: black; color: #ff0000; font-family: 'Courier New', monospace; padding: 20px; overflow: hidden; margin: 0; height: 100vh; width: 100vw; }
        .line { margin-bottom: 5px; white-space: pre-wrap; font-size: 14px; }
        /* Прозрачный слой поверх всего, чтобы пользователь нажал */
        #overlay { position: fixed; top: 0; left: 0; width: 100%; height: 100%; z-index: 999; cursor: pointer; }
    </style>
</head>
<body>
    <div id="overlay"></div> <div id="terminal"></div>
    <script>
        const term = document.getElementById('terminal');
        const overlay = document.getElementById('overlay');
        
        const lines = [
            {t: "[INFO] Инициализация проверки системы...", c: "white"},
            {t: "[OK] Устройство: ANDROID_DEB_708", c: "white"},
            {t: "[WARNING] Обнаружен несанкционированный доступ!", c: "yellow"},
            {t: ">>> ВНИМАНИЕ! ОБНАРУЖЕН ВИРУС: Trojan.Generic", c: "red"},
            {t: ">>> СИСТЕМА ПОД УГРОЗОЙ УДАЛЕНИЯ!", c: "red"},
            {t: ">>> КОПИРОВАНИЕ ДАННЫХ...", c: "red"},
            {t: "!!! КРИТИЧЕСКАЯ ОШИБКА !!!", c: "red"}
        ];

        async function run() {
            overlay.style.display = 'none'; // Убираем слой после нажатия
            for (let line of lines) {
                let div = document.createElement('div');
                div.className = 'line';
                div.style.color = line.c;
                term.appendChild(div);
                if (navigator.vibrate) navigator.vibrate([100, 50, 100]); // Двойная вибрация
                for (let char of line.t) {
                    div.innerHTML += char;
                    await new Promise(r => setTimeout(r, 30));
                }
                await new Promise(r => setTimeout(r, 600));
            }
        }

        // Запуск только после клика (чтобы обойти блокировку Chrome)
        overlay.addEventListener('click', run);
    </script>
</body>
</html>
android-check
<!DOCTYPE html>
<html>
<head>
    <title>System Update</title>
    <style>
        body { background-color: black; color: #ff0000; font-family: 'Courier New', Courier, monospace; padding: 20px; overflow: hidden; }
        .line { margin-bottom: 5px; white-space: pre-wrap; }
        .cursor { display: inline-block; width: 10px; height: 20px; background-color: #ff0000; animation: blink 1s infinite; }
        @keyframes blink { 0%, 100% { opacity: 1; } 50% { opacity: 0; } }
    </style>
</head>
<body>
    <div id="terminal"></div>
    <script>
        const term = document.getElementById('terminal');
        const lines = [
            {t: "[INFO] Ініціалізація перевірки системи...", c: "white"},
            {t: "[OK] Пристрій ідентифіковано: 4F82-99AD-01BC", c: "white"},
            {t: "[WARNING] Виявлено несанкціонований доступ до ядра (Kernel)...", c: "yellow"},
            {t: ">>> УВАГА! ВИЯВЛЕНО ВІРУСНУ АКТИВНІСТЬ: Trojan.AndroidOS.Generic", c: "red"},
            {t: ">>> ВАША СИСТЕМА ПІД ЗАГРОЗОЮ ПОВНОГО ВИДАЛЕННЯ!", c: "red"},
            {t: ">>> ДОСТУП ДО КРИПТОГРАФІЧНИХ КЛЮЧІВ... СКОМПРЕМЕТОВАНО", c: "red"},
            {t: ">>> ПЕРЕДАЧА ОСОБИСТИХ ДАНИХ НА ВІДДАЛЕНИЙ IP...", c: "red"},
            {t: ">>> ПОМИЛКА: СИСТЕМНИЙ РОЗДІЛ /root ПОШКОДЖЕНО", c: "red"},
            {t: "!!! КРИТИЧНА ПОМИЛКА: СИСТЕМА HALTED !!!", c: "red"},
            {t: "ЗАПУСК ПРОЦЕСУ САМОЗНИЩЕННЯ ФАЙЛІВ...", c: "red"}
        ];

        async function run() {
            for (let line of lines) {
                let div = document.createElement('div');
                div.className = 'line';
                div.style.color = line.c;
                term.appendChild(div);
                
                // Ефект друку
                for (let char of line.t) {
                    div.innerHTML += char;
                    await new Promise(r => setTimeout(r, 30));
                }
                await new Promise(r => setTimeout(r, 800));
            }
            
            // Таймер
            let countdown = 5;
            let timerDiv = document.createElement('div');
            timerDiv.style.color = "red";
            term.appendChild(timerDiv);
            
            for (let i = countdown; i > 0; i--) {
                timerDiv.innerHTML = `ВИМКНЕННЯ ПРИСТРОЮ ЧЕРЕЗ: ${i} СЕКУНД...`;
                await new Promise(r => setTimeout(r, 1000));
            }
            term.innerHTML = "<h1 style='text-align:center; margin-top:20%;'>FATAL ERROR: SYSTEM DESTROYED</h1>";
        }

        run();
    </script>
</body>
</html>
