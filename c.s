using System;
using System.Linq;

namespace Ю;

public static class Program
{
    public static void Main()
    {
        Console.WriteLine("Укажите свой возвраст і нажмите Enter!");
        int vo = Convert.ToInt32(Console.ReadLine());
        Console.WriteLine("Напишите свое имя і нажмите Enter! ");
        string im = Console.ReadLine();
        string[] prood;
        int[] syym;
        int mm = 0;
        string xx;
        int vb = 0;
        int aqw = 0;
        string input;
        double boon = 0;
        if (vo > 0)
        {
            do
            {
                mm = 0;
                aqw = 0;
                vb = 0;
                Console.WriteLine("виберіть один із пунктів по номерации");
                string[] rrre = { "молочка", "мясне", "солодоші", "напої" };
                foreach (string mll in rrre)
                {
                    aqw++;
                    Console.WriteLine(aqw + ". " + mll);
                }
                int prod = Convert.ToInt32(Console.ReadLine());
                Console.WriteLine("________________");
                switch (prod)
                {
                    case 1:
                        Console.WriteLine("список товаров:");
                        prood = new string[] { "масло", "йогурт", "молоко", "сир", "творог" };
                        syym = new int[] { 230, 200, 100, 150, 120 };
                        for (int i = 0; i < prood.Length; i++)
                        {
                            mm++;
                            Console.WriteLine(mm + ". " + prood[i] + " - " + syym[i] + " грн");
                        }
                        Console.WriteLine("_________________________________________________________");
                        Console.WriteLine("ви хотите вибрать товар? виберете: 1 если да / 2 если нет");
                        xx = Console.ReadLine();
                        if (xx == "1")
                        {
                            Console.WriteLine("впищите цифру указивающею на то сколько товаров ви хотите взять");
                            int qp = Convert.ToInt32(Console.ReadLine());
                            Console.WriteLine("_______________________________________________________________");
                            Console.WriteLine("список товаров:");
                            foreach (string r in prood)
                            {
                                vb++;
                                Console.WriteLine(vb + ". " + r);
                            }
                            int aa = 0;
                            for (int z = 0; z < qp; z++)
                            {
                                if (z == 0)
                                    Console.WriteLine(" вибирете товар по его номерации в списке товаров пока количество товаров не достигнет " + qp);
                                else
                                    Console.WriteLine(" ещо раз вибирете товар по его номерации в списке товаров");
                                string ff = Console.ReadLine();
                                switch (ff)
                                {
                                    case "1":
                                        Console.WriteLine($"ви вибрали {prood[0]} - " + syym[0] + " грн");
                                        boon += syym[0];
                                        aa++;
                                        if (aa != 1)
                                            Console.WriteLine("ето: " + aa + " товара");
                                        else
                                            Console.WriteLine("ето: " + aa + " товар");
                                        break;
                                    case "2":
                                        Console.WriteLine($"ви вибрали {prood[1]} - " + syym[1] + " грн");
                                        boon += syym[1];
                                        aa++;
                                        if (aa != 1)
                                            Console.WriteLine("ето: " + aa + " товара");
                                        else
                                            Console.WriteLine("ето: " + aa + " товар");
                                        break;
                                    case "3":
                                        Console.WriteLine($"ви вибрали {prood[2]} - " + syym[2] + " грн");
                                        boon += syym[2];
                                        aa++;
                                        if (aa != 1)
                                            Console.WriteLine("ето: " + aa + " товара");
                                        else
                                            Console.WriteLine("ето: " + aa + " товар");
                                        break;
                                    case "4":
                                        Console.WriteLine($"ви вибрали {prood[3]} - " + syym[3] + " грн");
                                        boon += syym[3];
                                        aa++;
                                        if (aa != 1)
                                            Console.WriteLine("ето: " + aa + " товара");
                                        else
                                            Console.WriteLine("ето: " + aa + " товар");
                                        break;
                                    case "5":
                                        Console.WriteLine($"ви вибрали {prood[4]} - " + syym[4] + " грн");
                                        boon += syym[4];
                                        aa++;
                                        if (aa != 1)
                                            Console.WriteLine("ето: " + aa + " товара");
                                        else
                                            Console.WriteLine("ето: " + aa + " товар");
                                        break;
                                    default:
                                        Console.WriteLine("Ошибка, такого продукта нету!");
                                        qp++;
                                        break;
                                }
                                if (aa == qp)
                                {
                                    Console.WriteLine("");
                                    Console.WriteLine("ви вибрали все свои товари,нажмите Enter штоб продолжить");
                                    Console.ReadLine();
                                }
                            }
                            Console.WriteLine("________________________________________________________");
                            Console.WriteLine("имя - " + im);
                            Console.WriteLine($"возвраст - {vo} год");
                            Console.WriteLine("общея сума: " + boon + " грн");
                            if (vo >= 60)
                            {
                                boon *= 0.95;
                                Console.WriteLine("общея сума с учотом скидки для пинсеонеров: " + boon + " грн");
                            }
                        }
                        else if (xx == "2")
                            Console.WriteLine("досвидания!");
                        else
                            Console.WriteLine("Помилка спробуйте ще раз!");
                        break;
                    case 2:
                        Console.WriteLine("список товаров:");
                        prood = new string[] { "лосось", "ковбаса", "печинка", "грудки", "акарачок" };
                        syym = new int[] { 600, 100, 250, 300, 110 };
                        for (int i = 0; i < prood.Length; i++)
                        {
                            mm++;
                            Console.WriteLine(mm + ". " + prood[i] + " - " + syym[i] + " грн");
                        }
                        Console.WriteLine("_________________________________________________________");
                        Console.WriteLine("ви хотите вибрать товар? виберете: 1 если да / 2 если нет");
                        xx = Console.ReadLine();
                        if (xx == "1")
                        {
                            Console.WriteLine("впищите цифру указивающею на то сколько товаров ви хотите взять");
                            int qp = Convert.ToInt32(Console.ReadLine());
                            Console.WriteLine("_______________________________________________________________");
                            Console.WriteLine("список товаров:");
                            foreach (string r in prood)
                            {
                                vb++; Console.WriteLine(vb + ". " + r);
                            }
                            int aa = 0;
                            for (int z = 0; z < qp; z++)
                            {
                                if (z == 0)
                                    Console.WriteLine(" вибирете товар по его номерации в списке товаров пока количество товаров не достигнет " + qp);
                                else
                                    Console.WriteLine(" ещо раз вибирете товар по его номерации в списке товаров");
                                string ff = Console.ReadLine();
                                switch (ff)
                                {
                                    case "1":
                                        Console.WriteLine($"ви вибрали {prood[0]} - " + syym[0] + " грн");
                                        boon += syym[0];
                                        aa++;
                                        if (aa != 1)
                                            Console.WriteLine("ето: " + aa + " товара");
                                        else
                                            Console.WriteLine("ето: " + aa + " товар");
                                        break;
                                    case "2":
                                        Console.WriteLine($"ви вибрали {prood[1]} - " + syym[1] + " грн");
                                        boon += syym[1];
                                        aa++;
                                        if (aa != 1)
                                            Console.WriteLine("ето: " + aa + " товара");
                                        else
                                            Console.WriteLine("ето: " + aa + " товар");
                                        break;
                                    case "3":
                                        Console.WriteLine($"ви вибрали {prood[2]} - " + syym[2] + " грн");
                                        boon += syym[2];
                                        aa++;
                                        if (aa != 1)
                                            Console.WriteLine("ето: " + aa + " товара");
                                        else
                                            Console.WriteLine("ето: " + aa + " товар");
                                        break;
                                    case "4":
                                        Console.WriteLine($"ви вибрали {prood[3]} - " + syym[3] + " грн");
                                        boon += syym[3];
                                        aa++;
                                        if (aa != 1)
                                            Console.WriteLine("ето: " + aa + " товара");
                                        else
                                            Console.WriteLine("ето: " + aa + " товар");
                                        break;
                                    case "5":
                                        Console.WriteLine($"ви вибрали {prood[4]} - " + syym[4] + " грн");
                                        boon += syym[4];
                                        aa++;
                                        if (aa != 1)
                                            Console.WriteLine("ето: " + aa + " товара");
                                        else
                                            Console.WriteLine("ето: " + aa + " товар");
                                        break;
                                    default:
                                        Console.WriteLine("Ошибка, такого продукта нету!");
                                        qp++;
                                        break;
                                }
                                if (aa == qp)
                                {
                                    Console.WriteLine("");
                                    Console.WriteLine("ви вибрали все свои товари,нажмите Enter штоб продолжить");
                                    Console.ReadLine();
                                }
                            }
                            Console.WriteLine("________________________________________________________");
                            Console.WriteLine("имя - " + im);
                            Console.WriteLine($"возвраст - {vo} год");
                            Console.WriteLine("общея сума: " + boon + " грн");
                            if (vo >= 60)
                            {
                                boon *= 0.95;
                                Console.WriteLine("общея сума с учотом скидки для пинсеонеров: " + boon + " грн");
                            }
                        }
                        else if (xx == "2")
                            Console.WriteLine("досвидания!");
                        else
                            Console.WriteLine("Помилка спробуйте ще раз!");
                        break;
                    case 3:
                        Console.WriteLine("список товаров:");
                        prood = new string[] { "чипси", "сухарі", "конфети", "печиво", "булочки" };
                        syym = new int[] { 100, 50, 150, 150, 190 };
                        for (int i = 0; i < prood.Length; i++)
                        {
                            mm++;
                            Console.WriteLine(mm + ". " + prood[i] + " - " + syym[i] + " грн");
                        }
                        Console.WriteLine("_________________________________________________________");
                        Console.WriteLine("ви хотите вибрать товар? виберете: 1 если да / 2 если нет");
                        xx = Console.ReadLine();
                        if (xx == "1")
                        {
                            Console.WriteLine("впищите цифру указивающею на то сколько товаров ви хотите взять");
                            int qp = Convert.ToInt32(Console.ReadLine());
                            Console.WriteLine("_______________________________________________________________");
                            Console.WriteLine("список товаров:");
                            foreach (string r in prood)
                            {
                                vb++;
                                Console.WriteLine(vb + ". " + r);
                            }
                            int aa = 0;
                            for (int z = 0; z < qp; z++)
                            {
                                if (z == 0)
                                    Console.WriteLine(" вибирете товар по его номерации в списке товаров пока количество товаров не достигнет " + qp);
                                else
                                    Console.WriteLine(" ещо раз вибирете товар по его номерации в списке товаров");
                                string ff = Console.ReadLine();
                                switch (ff)
                                {
                                    case "1":
                                        Console.WriteLine($"ви вибрали {prood[0]} - " + syym[0] + " грн");
                                        boon += syym[0];
                                        aa++;
                                        if (aa != 1)
                                            Console.WriteLine("ето: " + aa + " товара");
                                        else
                                            Console.WriteLine("ето: " + aa + " товар");
                                        break;
                                    case "2":
                                        Console.WriteLine($"ви вибрали {prood[1]} - " + syym[1] + " грн");
                                        boon += syym[1];
                                        aa++;
                                        if (aa != 1)
                                            Console.WriteLine("ето: " + aa + " товара");
                                        else
                                            Console.WriteLine("ето: " + aa + " товар");
                                        break;
                                    case "3":
                                        Console.WriteLine($"ви вибрали {prood[2]} - " + syym[2] + " грн");
                                        boon += syym[2];
                                        aa++;
                                        if (aa != 1)
                                            Console.WriteLine("ето: " + aa + " товара");
                                        else
                                            Console.WriteLine("ето: " + aa + " товар");
                                        break;
                                    case "4":
                                        Console.WriteLine($"ви вибрали {prood[3]} - " + syym[3] + " грн");
                                        boon += syym[3];
                                        aa++;
                                        if (aa != 1)
                                            Console.WriteLine("ето: " + aa + " товара");
                                        else
                                            Console.WriteLine("ето: " + aa + " товар");
                                        break;
                                    case "5":
                                        Console.WriteLine($"ви вибрали {prood[4]} - " + syym[4] + " грн");
                                        boon += syym[4];
                                        aa++;
                                        if (aa != 1)
                                            Console.WriteLine("ето: " + aa + " товара");
                                        else
                                            Console.WriteLine("ето: " + aa + " товар");
                                        break;
                                    default:
                                        Console.WriteLine("Ошибка, такого продукта нету!");
                                        qp++;
                                        break;
                                }
                                if (aa == qp)
                                {
                                    Console.WriteLine("");
                                    Console.WriteLine("ви вибрали все свои товари,нажмите Enter штоб продолжить");
                                    Console.ReadLine();
                                }
                            }
                            Console.WriteLine("________________________________________________________");
                            Console.WriteLine("имя - " + im);
                            Console.WriteLine($"возвраст - {vo} год");
                            Console.WriteLine("общея сума: " + boon + " грн");
                            if (vo >= 60)
                            {
                                boon *= 0.95;
Console.WriteLine("общея сума с учотом скидки для пинсеонеров: " + boon + " грн");
                            }
                        }
                        else if (xx == "2")
                            Console.WriteLine("досвидания!");
                        else
                            Console.WriteLine("Помилка спробуйте ще раз!");
                        break;
                    case 4:
                        if (vo < 18)
                        {
                            Console.WriteLine("список товаров:");
                            prood = new string[] { "сладкая вода", "мінералка" };
                            syym = new int[] { 120, 45 };
                            for (int i = 0; i < prood.Length; i++)
                            {
                                mm++;
                                Console.WriteLine(mm + ". " + prood[i] + " - " + syym[i] + " грн");
                            }
                            Console.WriteLine("_________________________________________________________");
                            Console.WriteLine("ви хотите вибрать товар? виберете: 1 если да / 2 если нет");
                            xx = Console.ReadLine();
                            if (xx == "1")
                            {
                                Console.WriteLine("впищите цифру указивающею на то сколько товаров ви хотите взять");
                                int qp = Convert.ToInt32(Console.ReadLine());
                                Console.WriteLine("_______________________________________________________________");
                                Console.WriteLine("список товаров:");
                                foreach (string r in prood)
                                {
                                    vb++;
                                    Console.WriteLine(vb + ". " + r);
                                }
                                int aa = 0;
                                for (int z = 0; z < qp; z++)
                                {
                                    if (z == 0)
                                        Console.WriteLine(" вибирете товар по его номерации в списке товаров пока количество товаров не достигнет " + qp);
                                    else
                                        Console.WriteLine(" ещо раз вибирете товар по его номерации в списке товаров");
                                    string ff = Console.ReadLine();
                                    switch (ff)
                                    {
                                        case "1":
                                            Console.WriteLine($"ви вибрали {prood[0]} - " + syym[0] + " грн");
                                            boon += syym[0];
                                            aa++;
                                            if (aa != 1)
                                                Console.WriteLine("ето: " + aa + " товара");
                                            else
                                                Console.WriteLine("ето: " + aa + " товар");
                                            break;
                                        case "2":
                                            Console.WriteLine($"ви вибрали {prood[1]} - " + syym[1] + " грн");
                                            boon += syym[1];
                                            aa++;
                                            if (aa != 1)
                                                Console.WriteLine("ето: " + aa + " товара");
                                            else
                                                Console.WriteLine("ето: " + aa + " товар");
                                            break;
                                        case "3":
                                            Console.WriteLine($"ви вибрали {prood[2]} - " + syym[2] + " грн");
                                            boon += syym[2];
                                            aa++;
                                            if (aa != 1)
                                                Console.WriteLine("ето: " + aa + " товара");
                                            else
                                                Console.WriteLine("ето: " + aa + " товар");
                                            break;
                                        case "4":
                                            Console.WriteLine($"ви вибрали {prood[3]} - " + syym[3] + " грн");
                                            boon += syym[3];
                                            aa++;
                                            if (aa != 1)
                                                Console.WriteLine("ето: " + aa + " товара");
                                            else
                                                Console.WriteLine("ето: " + aa + " товар");
                                            break;
                                        case "5":
                                            Console.WriteLine($"ви вибрали {prood[4]} - " + syym[4] + " грн");
                                            boon += syym[4];
                                            aa++;
                                            if (aa != 1)
                                                Console.WriteLine("ето: " + aa + " товара");
                                            else
                                                Console.WriteLine("ето: " + aa + " товар");
                                            break;
                                        default:
                                            Console.WriteLine("Ошибка, такого продукта нету!");
                                            qp++;
                                            break;
                                    }
                                    if (aa == qp)
                                    {
                                        Console.WriteLine("");
                                        Console.WriteLine("ви вибрали все свои товари,нажмите Enter штоб продолжить");
                                        Console.ReadLine();
                                    }
                                }
                                Console.WriteLine("________________________________________________________");
                                Console.WriteLine("имя - " + im);
                                Console.WriteLine($"возвраст - {vo} год");
                                Console.WriteLine("общея сума: " + boon + " грн");
                                if (vo >= 60)
                                {
                                    boon *= 0.95;
                                    Console.WriteLine("общея сума с учотом скидки для пинсеонеров: " + boon + " грн");
                                }
                            }
                            else if (xx == "2")
                                Console.WriteLine("досвидания!");
                            else
                                Console.WriteLine("Помилка спробуйте ще раз!");
                        }
                        else if (vo >= 18)
                        {
                            Console.WriteLine("список товаров:");
                            prood = new string[] { "сладкая вода", "мінералка", "енергетики", "пиво", "шампанское" };
                            syym = new int[] { 120, 45, 170, 180, 290 };
                            for (int i = 0; i < prood.Length; i++)
                            {
                                mm++;
                                Console.WriteLine(mm + ". " + prood[i] + " - " + syym[i] + " грн");
                            }
                            Console.WriteLine("_________________________________________________________");
                            Console.WriteLine("ви хотите вибрать товар? виберете: 1 если да / 2 если нет");
                            xx = Console.ReadLine();
                            if (xx == "1")
                            {
                                Console.WriteLine("впищите цифру указивающею на то сколько товаров ви хотите взять");
                                int qp = Convert.ToInt32(Console.ReadLine());
                                Console.WriteLine("_______________________________________________________________");
                                Console.WriteLine("список товаров:");
                                foreach (string r in prood)
                                {
                                    vb++;
                                    Console.WriteLine(vb + ". " + r);
                                }
                                int aa = 0;
                                for (int z = 0; z < qp; z++)
                                {
                                    if (z == 0)
                                        Console.WriteLine(" вибирете товар по его номерации в списке товаров пока количество товаров не достигнет " + qp);
                                    else
                                        Console.WriteLine(" ещо раз вибирете товар по его номерации в списке товаров");
                                    string ff = Console.ReadLine();
                                    switch (ff)
                                    {
                                        case "1":
                                            Console.WriteLine($"ви вибрали {prood[0]} - " + syym[0] + " грн");
                                            boon += syym[0];
                                            aa++;
                                            if (aa != 1)
                                                Console.WriteLine("ето: " + aa + " товара");
                                            else
                                                Console.WriteLine("ето: " + aa + " товар");
                                            break;
                                        case "2":
                                            Console.WriteLine($"ви вибрали {prood[1]} - " + syym[1] + " грн");
                                            boon += syym[1];
                                            aa++;
                                            if (aa != 1)
                                                Console.WriteLine("ето: " + aa + " товара");
                                            else
                                                Console.WriteLine("ето: " + aa + " товар");
                                            break;
                                        case "3":
                                            Console.WriteLine($"ви вибрали {prood[2]} - " + syym[2] + " грн");
                                            boon += syym[2];
                                            aa++;
                                            if (aa != 1)
                                                Console.WriteLine("ето: " + aa + " товара");
                                            else
                                                Console.WriteLine("ето: " + aa + " товар");
                                            break;
                                        case "4":
                                            Console.WriteLine($"ви вибрали {prood[3]} - " + syym[3] + " грн");
                                            boon += syym[3];
                                            aa++;
                                            if (aa != 1)
                                                Console.WriteLine("ето: " + aa + " товара");
                                            else
                                                Console.WriteLine("ето: " + aa + " товар");
                                            break;
                                        case "5":
                                            Console.WriteLine($"ви вибрали {prood[4]} - " + syym[4] + " грн");
                                            boon += syym[4];
                                            aa++;
                                            if (aa != 1)
                                                Console.WriteLine("ето: " + aa + " товара");
                                            else
                                                Console.WriteLine("ето: " + aa + " товар");
                                            break;
                                        default:
                                            Console.WriteLine("Ошибка, такого продукта нету!");
                                            qp++;
                                            break;
                                    }
                                    if (aa == qp)
                                    {
                                        Console.WriteLine("");
                                        Console.WriteLine("ви вибрали все свои товари,нажмите Enter штоб продолжить");
                                        Console.ReadLine();
                                    }
                                }
                                Console.WriteLine("________________________________________________________");
                                Console.WriteLine("имя - " + im);
                                Console.WriteLine($"возвраст - {vo} год");
                                Console.WriteLine("общея сума: " + boon + " грн");
                                if (vo >= 60)
                                {
                                    boon *= 0.95;
                                    Console.WriteLine("общея сума с учотом скидки для пинсеонеров: " + boon + " грн");
                                }
                            }
                            else if (xx == "2")
                                Console.WriteLine("досвидания!");
                            else
                                Console.WriteLine("Помилка спробуйте ще раз!");
                        }
                        break;
                }
                Console.WriteLine("");
                Console.WriteLine("");
                Console.WriteLine("____________________________________________________________");
                Console.WriteLine("Введите '0' и нажмите Enter штоб купить ещо щтото в других отделах магазина, или просто нажмите Enter для оплати");
                input = Console.ReadLine();
                Console.Clear();
                if (input == "0")
                    Console.WriteLine($"ви должни {boon} грн за прошлие покупки");
                else if (input == "")
                {
                    Console.WriteLine($"с покупателя {im} списано - {boon} грн");
                    Console.WriteLine("спасиба за покупку!");
                }
            } while (input.ToLower() == "0");
        }
    }
}