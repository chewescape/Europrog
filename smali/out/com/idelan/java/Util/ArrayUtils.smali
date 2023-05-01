.class public Lcom/idelan/java/Util/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLast([IIIZ)I
    .registers 7
    .param p0, "sourceArray"    # [I
    .param p1, "value"    # I
    .param p2, "defaultValue"    # I
    .param p3, "isCircle"    # Z

    .prologue
    .line 155
    array-length v1, p0

    if-nez v1, :cond_b

    .line 156
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The length of source array must be greater than 0."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :cond_b
    invoke-static {p0}, Lcom/idelan/java/Util/ObjectUtils;->transformIntArray([I)[Ljava/lang/Integer;

    move-result-object v0

    .line 160
    .local v0, "array":[Ljava/lang/Integer;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2, p3}, Lcom/idelan/java/Util/ArrayUtils;->getLast([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static getLast([JJJZ)J
    .registers 11
    .param p0, "sourceArray"    # [J
    .param p1, "value"    # J
    .param p3, "defaultValue"    # J
    .param p5, "isCircle"    # Z

    .prologue
    .line 130
    array-length v1, p0

    if-nez v1, :cond_b

    .line 131
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The length of source array must be greater than 0."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_b
    invoke-static {p0}, Lcom/idelan/java/Util/ObjectUtils;->transformLongArray([J)[Ljava/lang/Long;

    move-result-object v0

    .line 135
    .local v0, "array":[Ljava/lang/Long;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2, p5}, Lcom/idelan/java/Util/ArrayUtils;->getLast([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public static getLast([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 7
    .param p0, "sourceArray"    # [Ljava/lang/Object;
    .param p3, "isCircle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([TV;TV;TV;Z)TV;"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "value":Ljava/lang/Object;, "TV;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-static {p0}, Lcom/idelan/java/Util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 70
    .end local p2    # "defaultValue":Ljava/lang/Object;, "TV;"
    :cond_6
    :goto_6
    return-object p2

    .line 56
    .restart local p2    # "defaultValue":Ljava/lang/Object;, "TV;"
    :cond_7
    const/4 v0, -0x1

    .line 57
    .local v0, "currentPosition":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, p0

    if-lt v1, v2, :cond_19

    .line 63
    :goto_c
    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    .line 67
    if-nez v0, :cond_26

    .line 68
    if-eqz p3, :cond_6

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    aget-object p2, p0, v2

    goto :goto_6

    .line 58
    :cond_19
    aget-object v2, p0, v1

    invoke-static {p1, v2}, Lcom/idelan/java/Util/ObjectUtils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 59
    move v0, v1

    .line 60
    goto :goto_c

    .line 57
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 70
    :cond_26
    add-int/lit8 v2, v0, -0x1

    aget-object p2, p0, v2

    goto :goto_6
.end method

.method public static getLast([Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 4
    .param p0, "sourceArray"    # [Ljava/lang/Object;
    .param p2, "isCircle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([TV;TV;Z)TV;"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/idelan/java/Util/ArrayUtils;->getLast([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getNext([IIIZ)I
    .registers 7
    .param p0, "sourceArray"    # [I
    .param p1, "value"    # I
    .param p2, "defaultValue"    # I
    .param p3, "isCircle"    # Z

    .prologue
    .line 168
    array-length v1, p0

    if-nez v1, :cond_b

    .line 169
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The length of source array must be greater than 0."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_b
    invoke-static {p0}, Lcom/idelan/java/Util/ObjectUtils;->transformIntArray([I)[Ljava/lang/Integer;

    move-result-object v0

    .line 173
    .local v0, "array":[Ljava/lang/Integer;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2, p3}, Lcom/idelan/java/Util/ArrayUtils;->getNext([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static getNext([JJJZ)J
    .registers 11
    .param p0, "sourceArray"    # [J
    .param p1, "value"    # J
    .param p3, "defaultValue"    # J
    .param p5, "isCircle"    # Z

    .prologue
    .line 143
    array-length v1, p0

    if-nez v1, :cond_b

    .line 144
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The length of source array must be greater than 0."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_b
    invoke-static {p0}, Lcom/idelan/java/Util/ObjectUtils;->transformLongArray([J)[Ljava/lang/Long;

    move-result-object v0

    .line 148
    .local v0, "array":[Ljava/lang/Long;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2, p5}, Lcom/idelan/java/Util/ArrayUtils;->getNext([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public static getNext([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 7
    .param p0, "sourceArray"    # [Ljava/lang/Object;
    .param p3, "isCircle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([TV;TV;TV;Z)TV;"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "value":Ljava/lang/Object;, "TV;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-static {p0}, Lcom/idelan/java/Util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 109
    .end local p2    # "defaultValue":Ljava/lang/Object;, "TV;"
    :cond_6
    :goto_6
    return-object p2

    .line 95
    .restart local p2    # "defaultValue":Ljava/lang/Object;, "TV;"
    :cond_7
    const/4 v0, -0x1

    .line 96
    .local v0, "currentPosition":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, p0

    if-lt v1, v2, :cond_1a

    .line 102
    :goto_c
    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    .line 106
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_27

    .line 107
    if-eqz p3, :cond_6

    const/4 v2, 0x0

    aget-object p2, p0, v2

    goto :goto_6

    .line 97
    :cond_1a
    aget-object v2, p0, v1

    invoke-static {p1, v2}, Lcom/idelan/java/Util/ObjectUtils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 98
    move v0, v1

    .line 99
    goto :goto_c

    .line 96
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 109
    :cond_27
    add-int/lit8 v2, v0, 0x1

    aget-object p2, p0, v2

    goto :goto_6
.end method

.method public static getNext([Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 4
    .param p0, "sourceArray"    # [Ljava/lang/Object;
    .param p2, "isCircle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([TV;TV;Z)TV;"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/idelan/java/Util/ArrayUtils;->getNext([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .registers 2
    .param p0, "sourceArray"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([TV;)Z"
        }
    .end annotation

    .prologue
    .line 31
    if-eqz p0, :cond_7

    array-length v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method
