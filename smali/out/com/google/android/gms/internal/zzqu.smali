.class public Lcom/google/android/gms/internal/zzqu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzrm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzqu$zza;
    }
.end annotation


# instance fields
.field private final xy:Lcom/google/android/gms/internal/zzrh;

.field private final zg:Ljava/util/concurrent/locks/Lock;

.field private final zj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/zzc",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zl:Lcom/google/android/gms/internal/zzrd;

.field private final zm:Lcom/google/android/gms/common/zzc;

.field private final zn:Ljava/util/concurrent/locks/Condition;

.field private zo:Z

.field private zp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzql",
            "<*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private zq:Lcom/google/android/gms/common/ConnectionResult;

.field private final zzajy:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/zzc;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;Lcom/google/android/gms/internal/zzrd;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/zzc;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzqr;",
            ">;",
            "Lcom/google/android/gms/internal/zzrd;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqu;->zj:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqu;->zg:Ljava/util/concurrent/locks/Lock;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqu;->zzajy:Landroid/os/Looper;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqu;->zn:Ljava/util/concurrent/locks/Condition;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zm:Lcom/google/android/gms/common/zzc;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zl:Lcom/google/android/gms/internal/zzrd;

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zk:Ljava/util/Map;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Api;->zzaqv()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v3

    invoke-interface {v9, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    :cond_41
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzqr;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzqr;->vS:Lcom/google/android/gms/common/api/Api;

    invoke-interface {v10, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    :cond_5c
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_64
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/Api;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/zzqr;

    new-instance v1, Lcom/google/android/gms/internal/zzqu$1;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzqu$1;-><init>(Lcom/google/android/gms/internal/zzqu;Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Landroid/os/Looper;Lcom/google/android/gms/common/api/Api$zze;Lcom/google/android/gms/internal/zzqr;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqu;->zj:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_64

    :cond_9b
    invoke-static {}, Lcom/google/android/gms/internal/zzrh;->zzatg()Lcom/google/android/gms/internal/zzrh;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqu;->xy:Lcom/google/android/gms/internal/zzrh;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqu;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqu;->zq:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqu;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqu;->zp:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqu;)Ljava/util/concurrent/locks/Lock;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zg:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqu;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzqu;->zo:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzqu;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zj:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzqu;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zp:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzqu;)Lcom/google/android/gms/internal/zzrd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zl:Lcom/google/android/gms/internal/zzrd;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzqu;)Ljava/util/concurrent/locks/Condition;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zn:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzqu;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zq:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzqu;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zk:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzqu;)Lcom/google/android/gms/common/zzc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zm:Lcom/google/android/gms/common/zzc;

    return-object v0
.end method


# virtual methods
.method public blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqu;->connect()V

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqu;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_20

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zn:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_4

    :catch_10
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xf

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    :goto_1f
    return-object v0

    :cond_20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqu;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->wO:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1f

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zq:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zq:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1f

    :cond_30
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    goto :goto_1f
.end method

.method public blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqu;->connect()V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqu;->isConnecting()Z

    move-result v2

    if-eqz v2, :cond_37

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_20

    :try_start_14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqu;->disconnect()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    :goto_1f
    return-object v0

    :cond_20
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqu;->zn:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_25} :catch_27

    move-result-wide v0

    goto :goto_8

    :catch_27
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xf

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    goto :goto_1f

    :cond_37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqu;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_40

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->wO:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1f

    :cond_40
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zq:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zq:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1f

    :cond_47
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    goto :goto_1f
.end method

.method public connect()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zg:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqu;->zo:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_3e

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zg:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_e
    return-void

    :cond_f
    const/4 v0, 0x1

    :try_start_10
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqu;->zo:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zp:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zq:Lcom/google/android/gms/common/ConnectionResult;

    new-instance v0, Lcom/google/android/gms/internal/zzqu$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzqu$zza;-><init>(Lcom/google/android/gms/internal/zzqu;Lcom/google/android/gms/internal/zzqu$1;)V

    new-instance v1, Lcom/google/android/gms/internal/zzsv;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqu;->zzajy:Landroid/os/Looper;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzsv;-><init>(Landroid/os/Looper;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqu;->xy:Lcom/google/android/gms/internal/zzrh;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqu;->zj:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzrh;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_38
    .catchall {:try_start_10 .. :try_end_38} :catchall_3e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zg:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_e

    :catchall_3e
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqu;->zg:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public disconnect()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zg:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqu;->zo:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zp:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zq:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zn:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_19

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zg:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_19
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqu;->zg:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    return-void
.end method

.method public getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 5
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;)",
            "Lcom/google/android/gms/common/ConnectionResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zg:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zj:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zzaqv()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzc;->getClient()Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->wO:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_4c

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqu;->zg:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_22
    return-object v0

    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zp:Ljava/util/Map;

    if-eqz v0, :cond_45

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqu;->zp:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zj:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zzaqv()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzc;->getApiKey()Lcom/google/android/gms/internal/zzql;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/ConnectionResult;
    :try_end_3f
    .catchall {:try_start_23 .. :try_end_3f} :catchall_4c

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqu;->zg:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_22

    :cond_45
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zg:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x0

    goto :goto_22

    :catchall_4c
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqu;->zg:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public isConnected()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zg:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zp:Ljava/util/Map;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zq:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_16

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqu;->zg:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_e

    :catchall_16
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqu;->zg:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public isConnecting()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zg:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zp:Ljava/util/Map;

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqu;->zo:Z
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_16

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqu;->zg:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_e

    :catchall_16
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqu;->zg:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzqo$zza;)Lcom/google/android/gms/internal/zzqo$zza;
    .registers 4
    .param p1    # Lcom/google/android/gms/internal/zzqo$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/internal/zzqo$zza",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zl:Lcom/google/android/gms/internal/zzrd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrd;->Ap:Lcom/google/android/gms/internal/zzsg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzsg;->zzb(Lcom/google/android/gms/internal/zzqq;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zj:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqo$zza;->zzaqv()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/zzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/zzc;->doRead(Lcom/google/android/gms/internal/zzqo$zza;)Lcom/google/android/gms/internal/zzqo$zza;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzsa;)Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public zzard()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public zzarz()V
    .registers 1

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzqo$zza;)Lcom/google/android/gms/internal/zzqo$zza;
    .registers 4
    .param p1    # Lcom/google/android/gms/internal/zzqo$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzqo$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zl:Lcom/google/android/gms/internal/zzrd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrd;->Ap:Lcom/google/android/gms/internal/zzsg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzsg;->zzb(Lcom/google/android/gms/internal/zzqq;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqu;->zj:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqo$zza;->zzaqv()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/zzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/zzc;->doWrite(Lcom/google/android/gms/internal/zzqo$zza;)Lcom/google/android/gms/internal/zzqo$zza;

    move-result-object v0

    return-object v0
.end method
