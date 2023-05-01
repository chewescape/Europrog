.class public final Lcom/nostra13/universalimageloader/core/assist/DiscCacheUtil;
.super Ljava/lang/Object;
.source "DiscCacheUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static findInCache(Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;)Ljava/io/File;
    .registers 4
    .param p0, "imageUri"    # Ljava/lang/String;
    .param p1, "discCache"    # Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    .prologue
    .line 36
    invoke-interface {p1, p0}, Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 37
    .local v0, "image":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b

    .end local v0    # "image":Ljava/io/File;
    :goto_a
    return-object v0

    .restart local v0    # "image":Ljava/io/File;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static removeFromCache(Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;)Z
    .registers 4
    .param p0, "imageUri"    # Ljava/lang/String;
    .param p1, "discCache"    # Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    .prologue
    .line 46
    invoke-interface {p1, p0}, Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 47
    .local v0, "image":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method
