.class public Lcom/idelan/Charset/TypeValueTools;
.super Ljava/lang/Object;
.source "TypeValueTools.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toDouble(Ljava/lang/String;D)D
    .registers 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "def"    # D

    .prologue
    .line 34
    if-eqz p0, :cond_a

    :try_start_2
    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 37
    .end local p1    # "def":D
    :cond_a
    :goto_a
    return-wide p1

    .line 35
    .restart local p1    # "def":D
    :cond_b
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_10

    move-result-wide p1

    goto :goto_a

    .line 36
    :catch_10
    move-exception v0

    .line 37
    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_a
.end method

.method public static toFloat(Ljava/lang/String;F)F
    .registers 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "def"    # F

    .prologue
    .line 42
    if-eqz p0, :cond_a

    :try_start_2
    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 45
    .end local p1    # "def":F
    :cond_a
    :goto_a
    return p1

    .line 43
    .restart local p1    # "def":F
    :cond_b
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_10

    move-result p1

    goto :goto_a

    .line 44
    :catch_10
    move-exception v0

    .line 45
    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_a
.end method

.method public static toInt(Ljava/lang/Object;Z)I
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "def"    # Z

    .prologue
    .line 21
    if-eqz p0, :cond_12

    :try_start_2
    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_18

    move-result p1

    .line 29
    :cond_12
    :goto_12
    if-eqz p1, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15

    .line 25
    :catch_18
    move-exception v0

    goto :goto_12
.end method

.method public static toInt(Ljava/lang/String;I)I
    .registers 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "def"    # I

    .prologue
    .line 10
    if-eqz p0, :cond_a

    :try_start_2
    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 14
    .end local p1    # "def":I
    :cond_a
    :goto_a
    return p1

    .line 12
    .restart local p1    # "def":I
    :cond_b
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_10

    move-result p1

    goto :goto_a

    .line 13
    :catch_10
    move-exception v0

    .line 14
    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_a
.end method

.method public static toLong(Ljava/lang/String;J)Ljava/lang/Long;
    .registers 8
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "def"    # J

    .prologue
    .line 51
    if-eqz p0, :cond_a

    :try_start_2
    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_a
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 54
    :goto_e
    return-object v1

    .line 52
    :cond_f
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_18

    move-result-object v1

    goto :goto_e

    .line 53
    :catch_18
    move-exception v0

    .line 54
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_e
.end method

.method public static toShort(Ljava/lang/String;S)S
    .registers 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "def"    # S

    .prologue
    .line 61
    if-eqz p0, :cond_a

    :try_start_2
    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 64
    .end local p1    # "def":S
    :cond_a
    :goto_a
    return p1

    .line 62
    .restart local p1    # "def":S
    :cond_b
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_10

    move-result p1

    goto :goto_a

    .line 63
    :catch_10
    move-exception v0

    .line 64
    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_a
.end method
