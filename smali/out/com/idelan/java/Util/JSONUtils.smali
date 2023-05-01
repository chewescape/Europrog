.class public Lcom/idelan/java/Util/JSONUtils;
.super Ljava/lang/Object;
.source "JSONUtils.java"


# static fields
.field public static isPrintException:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lcom/idelan/java/Util/JSONUtils;->isPrintException:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Z
    .registers 6
    .param p0, "jsonData"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Boolean;

    .prologue
    .line 571
    invoke-static {p0}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 572
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 582
    :goto_a
    return v2

    .line 576
    :cond_b
    :try_start_b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 577
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v1, p1, p2}, Lcom/idelan/java/Util/JSONUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Z
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_13} :catch_15

    move-result v2

    goto :goto_a

    .line 578
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_15
    move-exception v0

    .line 579
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v2, Lcom/idelan/java/Util/JSONUtils;->isPrintException:Z

    if-eqz v2, :cond_1d

    .line 580
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 582
    :cond_1d
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_a
.end method

.method public static getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Z
    .registers 5
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Boolean;

    .prologue
    .line 541
    if-eqz p0, :cond_8

    invoke-static {p1}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 542
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 551
    :goto_c
    return v1

    .line 546
    :cond_d
    :try_start_d
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_10} :catch_12

    move-result v1

    goto :goto_c

    .line 547
    :catch_12
    move-exception v0

    .line 548
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v1, Lcom/idelan/java/Util/JSONUtils;->isPrintException:Z

    if-eqz v1, :cond_1a

    .line 549
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 551
    :cond_1a
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_c
.end method

.method public static getDouble(Ljava/lang/String;Ljava/lang/String;D)D
    .registers 6
    .param p0, "jsonData"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 269
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/idelan/java/Util/JSONUtils;->getDouble(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static getDouble(Lorg/json/JSONObject;Ljava/lang/String;D)D
    .registers 6
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 257
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/idelan/java/Util/JSONUtils;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static getDouble(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;
    .registers 6
    .param p0, "jsonData"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Double;

    .prologue
    .line 233
    invoke-static {p0}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 244
    .end local p2    # "defaultValue":Ljava/lang/Double;
    :cond_6
    :goto_6
    return-object p2

    .line 238
    .restart local p2    # "defaultValue":Ljava/lang/Double;
    :cond_7
    :try_start_7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 239
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v1, p1, p2}, Lcom/idelan/java/Util/JSONUtils;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_f} :catch_11

    move-result-object p2

    goto :goto_6

    .line 240
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_11
    move-exception v0

    .line 241
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v2, Lcom/idelan/java/Util/JSONUtils;->isPrintException:Z

    if-eqz v2, :cond_6

    .line 242
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6
.end method

.method public static getDouble(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;
    .registers 7
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Double;

    .prologue
    .line 203
    if-eqz p0, :cond_8

    invoke-static {p1}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 213
    .end local p2    # "defaultValue":Ljava/lang/Double;
    :cond_8
    :goto_8
    return-object p2

    .line 208
    .restart local p2    # "defaultValue":Ljava/lang/Double;
    :cond_9
    :try_start_9
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_10} :catch_12

    move-result-object p2

    goto :goto_8

    .line 209
    :catch_12
    move-exception v0

    .line 210
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v1, Lcom/idelan/java/Util/JSONUtils;->isPrintException:Z

    if-eqz v1, :cond_8

    .line 211
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_8
.end method

.method public static getInt(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 4
    .param p0, "jsonData"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 184
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/idelan/java/Util/JSONUtils;->getInt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .registers 4
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 173
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/idelan/java/Util/JSONUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getInt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 6
    .param p0, "jsonData"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Integer;

    .prologue
    .line 150
    invoke-static {p0}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 161
    .end local p2    # "defaultValue":Ljava/lang/Integer;
    :cond_6
    :goto_6
    return-object p2

    .line 155
    .restart local p2    # "defaultValue":Ljava/lang/Integer;
    :cond_7
    :try_start_7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 156
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v1, p1, p2}, Lcom/idelan/java/Util/JSONUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_f} :catch_11

    move-result-object p2

    goto :goto_6

    .line 157
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_11
    move-exception v0

    .line 158
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v2, Lcom/idelan/java/Util/JSONUtils;->isPrintException:Z

    if-eqz v2, :cond_6

    .line 159
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6
.end method

.method public static getInt(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 5
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Integer;

    .prologue
    .line 120
    if-eqz p0, :cond_8

    invoke-static {p1}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 130
    .end local p2    # "defaultValue":Ljava/lang/Integer;
    :cond_8
    :goto_8
    return-object p2

    .line 125
    .restart local p2    # "defaultValue":Ljava/lang/Integer;
    :cond_9
    :try_start_9
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_10} :catch_12

    move-result-object p2

    goto :goto_8

    .line 126
    :catch_12
    move-exception v0

    .line 127
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v1, Lcom/idelan/java/Util/JSONUtils;->isPrintException:Z

    if-eqz v1, :cond_8

    .line 128
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_8
.end method

.method public static getJSONArray(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .registers 6
    .param p0, "jsonData"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Lorg/json/JSONArray;

    .prologue
    .line 512
    invoke-static {p0}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 523
    .end local p2    # "defaultValue":Lorg/json/JSONArray;
    :cond_6
    :goto_6
    return-object p2

    .line 517
    .restart local p2    # "defaultValue":Lorg/json/JSONArray;
    :cond_7
    :try_start_7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 518
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v1, p1, p2}, Lcom/idelan/java/Util/JSONUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_f} :catch_11

    move-result-object p2

    goto :goto_6

    .line 519
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_11
    move-exception v0

    .line 520
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v2, Lcom/idelan/java/Util/JSONUtils;->isPrintException:Z

    if-eqz v2, :cond_6

    .line 521
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6
.end method

.method public static getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .registers 5
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Lorg/json/JSONArray;

    .prologue
    .line 482
    if-eqz p0, :cond_8

    invoke-static {p1}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 492
    .end local p2    # "defaultValue":Lorg/json/JSONArray;
    :cond_8
    :goto_8
    return-object p2

    .line 487
    .restart local p2    # "defaultValue":Lorg/json/JSONArray;
    :cond_9
    :try_start_9
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_c} :catch_e

    move-result-object p2

    goto :goto_8

    .line 488
    :catch_e
    move-exception v0

    .line 489
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v1, Lcom/idelan/java/Util/JSONUtils;->isPrintException:Z

    if-eqz v1, :cond_8

    .line 490
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_8
.end method

.method public static getJSONObject(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 6
    .param p0, "jsonData"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Lorg/json/JSONObject;

    .prologue
    .line 451
    invoke-static {p0}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 462
    .end local p2    # "defaultValue":Lorg/json/JSONObject;
    :cond_6
    :goto_6
    return-object p2

    .line 456
    .restart local p2    # "defaultValue":Lorg/json/JSONObject;
    :cond_7
    :try_start_7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 457
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v1, p1, p2}, Lcom/idelan/java/Util/JSONUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_f} :catch_11

    move-result-object p2

    goto :goto_6

    .line 458
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_11
    move-exception v0

    .line 459
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v2, Lcom/idelan/java/Util/JSONUtils;->isPrintException:Z

    if-eqz v2, :cond_6

    .line 460
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6
.end method

.method public static getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Lorg/json/JSONObject;

    .prologue
    .line 421
    if-eqz p0, :cond_8

    invoke-static {p1}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 431
    .end local p2    # "defaultValue":Lorg/json/JSONObject;
    :cond_8
    :goto_8
    return-object p2

    .line 426
    .restart local p2    # "defaultValue":Lorg/json/JSONObject;
    :cond_9
    :try_start_9
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_c} :catch_e

    move-result-object p2

    goto :goto_8

    .line 427
    :catch_e
    move-exception v0

    .line 428
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v1, Lcom/idelan/java/Util/JSONUtils;->isPrintException:Z

    if-eqz v1, :cond_8

    .line 429
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_8
.end method

.method public static getLong(Ljava/lang/String;Ljava/lang/String;J)J
    .registers 6
    .param p0, "jsonData"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 101
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/idelan/java/Util/JSONUtils;->getLong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J
    .registers 6
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 90
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/idelan/java/Util/JSONUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 6
    .param p0, "jsonData"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Long;

    .prologue
    .line 66
    invoke-static {p0}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 77
    .end local p2    # "defaultValue":Ljava/lang/Long;
    :cond_6
    :goto_6
    return-object p2

    .line 71
    .restart local p2    # "defaultValue":Ljava/lang/Long;
    :cond_7
    :try_start_7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v1, p1, p2}, Lcom/idelan/java/Util/JSONUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_f} :catch_11

    move-result-object p2

    goto :goto_6

    .line 73
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_11
    move-exception v0

    .line 74
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v2, Lcom/idelan/java/Util/JSONUtils;->isPrintException:Z

    if-eqz v2, :cond_6

    .line 75
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6
.end method

.method public static getLong(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 7
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Long;

    .prologue
    .line 37
    if-eqz p0, :cond_8

    invoke-static {p1}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 47
    .end local p2    # "defaultValue":Ljava/lang/Long;
    :cond_8
    :goto_8
    return-object p2

    .line 42
    .restart local p2    # "defaultValue":Ljava/lang/Long;
    :cond_9
    :try_start_9
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_10} :catch_12

    move-result-object p2

    goto :goto_8

    .line 43
    :catch_12
    move-exception v0

    .line 44
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v1, Lcom/idelan/java/Util/JSONUtils;->isPrintException:Z

    if-eqz v1, :cond_8

    .line 45
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_8
.end method

.method public static getMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 6
    .param p0, "jsonData"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 618
    if-nez p0, :cond_4

    .line 632
    :cond_3
    :goto_3
    return-object v2

    .line 621
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_10

    .line 622
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_3

    .line 626
    :cond_10
    :try_start_10
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 627
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v1, p1}, Lcom/idelan/java/Util/JSONUtils;->getMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_18} :catch_1a

    move-result-object v2

    goto :goto_3

    .line 628
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_1a
    move-exception v0

    .line 629
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v3, Lcom/idelan/java/Util/JSONUtils;->isPrintException:Z

    if-eqz v3, :cond_3

    .line 630
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3
.end method

.method public static getMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;
    .registers 3
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 598
    .line 599
    const/4 v0, 0x0

    .line 598
    invoke-static {p0, p1, v0}, Lcom/idelan/java/Util/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idelan/java/Util/JSONUtils;->parseKeyAndValueToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "jsonData"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 318
    invoke-static {p0}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 329
    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_6
    :goto_6
    return-object p2

    .line 323
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_7
    :try_start_7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 324
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v1, p1, p2}, Lcom/idelan/java/Util/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_f} :catch_11

    move-result-object p2

    goto :goto_6

    .line 325
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_11
    move-exception v0

    .line 326
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v2, Lcom/idelan/java/Util/JSONUtils;->isPrintException:Z

    if-eqz v2, :cond_6

    .line 327
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6
.end method

.method public static getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 288
    if-eqz p0, :cond_8

    invoke-static {p1}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 298
    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_8
    :goto_8
    return-object p2

    .line 293
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_9
    :try_start_9
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_c} :catch_e

    move-result-object p2

    goto :goto_8

    .line 294
    :catch_e
    move-exception v0

    .line 295
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v1, Lcom/idelan/java/Util/JSONUtils;->isPrintException:Z

    if-eqz v1, :cond_8

    .line 296
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_8
.end method

.method public static getStringArray(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p0, "jsonData"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # [Ljava/lang/String;

    .prologue
    .line 389
    invoke-static {p0}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 400
    .end local p2    # "defaultValue":[Ljava/lang/String;
    :cond_6
    :goto_6
    return-object p2

    .line 394
    .restart local p2    # "defaultValue":[Ljava/lang/String;
    :cond_7
    :try_start_7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 395
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v1, p1, p2}, Lcom/idelan/java/Util/JSONUtils;->getStringArray(Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_f} :catch_11

    move-result-object p2

    goto :goto_6

    .line 396
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_11
    move-exception v0

    .line 397
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v2, Lcom/idelan/java/Util/JSONUtils;->isPrintException:Z

    if-eqz v2, :cond_6

    .line 398
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6
.end method

.method public static getStringArray(Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # [Ljava/lang/String;

    .prologue
    .line 351
    if-eqz p0, :cond_8

    invoke-static {p1}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 370
    .end local p2    # "defaultValue":[Ljava/lang/String;
    :cond_8
    :goto_8
    return-object p2

    .line 356
    .restart local p2    # "defaultValue":[Ljava/lang/String;
    :cond_9
    :try_start_9
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 357
    .local v2, "statusArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_8

    .line 358
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 359
    .local v3, "value":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v1, v4, :cond_1e

    move-object p2, v3

    .line 362
    goto :goto_8

    .line 360
    :cond_1e
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_24} :catch_27

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 364
    .end local v1    # "i":I
    .end local v2    # "statusArray":Lorg/json/JSONArray;
    .end local v3    # "value":[Ljava/lang/String;
    :catch_27
    move-exception v0

    .line 365
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v4, Lcom/idelan/java/Util/JSONUtils;->isPrintException:Z

    if-eqz v4, :cond_8

    .line 366
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_8
.end method

.method public static parseKeyAndValueToMap(Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .param p0, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 679
    invoke-static {p0}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 690
    :cond_7
    :goto_7
    return-object v2

    .line 684
    :cond_8
    :try_start_8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 685
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/idelan/java/Util/JSONUtils;->parseKeyAndValueToMap(Lorg/json/JSONObject;)Ljava/util/Map;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_10} :catch_12

    move-result-object v2

    goto :goto_7

    .line 686
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_12
    move-exception v0

    .line 687
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v3, Lcom/idelan/java/Util/JSONUtils;->isPrintException:Z

    if-eqz v3, :cond_7

    .line 688
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7
.end method

.method public static parseKeyAndValueToMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 5
    .param p0, "sourceObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 651
    if-nez p0, :cond_4

    .line 652
    const/4 v2, 0x0

    .line 662
    :cond_3
    return-object v2

    .line 655
    :cond_4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 656
    .local v2, "keyAndValueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 657
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 659
    .local v1, "key":Ljava/lang/String;
    const-string v3, ""

    invoke-static {p0, v1, v3}, Lcom/idelan/java/Util/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 658
    invoke-static {v2, v1, v3}, Lcom/idelan/java/Util/MapUtils;->putMapNotEmptyKey(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_d
.end method
