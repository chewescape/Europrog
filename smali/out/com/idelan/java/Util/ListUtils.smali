.class public Lcom/idelan/java/Util/ListUtils;
.super Ljava/lang/Object;
.source "ListUtils.java"


# static fields
.field public static final DEFAULT_JOIN_SEPARATOR:Ljava/lang/String; = ","


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDistinctEntry(Ljava/util/List;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TV;>;TV;)Z"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "sourceList":Ljava/util/List;, "Ljava/util/List<TV;>;"
    .local p1, "entry":Ljava/lang/Object;, "TV;"
    if-eqz p0, :cond_d

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 166
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 165
    :goto_c
    return v0

    .line 166
    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static addDistinctList(Ljava/util/List;Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TV;>;",
            "Ljava/util/List",
            "<TV;>;)I"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "sourceList":Ljava/util/List;, "Ljava/util/List<TV;>;"
    .local p1, "entryList":Ljava/util/List;, "Ljava/util/List<TV;>;"
    if-eqz p0, :cond_8

    invoke-static {p1}, Lcom/idelan/java/Util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 179
    :cond_8
    const/4 v2, 0x0

    .line 188
    :goto_9
    return v2

    .line 182
    :cond_a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 183
    .local v1, "sourceCount":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 188
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    goto :goto_9

    .line 183
    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    .line 184
    .local v0, "entry":Ljava/lang/Object;, "TV;"
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 185
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12
.end method

.method public static addListNotNullValue(Ljava/util/List;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TV;>;TV;)Z"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "sourceList":Ljava/util/List;, "Ljava/util/List<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    :goto_8
    return v0

    .line 230
    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static distinctList(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TV;>;)I"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "sourceList":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-static {p0}, Lcom/idelan/java/Util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 200
    const/4 v4, 0x0

    .line 214
    :goto_7
    return v4

    .line 203
    :cond_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 204
    .local v2, "sourceCount":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 205
    .local v3, "sourceListSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-lt v0, v3, :cond_1a

    .line 214
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    sub-int v4, v2, v4

    goto :goto_7

    .line 206
    :cond_1a
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_1c
    if-lt v1, v3, :cond_21

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 207
    :cond_21
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 208
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 209
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 210
    add-int/lit8 v1, v1, -0x1

    .line 206
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c
.end method

.method public static getLast(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TV;>;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "sourceList":Ljava/util/List;, "Ljava/util/List<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    .line 240
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    .line 239
    invoke-static {v0, p1, v1}, Lcom/idelan/java/Util/ArrayUtils;->getLast([Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public static getNext(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TV;>;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "sourceList":Ljava/util/List;, "Ljava/util/List<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    .line 250
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    .line 249
    invoke-static {v0, p1, v1}, Lcom/idelan/java/Util/ArrayUtils;->getNext([Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public static getSize(Ljava/util/List;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TV;>;)I"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "sourceList":Ljava/util/List;, "Ljava/util/List<TV;>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_3
.end method

.method public static invertList(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TV;>;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "sourceList":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-static {p0}, Lcom/idelan/java/Util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 269
    .end local p0    # "sourceList":Ljava/util/List;, "Ljava/util/List<TV;>;"
    :goto_6
    return-object p0

    .line 265
    .restart local p0    # "sourceList":Ljava/util/List;, "Ljava/util/List<TV;>;"
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 266
    .local v1, "invertList":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_16
    if-gez v0, :cond_1a

    move-object p0, v1

    .line 269
    goto :goto_6

    .line 267
    :cond_1a
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    add-int/lit8 v0, v0, -0x1

    goto :goto_16
.end method

.method public static isEmpty(Ljava/util/List;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "sourceList":Ljava/util/List;, "Ljava/util/List<TV;>;"
    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static isEquals(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TV;>;",
            "Ljava/util/ArrayList",
            "<TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "actual":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    .local p1, "expected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    if-nez p0, :cond_9

    .line 68
    if-nez p1, :cond_7

    .line 82
    :cond_6
    :goto_6
    return v1

    :cond_7
    move v1, v2

    .line 68
    goto :goto_6

    .line 70
    :cond_9
    if-nez p1, :cond_d

    move v1, v2

    .line 71
    goto :goto_6

    .line 73
    :cond_d
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v3, v4, :cond_19

    move v1, v2

    .line 74
    goto :goto_6

    .line 77
    :cond_19
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 78
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/idelan/java/Util/ObjectUtils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    move v1, v2

    .line 79
    goto :goto_6

    .line 77
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a
.end method

.method public static join(Ljava/util/List;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, ","

    invoke-static {p0, v0}, Lcom/idelan/java/Util/ListUtils;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/util/List;C)Ljava/lang/String;
    .registers 5
    .param p1, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/4 v2, 0x0

    aput-char p1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-static {p0, v0}, Lcom/idelan/java/Util/ListUtils;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/idelan/java/Util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 139
    const-string v2, ""

    .line 152
    :goto_8
    return-object v2

    .line 141
    :cond_9
    if-nez p1, :cond_d

    .line 142
    const-string p1, ","

    .line 145
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v1, "joinStr":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1e

    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 147
    :cond_1e
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_32

    .line 149
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method
