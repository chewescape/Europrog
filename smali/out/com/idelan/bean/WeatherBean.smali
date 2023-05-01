.class public Lcom/idelan/bean/WeatherBean;
.super Ljava/lang/Object;
.source "WeatherBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private city:Ljava/lang/String;

.field private co:I

.field private co2:I

.field private coldDesc:Ljava/lang/String;

.field private coldLv:Ljava/lang/String;

.field private district:Ljava/lang/String;

.field private dressDesc:Ljava/lang/String;

.field private dressLv:Ljava/lang/String;

.field private dt:I

.field private h:I

.field private isDay:I

.field private lunar:Ljava/lang/String;

.field private no2:I

.field private nt:I

.field private o3:I

.field private pm10:I

.field private pm25:I

.field private privce:Ljava/lang/String;

.field private sportDesc:Ljava/lang/String;

.field private sportLv:Ljava/lang/String;

.field private t:I

.field private ts:Ljava/lang/String;

.field private uvDesc:Ljava/lang/String;

.field private uvLv:Ljava/lang/String;

.field private warnLevel:Ljava/lang/String;

.field private warnType:Ljava/lang/String;

.field private wd:Ljava/lang/String;

.field private weather:Ljava/lang/String;

.field private weatherD:Ljava/lang/String;

.field private weatherN:Ljava/lang/String;

.field private wp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/idelan/bean/WeatherBean;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCo()I
    .registers 2

    .prologue
    .line 159
    iget v0, p0, Lcom/idelan/bean/WeatherBean;->co:I

    return v0
.end method

.method public getCo2()I
    .registers 2

    .prologue
    .line 167
    iget v0, p0, Lcom/idelan/bean/WeatherBean;->co2:I

    return v0
.end method

.method public getColdDesc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/idelan/bean/WeatherBean;->coldDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getColdLv()Ljava/lang/String;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/idelan/bean/WeatherBean;->coldLv:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrict()Ljava/lang/String;
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/idelan/bean/WeatherBean;->district:Ljava/lang/String;

    return-object v0
.end method

.method public getDressDesc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/idelan/bean/WeatherBean;->dressDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getDressLv()Ljava/lang/String;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/idelan/bean/WeatherBean;->dressLv:Ljava/lang/String;

    return-object v0
.end method

.method public getDt()I
    .registers 2

    .prologue
    .line 87
    iget v0, p0, Lcom/idelan/bean/WeatherBean;->dt:I

    return v0
.end method

.method public getH()I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lcom/idelan/bean/WeatherBean;->h:I

    return v0
.end method

.method public getIsDay()I
    .registers 2

    .prologue
    .line 135
    iget v0, p0, Lcom/idelan/bean/WeatherBean;->isDay:I

    return v0
.end method

.method public getLunar()Ljava/lang/String;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/idelan/bean/WeatherBean;->lunar:Ljava/lang/String;

    return-object v0
.end method

.method public getNo2()I
    .registers 2

    .prologue
    .line 183
    iget v0, p0, Lcom/idelan/bean/WeatherBean;->no2:I

    return v0
.end method

.method public getNt()I
    .registers 2

    .prologue
    .line 95
    iget v0, p0, Lcom/idelan/bean/WeatherBean;->nt:I

    return v0
.end method

.method public getO3()I
    .registers 2

    .prologue
    .line 175
    iget v0, p0, Lcom/idelan/bean/WeatherBean;->o3:I

    return v0
.end method

.method public getPm10()I
    .registers 2

    .prologue
    .line 151
    iget v0, p0, Lcom/idelan/bean/WeatherBean;->pm10:I

    return v0
.end method

.method public getPm25()I
    .registers 2

    .prologue
    .line 143
    iget v0, p0, Lcom/idelan/bean/WeatherBean;->pm25:I

    return v0
.end method

.method public getPrivce()Ljava/lang/String;
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/idelan/bean/WeatherBean;->privce:Ljava/lang/String;

    return-object v0
.end method

.method public getSportDesc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/idelan/bean/WeatherBean;->sportDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getSportLv()Ljava/lang/String;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/idelan/bean/WeatherBean;->sportLv:Ljava/lang/String;

    return-object v0
.end method

.method public getT()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/idelan/bean/WeatherBean;->t:I

    return v0
.end method

.method public getTs()Ljava/lang/String;
    .registers 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/idelan/bean/WeatherBean;->ts:Ljava/lang/String;

    return-object v0
.end method

.method public getUvDesc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/idelan/bean/WeatherBean;->uvDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getUvLv()Ljava/lang/String;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/idelan/bean/WeatherBean;->uvLv:Ljava/lang/String;

    return-object v0
.end method

.method public getWarnLevel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/idelan/bean/WeatherBean;->warnLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getWarnType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/idelan/bean/WeatherBean;->warnType:Ljava/lang/String;

    return-object v0
.end method

.method public getWd()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/idelan/bean/WeatherBean;->wd:Ljava/lang/String;

    return-object v0
.end method

.method public getWeather()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/idelan/bean/WeatherBean;->weather:Ljava/lang/String;

    return-object v0
.end method

.method public getWeatherD()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/idelan/bean/WeatherBean;->weatherD:Ljava/lang/String;

    return-object v0
.end method

.method public getWeatherN()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/idelan/bean/WeatherBean;->weatherN:Ljava/lang/String;

    return-object v0
.end method

.method public getWp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/idelan/bean/WeatherBean;->wp:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .registers 2
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/idelan/bean/WeatherBean;->city:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setCo(I)V
    .registers 2
    .param p1, "co"    # I

    .prologue
    .line 163
    iput p1, p0, Lcom/idelan/bean/WeatherBean;->co:I

    .line 164
    return-void
.end method

.method public setCo2(I)V
    .registers 2
    .param p1, "co2"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/idelan/bean/WeatherBean;->co2:I

    .line 172
    return-void
.end method

.method public setColdDesc(Ljava/lang/String;)V
    .registers 2
    .param p1, "coldDesc"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/idelan/bean/WeatherBean;->coldDesc:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setColdLv(Ljava/lang/String;)V
    .registers 2
    .param p1, "coldLv"    # Ljava/lang/String;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/idelan/bean/WeatherBean;->coldLv:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .registers 2
    .param p1, "district"    # Ljava/lang/String;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/idelan/bean/WeatherBean;->district:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public setDressDesc(Ljava/lang/String;)V
    .registers 2
    .param p1, "dressDesc"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/idelan/bean/WeatherBean;->dressDesc:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setDressLv(Ljava/lang/String;)V
    .registers 2
    .param p1, "dressLv"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/idelan/bean/WeatherBean;->dressLv:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setDt(I)V
    .registers 2
    .param p1, "dt"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/idelan/bean/WeatherBean;->dt:I

    .line 92
    return-void
.end method

.method public setH(I)V
    .registers 2
    .param p1, "h"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/idelan/bean/WeatherBean;->h:I

    .line 60
    return-void
.end method

.method public setIsDay(I)V
    .registers 2
    .param p1, "isDay"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/idelan/bean/WeatherBean;->isDay:I

    .line 140
    return-void
.end method

.method public setLunar(Ljava/lang/String;)V
    .registers 2
    .param p1, "lunar"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/idelan/bean/WeatherBean;->lunar:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setNo2(I)V
    .registers 2
    .param p1, "no2"    # I

    .prologue
    .line 187
    iput p1, p0, Lcom/idelan/bean/WeatherBean;->no2:I

    .line 188
    return-void
.end method

.method public setNt(I)V
    .registers 2
    .param p1, "nt"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/idelan/bean/WeatherBean;->nt:I

    .line 100
    return-void
.end method

.method public setO3(I)V
    .registers 2
    .param p1, "o3"    # I

    .prologue
    .line 179
    iput p1, p0, Lcom/idelan/bean/WeatherBean;->o3:I

    .line 180
    return-void
.end method

.method public setPm10(I)V
    .registers 2
    .param p1, "pm10"    # I

    .prologue
    .line 155
    iput p1, p0, Lcom/idelan/bean/WeatherBean;->pm10:I

    .line 156
    return-void
.end method

.method public setPm25(I)V
    .registers 2
    .param p1, "pm25"    # I

    .prologue
    .line 147
    iput p1, p0, Lcom/idelan/bean/WeatherBean;->pm25:I

    .line 148
    return-void
.end method

.method public setPrivce(Ljava/lang/String;)V
    .registers 2
    .param p1, "privce"    # Ljava/lang/String;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/idelan/bean/WeatherBean;->privce:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setSportDesc(Ljava/lang/String;)V
    .registers 2
    .param p1, "sportDesc"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/idelan/bean/WeatherBean;->sportDesc:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setSportLv(Ljava/lang/String;)V
    .registers 2
    .param p1, "sportLv"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/idelan/bean/WeatherBean;->sportLv:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setT(I)V
    .registers 2
    .param p1, "t"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/idelan/bean/WeatherBean;->t:I

    .line 52
    return-void
.end method

.method public setTs(Ljava/lang/String;)V
    .registers 2
    .param p1, "ts"    # Ljava/lang/String;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/idelan/bean/WeatherBean;->ts:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public setUvDesc(Ljava/lang/String;)V
    .registers 2
    .param p1, "uvDesc"    # Ljava/lang/String;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/idelan/bean/WeatherBean;->uvDesc:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setUvLv(Ljava/lang/String;)V
    .registers 2
    .param p1, "uvLv"    # Ljava/lang/String;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/idelan/bean/WeatherBean;->uvLv:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setWarnLevel(Ljava/lang/String;)V
    .registers 2
    .param p1, "warnLevel"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/idelan/bean/WeatherBean;->warnLevel:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setWarnType(Ljava/lang/String;)V
    .registers 2
    .param p1, "warnType"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/idelan/bean/WeatherBean;->warnType:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setWd(Ljava/lang/String;)V
    .registers 2
    .param p1, "wd"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/idelan/bean/WeatherBean;->wd:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setWeather(Ljava/lang/String;)V
    .registers 2
    .param p1, "weather"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/idelan/bean/WeatherBean;->weather:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setWeatherD(Ljava/lang/String;)V
    .registers 2
    .param p1, "weatherD"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/idelan/bean/WeatherBean;->weatherD:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setWeatherN(Ljava/lang/String;)V
    .registers 2
    .param p1, "weatherN"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/idelan/bean/WeatherBean;->weatherN:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setWp(Ljava/lang/String;)V
    .registers 2
    .param p1, "wp"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/idelan/bean/WeatherBean;->wp:Ljava/lang/String;

    .line 76
    return-void
.end method
