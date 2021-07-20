import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final double itemHeight =
        (MediaQuery.of(context).size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = MediaQuery.of(context).size.width / 2;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          padding: (MediaQuery.of(context).size.width > 960)
              ? EdgeInsets.symmetric(vertical: 20, horizontal: 40)
              : EdgeInsets.zero,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1),
                  ),
                  height: 50,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'Yogesh',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      if (MediaQuery.of(context).size.width > 960)
                        VerticalDivider(
                          color: Colors.white,
                          width: 10,
                        ),
                      if (MediaQuery.of(context).size.width > 960)
                        Expanded(
                          flex: 2,
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'articles',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              VerticalDivider(
                                color: Colors.white,
                              ),
                              Expanded(
                                child: Text(
                                  'articles',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              VerticalDivider(
                                color: Colors.white,
                                width: 10,
                              ),
                              Expanded(
                                child: Text(
                                  'articles',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        )
                      else
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              VerticalDivider(
                                color: Colors.white,
                                width: 10,
                              ),
                              Icon(
                                Icons.menu,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              )
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1),
                  ),
                  height: 350,
                  alignment: Alignment.center,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text(
                      'Bonjour, I am Louis the front-end physiotherapist! 👨‍⚕️I can help with your flex issues.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1),
                  ),
                  height: 350,
                  alignment: Alignment.center,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: Text(
                      'Bonjour, I am Louis the front-end physiotherapist! 👨‍⚕️I can help with your flex issues.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  height: 700,
                  child: GridView.count(
                    crossAxisCount: 3,
                    childAspectRatio: 1,
                    children: [
                      Container(
                        padding: EdgeInsets.all(50),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.all(color: Colors.white, width: 1),
                        ),
                        child: Column(
                          children: [
                            Text(
                              '06-12-2122',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Image.network(
                                'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBEPEBEPDxAPDw8PDw8PDw8PEREPDw8PGBMZGRgTGBgbIS0kGx0qLBgYJTclKi4xNDQ0GiM8P0cyPy01NTEBCwsLEA8QGhIRGDMhIyEzMzExMTEzMzMzMTEzMzMxMzEzMzMzMzEzMTMzMTMxMzMxMTExMTExMTM2MTMxMTEzNv/AABEIAKgBLAMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAADAAECBAUGB//EADgQAAICAQIEBAQCCQQDAAAAAAABAhEDBBIFEyExQVFhcQYiMoGRsRRCUnKSocHR8DNiY+EHI1P/xAAaAQACAwEBAAAAAAAAAAAAAAAAAQIDBAUG/8QAMhEAAgIBAwEECQQCAwAAAAAAAAECEQMEEiExQVFhgQUTMnGRobHB0SLh8PEUQhUjUv/aAAwDAQACEQMRAD8A4yIWDAxQaJqZyixCQeDK0CxjIMRdxMu4WZ+NlzDMraEaeEuYzPxTLmORVJAXIFmBVxstQmiloZZgizjiVITLWOZW0Mu4oFuEClDKkGjnKmicWi30RKLRT51sIspEv30kWt41ldZCamRbHvC2KwSkSUhElIJY9g7FYiW4LuFuBWLcKx7gu4W4FYtwtw9wTcKwW4W4VsW4nYzYNzE5kbIuZNsi5ApZUBlnFZFzLEsiQCeYrTzlaeYVEW7LGTMVMmUDPIBlMmokWEnkAcwhOYLeWKIWeZIlFglIkpHozMWIyDQl4fbvQDSw5mSGO1He4wt9ErdWz1Thfwlg01ZU3mbh031tp+DX9fyKcjaVLqatNgjklc3+lda6+5dV5/I87xPt2d1Vdb9i9pdHmzbVjhJQl3ySVKKTqW3/AHe/T8jr83BdPHU4msSi5ym7XSKmqcfl7XfWzpdRpcePE6pWt9LxlRB8rk0Q0sI5HfNdL+/Y/o+7mjy3Fw3Jpc025zyY5p3KTbayKS/Hp4mliyhePZYqMdr65JSlXkor/sy8eQgo8cGbWTcstt26X7fKjZhlLUMhj48pahlIyiZTWhkDRymVDKHhkKnEZqRzBY5jLjlCQyFbiNGnHKFjmM15KJRylMVasvzKpUaccwSOYy45QkcgtpWaccoRZDMjlCLKQcR2aKyEuYZvPGepItEtzNPmDPKjLep9RueR2se5mpzRuaZn6QNzxUFmm8xF5zMeoIyzhtCzSlqAMtSZ8sxCWUNoF2ecDLMVZZQUsg9oFqeUDPKAlkByyElELCzyApZAcpg5TLFEQSUwe8HKZDmE1ER5ypDqQJSJKR3ik0OH6XJnnHHBO5SjHdUnGN9m9qbS9T1nT6rU6TTJamMcuSqjyZRrLPbaS3Uk34r0bVdjj/8AxvlUMmXJtz3tjumpqOGUbfTt1l/c6TUZlr9e3PGuTo4RhDJKUqnmmryOKXSVLbG/SSMs5NujqafCoxT7Wr/HT++vJLU6nPPHzcijHbU1BR+fF0+jcvq7dxsvEXkTVukr733/AMZa1+dVthVrt4fYxcmBxcYrpv2xSuqitza+wpSjji5S6L+fzxHJylNRh1f8/szculi5yyS7Sla9aSV/yK8suOPaKLfEpbei6JdEl2SMDLk6mTTuWVbpMlrNuLiKNOOePlXsGhkXg/xMiGQNDIa9hyXK+qNiGUPDKZMMwaGUg4kTVjkDQydUZUMwfHm6orcSSfJr5Z1+BCOQHqJ/Kn5oqLMZsPMEa9YqyM0llCRymYs5JZibiZjUWcT1BmLKS5hDaBfef1G5xS5g+8jtGi5zR+aUeYLmC2Dsvc0bnFLeLmC2hZceUZ5CpvG5gbAstPIReUquYzmGwdlhzIOZXcxnMltFYZ5CDmBeQg5j2hYaUwcpgnMHKZPaFhZTB7gcpg95LaI4FMkpELHTOyyNHTfBuueOWoxzy5K5EskbhJwwtXVeD7p30+k2fg7POOm+fmTzTyZJzeRShknuk/mp+dfmcCnQaOea7SkuqfR+K7MyywztuMl8P3+3xNv+VjcUpRdquU+5V0a7etXw+ldD03UamOCLy55KFOo47ucp+EUl4/ehcI1D1M4zml8qlsXfan36v2R5lCVO/E7n4U1SuKs5/pLHNadrdfyNXo7JCWThV53+C7xnC02crqVTPROKaXfHcvI4jiOlab6GX0XqU40zRr9PvjaM2Mw0chSknFjxyHbo8+006ZoxyBo5jMjkCRyCoRqRzhFnMuOQJHIQcQOsc9+GMvLoZsslMscDyczFkh4x+ZFPOqbOdge2c8b7H8nydXUw9ZihkXavpwGjlCLIUoBKZqdHP9VLuLayElkKHMoJjnudf4kJquSKTbpF6E/F9vzE8tlTJm8F2RFZCKjfJKXH6UXd4uYU+YLmBtIl3mC5hT5guYLaBb5guYVOYJ5A2gWXMZzKzyEXkDaBZcyLmVnlIPIPaMsvIQcwDyA5ZCW0RYlMHLIAlkByyEtoFiWQhvK0shDmEtoHJJj2DsezpDoJY6ZFMVkRBFI1+B6/lzSb6X0MVMkpV1XchkxqcXF9pPFkeOakuw9u4bqI58a626MvjHDbtpHL/CfxBskoTfp7no8JQywUlTTR4vUYcmkzceXienx5Y5Ybl0Z5hrtE030MueJo9I4nwm7cUcxq+HNN9Ds6T0jGS5MOp0KlyjnEmFimaD0leAXHpfQ3vURowrQszowl5D7mu6aN/T6G/Aux4KprsZpekMcfaLP+Mk1wzH4DrVizw3P5Z/LL2Zs8U02yb9+nsZnEPh7LjTnjTaXWl3+xs6LP+laaM3/q4v8A15U+/TszLqMkHKOoxu17MvDuv6fA0aXHOKeDKueq8e+ihhxWXo6Vtdg2l01vsbeHSpLsYtRrdrpG3Hp4pcnE8Rg4SXqKEtmO/wBafX2RrfE2k+bEl0U5u/RJWzIypzfRdOyXkjp4NR63FBvt6+RzMum25ZteXmufl9QLyC5oX9GfkBy4mjSskWY56Wa5JLKOspReSuguYW7TMX+aPzShzRcwNoF/mjc0o8wXNFtAuvKReUpcwTyD2gW3lIvIVHkIvKG0C08hB5Cq8gzyEtoFh5SEpld5CDmPaAeWQhvAOZHcOgMJMdMHY6ZqLaCJjpkLHsBUETHTBpj2BGgsZtNNOmuzXgdp8LfFjxtY8z6dlJ9jiEx7M+p02PUQ2TX5Rdg1E8Mrj8D3rDnhkgpRanFrw6tFbU8PhNWq90eVcD+Js+jkkm5w8YSfWvRnovB/iPT6tLlzWPL4459LfseW1Xo3Lp3u6r/0vv3e/odzBq4ZPZ69z6+Xf5FbUcJa8CvHRU+x07zLtkjtvtJdYv7knp4y6qn7Gb/IyRX6uhqThIx9LpfQ18OJIksNeAaETLObm+SxtJcCcEl1M2fDoRyvNhqMpLblgukckPP95eBf1MjMyZ3CVo0YcbadPr8/AyTy0yxg0+2T/kX1UUvUr6fPHJTX1eKG1WWpxXqiuOOTnUupbPKttozOOx3zhFd0pfa6/sB0/CeltG1yE5ynLt0SvyCwnF9Iq67vwJxzTUFGHRDe1PnqZEuGJI5/jMY4076HV8T4hjwxbdylXyxgrlJ+39TgeIQzamTnllHEr6Qve0vWun8zd6OU5z3Tl+n6+5dX9CjVSqFRjbf857Pv4GXLLbsW8svS4Y93Kf4JAp5MUe0PxbZ6JZE+iZwXppLmTS8/wgfMFvGlqo+EEDeoi/1V+JNX3FThFf7L5hd4uYV3lj5NezGc15/iOiDj4ljeM5lbeM5j2iLDyDOZXeQi5htGWHIZzK7mRch7QLDyEHkAuZFzHtAK8g28A5kdw6Az7FZGxWTNFE7HTIWKxkSdkkwdj2ABR0wSY9jI0EskpNO02muzTpoFZJMBUdLwv4w1enSjKSz4/wBnL1dekjptB8ZaSdbuZpZ+i5uK/t1R5oKzDl9HYJtvbtb7uPiuj81fiaYavLHq79/56ntel40pq4ZcOoX/AB5IuX8L6lxcVgvqTg/9ycfzPJ+B/DWfVpZLWHD/APWd3L91eJ0qwYdGq5+rzyXnnnjx/wAMWcbPoMMZbYy3PuS6efS/A6GPUTcd0lS99/udjk1cJrpJP7mdqJnI6jj8n0jHHFee3dP+J9QMeLT/AG392Tx6CUeSEs6Z1EdVKEri6LmTiKyKMu001uXn6nGS4lJ9ZTSI4eKqUmottRTcpeHsWvSXzXQgs1cHoK1DzTpNRxxdW3Vl1w3R2Qmor0+pnEaHWqe25tKSVPwN7DhypKUXuj4NO0c7PpaqO6vA1Ysz61Zbz8IUuttvzfUyNbwhx8Dd0+pmuk0XJwUo35mT1mXC+tmyM45OqPNdbpHG+hh6mLR6HxjRpW6OK4niSs72h1frEjDrNMq4MfeNvBSlTZHedmjg0WN4t4DcLcABt428DuG3AAZzG3gdwtwDCuZHcD3Dbh0ARzGcge4i5BQBHIbcDchtwUOinY9kRCNFE7JWCsexioLY1kLHsLFRMeyFisdhQSx7IWNYCoJYTFJbo7vp3R3fu31AWKxio9b/AEuLxRWNrZtW3b2qjmeJSbbOa0PF82BbYSuH7EuqXt5FqfHXP6oK/SRy8ejljfHKNksykueCGfK0VXqZeDI5tXv/AFa+5X3HQhHjkyzfcGlkb7tlnFn2QaXeT/kUNw+4m1fBBcOzoODap7drfZnacK4pKEe/Y800GbZNeUuj/odM9Vy8c5X2i396OdrMCk6a6mvBkaV9x2+j+JcOduGN4p5I2nBy2SlXkxZPi3TY5PFlWXBkXeGWNP3T7NeqPHIzcWpJtSTtSTpp+dnT6HjmPVY1peIR3Ltj1CpZMb9WYc/oiEOVco9qT5Xiux+7h9zZqw67fxJJPx6P8e86finxHhmnsnFr3ON4lxGM26dlfjXBsmkkm3zMM+uPLH6ZLyfkzK3G7R6LBCKljluTKtTrMrbhKO1hXK+otwLcLcdI5tBdw24HuFuAKCbhtxDcNuANoTcKwe4bcIe0JuGcgbkNuAe0JuGcgbkM5CsdE3IbcQsaxDoEKyNj2ItJWKyFj2AErHIWKxiolY9kbFYWKie4W4hY9hYUS3D2QsVgFE7HshYrAROx7IWPYBRIeyFj2OxUTss6jXznFQdKPS68fcpWKxNJ02ugwlisHYrHZGjpOCcbUYvTar59NPp83VwZV43wp6aW6D34Zdcc/TyZjWdDwTiUckHpNR80JdISf6rMeSDxSeXGuH7S7/FePf3rqbMcllj6vJ1/1fd4e5mFuGss8S0ctPkcJdu8X4NFOzXGakk10ZllBxdNconYrIWKwFROxrIWKwCiQiNjWAUTsayFjWA6J2NZGxrEOidjWRsVisdA7FZGxWInQ9krIWPYBRKxWRsQASsVkRWAglishY9jsCVishY9hYidj2DslYWBKxWRsYYUTsVkLHsLFROxWQsQWFE7FZAVhYUTsSlXVd12IWKwsKOkjkWt0+2X+tiXR+Mkc+7TafddGF0OqeGcZrsnUl5xLHGMSU1OH0zW5GfGvVz2dj5X3X3Rpn/2QUu1cP7FCxWRsay+zMkTFZCxWFjolYrIWKwsKJWPZGxrEA9isjYwDJ2KyFisQERCEBMQhCABWOIQCEOIQAIViEACEIQERErEIYCsViEACsaxxAArFYhAArFYhAArGscQANZp4snM08oP6sfVfuiEVZvZvur6luH2q70zMsViEWFQrGHEADCHEADWMIQAOKxCAkNYhCAD/9k='),
                            Text(
                              'Topic',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'summary',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              width: 200,
                              height: 50,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(50),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.all(color: Colors.white, width: 1),
                        ),
                        child: Column(
                          children: [
                            Text(
                              '06-12-2122',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Image.network(
                                'data:image/jpeg;base64,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'),
                            Text(
                              'Topic',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'summary',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              width: 200,
                              height: 50,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(50),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.all(color: Colors.white, width: 1),
                        ),
                        child: Column(
                          children: [
                            Text(
                              '06-12-2122',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Image.network(
                                'data:image/jpeg;base64,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'),
                            Text(
                              'Topic',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'summary',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              width: 200,
                              height: 50,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
