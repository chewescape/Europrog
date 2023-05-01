.class Lcom/idelan/app/Util/ACache$ACacheManager$1;
.super Ljava/lang/Object;
.source "ACache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/app/Util/ACache$ACacheManager;->calculateCacheSizeAndCacheCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/idelan/app/Util/ACache$ACacheManager;


# direct methods
.method constructor <init>(Lcom/idelan/app/Util/ACache$ACacheManager;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/idelan/app/Util/ACache$ACacheManager$1;->this$1:Lcom/idelan/app/Util/ACache$ACacheManager;

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 653
    const/4 v3, 0x0

    .line 654
    .local v3, "size":I
    const/4 v2, 0x0

    .line 655
    .local v2, "count":I
    iget-object v4, p0, Lcom/idelan/app/Util/ACache$ACacheManager$1;->this$1:Lcom/idelan/app/Util/ACache$ACacheManager;

    iget-object v4, v4, Lcom/idelan/app/Util/ACache$ACacheManager;->cacheDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 656
    .local v1, "cachedFiles":[Ljava/io/File;
    if-eqz v1, :cond_23

    .line 657
    array-length v5, v1

    const/4 v4, 0x0

    :goto_e
    if-lt v4, v5, :cond_24

    .line 662
    iget-object v4, p0, Lcom/idelan/app/Util/ACache$ACacheManager$1;->this$1:Lcom/idelan/app/Util/ACache$ACacheManager;

    invoke-static {v4}, Lcom/idelan/app/Util/ACache$ACacheManager;->access$3(Lcom/idelan/app/Util/ACache$ACacheManager;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    int-to-long v6, v3

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 663
    iget-object v4, p0, Lcom/idelan/app/Util/ACache$ACacheManager$1;->this$1:Lcom/idelan/app/Util/ACache$ACacheManager;

    invoke-static {v4}, Lcom/idelan/app/Util/ACache$ACacheManager;->access$4(Lcom/idelan/app/Util/ACache$ACacheManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 665
    :cond_23
    return-void

    .line 657
    :cond_24
    aget-object v0, v1, v4

    .line 658
    .local v0, "cachedFile":Ljava/io/File;
    int-to-long v6, v3

    iget-object v8, p0, Lcom/idelan/app/Util/ACache$ACacheManager$1;->this$1:Lcom/idelan/app/Util/ACache$ACacheManager;

    invoke-static {v8, v0}, Lcom/idelan/app/Util/ACache$ACacheManager;->access$1(Lcom/idelan/app/Util/ACache$ACacheManager;Ljava/io/File;)J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-int v3, v6

    .line 659
    add-int/lit8 v2, v2, 0x1

    .line 660
    iget-object v6, p0, Lcom/idelan/app/Util/ACache$ACacheManager$1;->this$1:Lcom/idelan/app/Util/ACache$ACacheManager;

    invoke-static {v6}, Lcom/idelan/app/Util/ACache$ACacheManager;->access$2(Lcom/idelan/app/Util/ACache$ACacheManager;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    add-int/lit8 v4, v4, 0x1

    goto :goto_e
.end method
