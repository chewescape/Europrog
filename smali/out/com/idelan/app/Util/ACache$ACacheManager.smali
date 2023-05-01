.class public Lcom/idelan/app/Util/ACache$ACacheManager;
.super Ljava/lang/Object;
.source "ACache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idelan/app/Util/ACache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ACacheManager"
.end annotation


# instance fields
.field private final cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected cacheDir:Ljava/io/File;

.field private final cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

.field private final countLimit:I

.field private final lastUsageDates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final sizeLimit:J

.field final synthetic this$0:Lcom/idelan/app/Util/ACache;


# direct methods
.method private constructor <init>(Lcom/idelan/app/Util/ACache;Ljava/io/File;JI)V
    .registers 7
    .param p2, "cacheDir"    # Ljava/io/File;
    .param p3, "sizeLimit"    # J
    .param p5, "countLimit"    # I

    .prologue
    .line 637
    iput-object p1, p0, Lcom/idelan/app/Util/ACache$ACacheManager;->this$0:Lcom/idelan/app/Util/ACache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 634
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/idelan/app/Util/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    .line 638
    iput-object p2, p0, Lcom/idelan/app/Util/ACache$ACacheManager;->cacheDir:Ljava/io/File;

    .line 639
    iput-wide p3, p0, Lcom/idelan/app/Util/ACache$ACacheManager;->sizeLimit:J

    .line 640
    iput p5, p0, Lcom/idelan/app/Util/ACache$ACacheManager;->countLimit:I

    .line 641
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/idelan/app/Util/ACache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 642
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/idelan/app/Util/ACache$ACacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 643
    invoke-direct {p0}, Lcom/idelan/app/Util/ACache$ACacheManager;->calculateCacheSizeAndCacheCount()V

    .line 644
    return-void
.end method

.method synthetic constructor <init>(Lcom/idelan/app/Util/ACache;Ljava/io/File;JILcom/idelan/app/Util/ACache$ACacheManager;)V
    .registers 8

    .prologue
    .line 637
    invoke-direct/range {p0 .. p5}, Lcom/idelan/app/Util/ACache$ACacheManager;-><init>(Lcom/idelan/app/Util/ACache;Ljava/io/File;JI)V

    return-void
.end method

.method static synthetic access$0(Lcom/idelan/app/Util/ACache$ACacheManager;Ljava/io/File;)V
    .registers 2

    .prologue
    .line 672
    invoke-direct {p0, p1}, Lcom/idelan/app/Util/ACache$ACacheManager;->put(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$1(Lcom/idelan/app/Util/ACache$ACacheManager;Ljava/io/File;)J
    .registers 4

    .prologue
    .line 762
    invoke-direct {p0, p1}, Lcom/idelan/app/Util/ACache$ACacheManager;->calculateSize(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2(Lcom/idelan/app/Util/ACache$ACacheManager;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 634
    iget-object v0, p0, Lcom/idelan/app/Util/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3(Lcom/idelan/app/Util/ACache$ACacheManager;)Ljava/util/concurrent/atomic/AtomicLong;
    .registers 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/idelan/app/Util/ACache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$4(Lcom/idelan/app/Util/ACache$ACacheManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/idelan/app/Util/ACache$ACacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$6(Lcom/idelan/app/Util/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .prologue
    .line 705
    invoke-direct {p0, p1}, Lcom/idelan/app/Util/ACache$ACacheManager;->newFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/idelan/app/Util/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .prologue
    .line 695
    invoke-direct {p0, p1}, Lcom/idelan/app/Util/ACache$ACacheManager;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lcom/idelan/app/Util/ACache$ACacheManager;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 711
    invoke-direct {p0, p1}, Lcom/idelan/app/Util/ACache$ACacheManager;->remove(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9(Lcom/idelan/app/Util/ACache$ACacheManager;)V
    .registers 1

    .prologue
    .line 716
    invoke-direct {p0}, Lcom/idelan/app/Util/ACache$ACacheManager;->clear()V

    return-void
.end method

.method private calculateCacheSizeAndCacheCount()V
    .registers 3

    .prologue
    .line 650
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/idelan/app/Util/ACache$ACacheManager$1;

    invoke-direct {v1, p0}, Lcom/idelan/app/Util/ACache$ACacheManager$1;-><init>(Lcom/idelan/app/Util/ACache$ACacheManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 666
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 667
    return-void
.end method

.method private calculateSize(Ljava/io/File;)J
    .registers 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 763
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method private clear()V
    .registers 7

    .prologue
    .line 717
    iget-object v2, p0, Lcom/idelan/app/Util/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 718
    iget-object v2, p0, Lcom/idelan/app/Util/ACache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 719
    iget-object v2, p0, Lcom/idelan/app/Util/ACache$ACacheManager;->cacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 720
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_18

    .line 721
    array-length v3, v1

    const/4 v2, 0x0

    :goto_16
    if-lt v2, v3, :cond_19

    .line 725
    :cond_18
    return-void

    .line 721
    :cond_19
    aget-object v0, v1, v2

    .line 722
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 721
    add-int/lit8 v2, v2, 0x1

    goto :goto_16
.end method

.method private get(Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 697
    invoke-direct {p0, p1}, Lcom/idelan/app/Util/ACache$ACacheManager;->newFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 698
    .local v1, "file":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 699
    .local v0, "currentTime":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 700
    iget-object v2, p0, Lcom/idelan/app/Util/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    return-object v1
.end method

.method private newFile(Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 707
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/idelan/app/Util/ACache$ACacheManager;->cacheDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private put(Ljava/io/File;)V
    .registers 14
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 673
    iget-object v8, p0, Lcom/idelan/app/Util/ACache$ACacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 674
    .local v0, "curCacheCount":I
    :goto_6
    add-int/lit8 v8, v0, 0x1

    iget v9, p0, Lcom/idelan/app/Util/ACache$ACacheManager;->countLimit:I

    if-gt v8, v9, :cond_3e

    .line 680
    iget-object v8, p0, Lcom/idelan/app/Util/ACache$ACacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 682
    invoke-direct {p0, p1}, Lcom/idelan/app/Util/ACache$ACacheManager;->calculateSize(Ljava/io/File;)J

    move-result-wide v6

    .line 683
    .local v6, "valueSize":J
    iget-object v8, p0, Lcom/idelan/app/Util/ACache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 684
    .local v2, "curCacheSize":J
    :goto_1c
    add-long v8, v2, v6

    iget-wide v10, p0, Lcom/idelan/app/Util/ACache$ACacheManager;->sizeLimit:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_50

    .line 688
    iget-object v8, p0, Lcom/idelan/app/Util/ACache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 690
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 691
    .local v1, "currentTime":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {p1, v8, v9}, Ljava/io/File;->setLastModified(J)Z

    .line 692
    iget-object v8, p0, Lcom/idelan/app/Util/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v8, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    return-void

    .line 675
    .end local v1    # "currentTime":Ljava/lang/Long;
    .end local v2    # "curCacheSize":J
    .end local v6    # "valueSize":J
    :cond_3e
    invoke-direct {p0}, Lcom/idelan/app/Util/ACache$ACacheManager;->removeNext()J

    move-result-wide v4

    .line 676
    .local v4, "freedSize":J
    iget-object v8, p0, Lcom/idelan/app/Util/ACache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v10, v4

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 678
    iget-object v8, p0, Lcom/idelan/app/Util/ACache$ACacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    goto :goto_6

    .line 685
    .end local v4    # "freedSize":J
    .restart local v2    # "curCacheSize":J
    .restart local v6    # "valueSize":J
    :cond_50
    invoke-direct {p0}, Lcom/idelan/app/Util/ACache$ACacheManager;->removeNext()J

    move-result-wide v4

    .line 686
    .restart local v4    # "freedSize":J
    iget-object v8, p0, Lcom/idelan/app/Util/ACache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v10, v4

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v2

    goto :goto_1c
.end method

.method private remove(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 712
    invoke-direct {p0, p1}, Lcom/idelan/app/Util/ACache$ACacheManager;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 713
    .local v0, "image":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method private removeNext()J
    .registers 17

    .prologue
    .line 733
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/idelan/app/Util/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 734
    const-wide/16 v4, 0x0

    .line 759
    :cond_c
    :goto_c
    return-wide v4

    .line 737
    :cond_d
    const/4 v8, 0x0

    .line 738
    .local v8, "oldestUsage":Ljava/lang/Long;
    const/4 v7, 0x0

    .line 739
    .local v7, "mostLongUsedFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/idelan/app/Util/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 740
    .local v2, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Long;>;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/idelan/app/Util/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    monitor-enter v10

    .line 741
    :try_start_1c
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_20
    :goto_20
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3b

    .line 740
    monitor-exit v10
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_70

    .line 755
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/idelan/app/Util/ACache$ACacheManager;->calculateSize(Ljava/io/File;)J

    move-result-wide v4

    .line 756
    .local v4, "fileSize":J
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 757
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/idelan/app/Util/ACache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 741
    .end local v4    # "fileSize":J
    :cond_3b
    :try_start_3b
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 742
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Long;>;"
    if-nez v7, :cond_54

    .line 743
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/io/File;

    move-object v7, v0

    .line 744
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/Long;

    move-object v8, v0

    .line 745
    goto :goto_20

    .line 746
    :cond_54
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 747
    .local v6, "lastValueUsage":Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v9, v12, v14

    if-gez v9, :cond_20

    .line 748
    move-object v8, v6

    .line 749
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/io/File;

    move-object v7, v0

    goto :goto_20

    .line 740
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Long;>;"
    .end local v6    # "lastValueUsage":Ljava/lang/Long;
    :catchall_70
    move-exception v9

    monitor-exit v10
    :try_end_72
    .catchall {:try_start_3b .. :try_end_72} :catchall_70

    throw v9
.end method
