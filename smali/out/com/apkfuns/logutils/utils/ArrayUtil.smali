.class public final Lcom/apkfuns/logutils/utils/ArrayUtil;
.super Ljava/lang/Object;
.source "ArrayUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArrayDimension(Ljava/lang/Object;)I
    .registers 5
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "dim":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_1d

    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 27
    :cond_1d
    return v0
.end method

.method public static getType(Ljava/lang/Object;)C
    .registers 5
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-static {p0}, Lcom/apkfuns/logutils/utils/ArrayUtil;->isArray(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "str":Ljava/lang/String;
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 51
    .end local v0    # "str":Ljava/lang/String;
    :cond_23
    return v1
.end method

.method public static isArray(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    return v0
.end method

.method public static parseArray(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "array"    # Ljava/lang/Object;

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Lcom/apkfuns/logutils/utils/ArrayUtil;->traverseArray(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static traverseArray(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .registers 6
    .param p0, "result"    # Ljava/lang/StringBuilder;
    .param p1, "array"    # Ljava/lang/Object;

    .prologue
    .line 61
    invoke-static {p1}, Lcom/apkfuns/logutils/utils/ArrayUtil;->isArray(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 62
    invoke-static {p1}, Lcom/apkfuns/logutils/utils/ArrayUtil;->getArrayDimension(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9e

    .line 63
    invoke-static {p1}, Lcom/apkfuns/logutils/utils/ArrayUtil;->getType(Ljava/lang/Object;)C

    move-result v2

    sparse-switch v2, :sswitch_data_d6

    .line 97
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "array":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :goto_1f
    return-void

    .line 65
    .restart local p1    # "array":Ljava/lang/Object;
    :sswitch_20
    check-cast p1, [I

    .end local p1    # "array":Ljava/lang/Object;
    check-cast p1, [I

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 68
    .restart local p1    # "array":Ljava/lang/Object;
    :sswitch_2c
    check-cast p1, [D

    .end local p1    # "array":Ljava/lang/Object;
    check-cast p1, [D

    invoke-static {p1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 71
    .restart local p1    # "array":Ljava/lang/Object;
    :sswitch_38
    check-cast p1, [Z

    .end local p1    # "array":Ljava/lang/Object;
    check-cast p1, [Z

    invoke-static {p1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 74
    .restart local p1    # "array":Ljava/lang/Object;
    :sswitch_44
    check-cast p1, [B

    .end local p1    # "array":Ljava/lang/Object;
    check-cast p1, [B

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 77
    .restart local p1    # "array":Ljava/lang/Object;
    :sswitch_50
    check-cast p1, [S

    .end local p1    # "array":Ljava/lang/Object;
    check-cast p1, [S

    invoke-static {p1}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 80
    .restart local p1    # "array":Ljava/lang/Object;
    :sswitch_5c
    check-cast p1, [J

    .end local p1    # "array":Ljava/lang/Object;
    check-cast p1, [J

    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 83
    .restart local p1    # "array":Ljava/lang/Object;
    :sswitch_68
    check-cast p1, [F

    .end local p1    # "array":Ljava/lang/Object;
    check-cast p1, [F

    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 86
    .restart local p1    # "array":Ljava/lang/Object;
    :sswitch_74
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "array":Ljava/lang/Object;
    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    .line 87
    .local v1, "objects":[Ljava/lang/Object;
    const-string v2, "["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7f
    array-length v2, v1

    if-ge v0, v2, :cond_98

    .line 89
    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/apkfuns/logutils/utils/ObjectUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_95

    .line 91
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_95
    add-int/lit8 v0, v0, 0x1

    goto :goto_7f

    .line 94
    :cond_98
    const-string v2, "]"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 101
    .end local v0    # "i":I
    .end local v1    # "objects":[Ljava/lang/Object;
    .restart local p1    # "array":Ljava/lang/Object;
    :cond_9e
    const-string v2, "["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_a4
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_c8

    move-object v2, p1

    .line 103
    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p0, v2}, Lcom/apkfuns/logutils/utils/ArrayUtil;->traverseArray(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    move-object v2, p1

    .line 104
    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_c5

    .line 105
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_c5
    add-int/lit8 v0, v0, 0x1

    goto :goto_a4

    .line 108
    :cond_c8
    const-string v2, "]"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1f

    .line 111
    .end local v0    # "i":I
    :cond_cf
    const-string v2, "not a array!!"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1f

    .line 63
    :sswitch_data_d6
    .sparse-switch
        0x42 -> :sswitch_44
        0x44 -> :sswitch_2c
        0x46 -> :sswitch_68
        0x49 -> :sswitch_20
        0x4a -> :sswitch_5c
        0x4c -> :sswitch_74
        0x53 -> :sswitch_50
        0x5a -> :sswitch_38
    .end sparse-switch
.end method
