.class public Lcom/apkfuns/logutils/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final DIVIDER_BOTTOM:I = 0x2

.field public static final DIVIDER_CENTER:I = 0x4

.field public static final DIVIDER_NORMAL:I = 0x3

.field public static final DIVIDER_TOP:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static largeStringToList(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p0, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v4, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 51
    .local v2, "index":I
    const/16 v3, 0xc00

    .line 52
    .local v3, "maxLength":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    div-int v0, v6, v3

    .line 53
    .local v0, "countOfSub":I
    if-lez v0, :cond_2c

    .line 54
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_20

    .line 55
    add-int v6, v2, v3

    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, "sub":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/2addr v2, v3

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 59
    .end local v5    # "sub":Ljava/lang/String;
    :cond_20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .end local v1    # "i":I
    :goto_2b
    return-object v4

    .line 61
    :cond_2c
    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b
.end method

.method public static printDividingLine(I)Ljava/lang/String;
    .registers 2
    .param p0, "dir"    # I

    .prologue
    .line 26
    packed-switch p0, :pswitch_data_12

    .line 38
    const-string v0, ""

    :goto_5
    return-object v0

    .line 28
    :pswitch_6
    const-string v0, "\u2554\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    goto :goto_5

    .line 30
    :pswitch_9
    const-string v0, "\u255a\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    goto :goto_5

    .line 32
    :pswitch_c
    const-string v0, "\u2551 "

    goto :goto_5

    .line 34
    :pswitch_f
    const-string v0, "\u255f\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    goto :goto_5

    .line 26
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method public static shorten(Ljava/lang/String;II)Ljava/lang/String;
    .registers 7
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "count"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v3, 0x0

    .line 67
    if-nez p0, :cond_5

    const/4 v0, 0x0

    .line 78
    :cond_4
    :goto_4
    return-object v0

    .line 68
    :cond_5
    move-object v0, p0

    .line 69
    .local v0, "resultString":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 70
    if-lez p2, :cond_16

    .line 71
    invoke-virtual {p0, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 72
    :cond_16
    if-gez p2, :cond_25

    .line 73
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 75
    :cond_25
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static shortenClassName(Ljava/lang/String;II)Ljava/lang/String;
    .registers 12
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "count"    # I
    .param p2, "maxLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v8, 0x2e

    const/4 v7, -0x1

    const/16 v6, 0x2a

    const/4 v5, 0x0

    .line 82
    invoke-static {p0, p1}, Lcom/apkfuns/logutils/utils/Utils;->shortenPackagesName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 83
    if-nez p0, :cond_e

    const/4 p0, 0x0

    .line 132
    .end local p0    # "className":Ljava/lang/String;
    :cond_d
    :goto_d
    return-object p0

    .line 84
    .restart local p0    # "className":Ljava/lang/String;
    :cond_e
    if-eqz p2, :cond_d

    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt p2, v3, :cond_d

    .line 86
    if-gez p2, :cond_6f

    .line 87
    neg-int p2, p2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "index":I
    :goto_24
    if-lez v2, :cond_3e

    .line 90
    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 91
    .local v1, "i":I
    if-ne v1, v7, :cond_4f

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_43

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    if-le v3, p2, :cond_43

    .line 94
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 108
    .end local v1    # "i":I
    :cond_3e
    :goto_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_d

    .line 97
    .restart local v1    # "i":I
    :cond_43
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :goto_4c
    add-int/lit8 v2, v1, -0x1

    .line 107
    goto :goto_24

    .line 99
    :cond_4f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_65

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v4, v2, 0x1

    sub-int/2addr v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    if-le v3, p2, :cond_65

    .line 101
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 104
    :cond_65
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    .line 110
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    .end local v2    # "index":I
    :cond_6f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .restart local v2    # "index":I
    :goto_75
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_8e

    .line 112
    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 113
    .restart local v1    # "i":I
    if-ne v1, v7, :cond_a4

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_94

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v3, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 132
    .end local v1    # "i":I
    :cond_8e
    :goto_8e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_d

    .line 118
    .restart local v1    # "i":I
    :cond_94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8e

    .line 121
    :cond_a4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_b6

    add-int/lit8 v3, v1, 0x1

    if-le v3, p2, :cond_b6

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v3, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_8e

    .line 127
    :cond_b6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    add-int/lit8 v2, v1, 0x1

    .line 131
    goto :goto_75
.end method

.method private static shortenPackagesName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 12
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "count"    # I

    .prologue
    const/16 v9, 0x2e

    .line 138
    if-nez p0, :cond_6

    const/4 p0, 0x0

    .line 167
    .end local p0    # "className":Ljava/lang/String;
    :cond_5
    :goto_5
    return-object p0

    .line 139
    .restart local p0    # "className":Ljava/lang/String;
    :cond_6
    if-eqz p1, :cond_5

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-lez p1, :cond_52

    .line 142
    const/4 v5, 0x1

    .line 143
    .local v5, "points":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_2d

    .line 144
    invoke-virtual {p0, v9, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 145
    .local v3, "i":I
    const/4 v7, -0x1

    if-ne v3, v7, :cond_32

    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p0, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .end local v3    # "i":I
    .end local v4    # "index":I
    .end local v5    # "points":I
    :cond_2d
    :goto_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    .line 149
    .restart local v3    # "i":I
    .restart local v4    # "index":I
    .restart local v5    # "points":I
    :cond_32
    if-ne v5, p1, :cond_40

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    .line 153
    :cond_40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p0, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    add-int/lit8 v4, v3, 0x1

    .line 156
    add-int/lit8 v5, v5, 0x1

    .line 157
    goto :goto_11

    .line 158
    .end local v3    # "i":I
    .end local v4    # "index":I
    .end local v5    # "points":I
    :cond_52
    if-gez p1, :cond_2d

    .line 159
    neg-int v7, p1

    invoke-static {p0, v7}, Lcom/apkfuns/logutils/utils/Utils;->shortenPackagesName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "exceptString":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_75

    .line 161
    invoke-virtual {p0, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v2, v7, 0x1

    .line 162
    .local v2, "from":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 163
    .local v6, "to":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    .line 165
    .end local v2    # "from":I
    .end local v6    # "to":I
    :cond_75
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_5
.end method
