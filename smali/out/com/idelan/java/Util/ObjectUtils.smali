.class public Lcom/idelan/java/Util/ObjectUtils;
.super Ljava/lang/Object;
.source "ObjectUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;TV;)I"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "v1":Ljava/lang/Object;, "TV;"
    .local p1, "v2":Ljava/lang/Object;, "TV;"
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x0

    .end local p0    # "v1":Ljava/lang/Object;, "TV;"
    :goto_5
    return v0

    .restart local p0    # "v1":Ljava/lang/Object;, "TV;"
    :cond_6
    const/4 v0, -0x1

    goto :goto_5

    :cond_8
    if-nez p1, :cond_c

    const/4 v0, 0x1

    goto :goto_5

    .line 103
    :cond_c
    check-cast p0, Ljava/lang/Comparable;

    .end local p0    # "v1":Ljava/lang/Object;, "TV;"
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_5
.end method

.method public static isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "actual"    # Ljava/lang/Object;
    .param p1, "expected"    # Ljava/lang/Object;

    .prologue
    .line 20
    if-eq p0, p1, :cond_e

    .line 21
    if-nez p0, :cond_8

    if-eqz p1, :cond_e

    .line 20
    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0

    .line 21
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20
    :cond_e
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static transformIntArray([Ljava/lang/Integer;)[I
    .registers 4
    .param p0, "source"    # [Ljava/lang/Integer;

    .prologue
    .line 73
    array-length v2, p0

    new-array v0, v2, [I

    .line 74
    .local v0, "destin":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-lt v1, v2, :cond_8

    .line 77
    return-object v0

    .line 75
    :cond_8
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public static transformIntArray([I)[Ljava/lang/Integer;
    .registers 4
    .param p0, "source"    # [I

    .prologue
    .line 59
    array-length v2, p0

    new-array v0, v2, [Ljava/lang/Integer;

    .line 60
    .local v0, "destin":[Ljava/lang/Integer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-lt v1, v2, :cond_8

    .line 63
    return-object v0

    .line 61
    :cond_8
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public static transformLongArray([Ljava/lang/Long;)[J
    .registers 5
    .param p0, "source"    # [Ljava/lang/Long;

    .prologue
    .line 45
    array-length v2, p0

    new-array v0, v2, [J

    .line 46
    .local v0, "destin":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-lt v1, v2, :cond_8

    .line 49
    return-object v0

    .line 47
    :cond_8
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public static transformLongArray([J)[Ljava/lang/Long;
    .registers 5
    .param p0, "source"    # [J

    .prologue
    .line 31
    array-length v2, p0

    new-array v0, v2, [Ljava/lang/Long;

    .line 32
    .local v0, "destin":[Ljava/lang/Long;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-lt v1, v2, :cond_8

    .line 35
    return-object v0

    .line 33
    :cond_8
    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method
