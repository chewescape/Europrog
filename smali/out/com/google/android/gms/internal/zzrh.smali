.class public Lcom/google/android/gms/internal/zzrh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzrh$zzb;,
        Lcom/google/android/gms/internal/zzrh$zza;
    }
.end annotation


# static fields
.field public static final AG:Lcom/google/android/gms/common/api/Status;

.field private static final AH:Lcom/google/android/gms/common/api/Status;

.field private static AJ:Lcom/google/android/gms/internal/zzrh;

.field private static final zzaox:Ljava/lang/Object;


# instance fields
.field private AI:J

.field private AK:I

.field private final AL:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final AM:Ljava/util/concurrent/atomic/AtomicInteger;

.field private AN:Lcom/google/android/gms/internal/zzqw;

.field private final AO:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzql",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final AP:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzql",
            "<*>;>;"
        }
    .end annotation
.end field

.field private Af:J

.field private Ag:J

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final xP:Lcom/google/android/gms/common/GoogleApiAvailability;

.field private final zj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzql",
            "<*>;",
            "Lcom/google/android/gms/internal/zzrh$zza",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x4

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Sign-out occurred while this API call was in progress."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzrh;->AG:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "The user must be signed in to make this API call."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzrh;->AH:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzrh;->zzaox:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzrh;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GoogleApiAvailability;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GoogleApiAvailability;)V
    .registers 7

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzrh;->Ag:J

    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzrh;->Af:J

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzrh;->AI:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzrh;->AK:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrh;->AL:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrh;->AM:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrh;->zj:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrh;->AN:Lcom/google/android/gms/internal/zzqw;

    new-instance v0, Lcom/google/android/gms/common/util/zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/util/zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrh;->AO:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/common/util/zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/util/zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrh;->AP:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrh;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GoogleApiHandler"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrh;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzrh;->xP:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzrh;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzrh;->AK:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzrh;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private zza(ILcom/google/android/gms/common/ConnectionResult;)V
    .registers 11
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->zj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrh$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrh$zza;->getInstanceId()I

    move-result v3

    if-ne v3, p1, :cond_b

    :goto_1d
    if-eqz v0, :cond_70

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrh;->xP:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x45

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Error resolution was canceled by the user, original error message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzrh$zza;->zza(Lcom/google/android/gms/internal/zzrh$zza;Lcom/google/android/gms/common/api/Status;)V

    :goto_6f
    return-void

    :cond_70
    const-string v0, "GoogleApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x4c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Could not find API instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " while trying to fail enqueued calls."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6f

    :cond_96
    move-object v0, v1

    goto :goto_1d
.end method

.method private zza(Lcom/google/android/gms/internal/zzrv;)V
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->zj:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzrv;->Bs:Lcom/google/android/gms/common/api/zzc;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/zzc;->getApiKey()Lcom/google/android/gms/internal/zzql;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrh$zza;

    if-nez v0, :cond_23

    iget-object v0, p1, Lcom/google/android/gms/internal/zzrv;->Bs:Lcom/google/android/gms/common/api/zzc;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrh;->zzb(Lcom/google/android/gms/common/api/zzc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->zj:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzrv;->Bs:Lcom/google/android/gms/common/api/zzc;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/zzc;->getApiKey()Lcom/google/android/gms/internal/zzql;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrh$zza;

    :cond_23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrh$zza;->zzain()Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrh;->AM:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p1, Lcom/google/android/gms/internal/zzrv;->Br:I

    if-eq v1, v2, :cond_3e

    iget-object v1, p1, Lcom/google/android/gms/internal/zzrv;->Bq:Lcom/google/android/gms/internal/zzqj;

    sget-object v2, Lcom/google/android/gms/internal/zzrh;->AG:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzqj;->zzy(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrh$zza;->signOut()V

    :goto_3d
    return-void

    :cond_3e
    iget-object v1, p1, Lcom/google/android/gms/internal/zzrv;->Bq:Lcom/google/android/gms/internal/zzqj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzrh$zza;->zza(Lcom/google/android/gms/internal/zzqj;)V

    goto :goto_3d
.end method

.method public static zzatg()Lcom/google/android/gms/internal/zzrh;
    .registers 3

    sget-object v1, Lcom/google/android/gms/internal/zzrh;->zzaox:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/zzrh;->AJ:Lcom/google/android/gms/internal/zzrh;

    const-string v2, "Must guarantee manager is non-null before using getInstance"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzaa;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzrh;->AJ:Lcom/google/android/gms/internal/zzrh;

    monitor-exit v1

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method private zzati()V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->zj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrh$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrh$zza;->zzato()V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrh$zza;->zzc(Lcom/google/android/gms/internal/zzrh$zza;)V

    goto :goto_a

    :cond_1d
    return-void
.end method

.method static synthetic zzatk()Lcom/google/android/gms/common/api/Status;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzrh;->AH:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method static synthetic zzatl()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzrh;->zzaox:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzrh;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzrh;->Ag:J

    return-wide v0
.end method

.method private zzb(Lcom/google/android/gms/common/api/zzc;)V
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc;->getApiKey()Lcom/google/android/gms/internal/zzql;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->zj:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->zj:Ljava/util/Map;

    new-instance v2, Lcom/google/android/gms/internal/zzrh$zza;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/zzrh$zza;-><init>(Lcom/google/android/gms/internal/zzrh;Lcom/google/android/gms/common/api/zzc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->zj:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrh$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrh$zza;->zzain()Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrh;->AP:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_29
    invoke-static {v0}, Lcom/google/android/gms/internal/zzrh$zza;->zzc(Lcom/google/android/gms/internal/zzrh$zza;)V

    return-void
.end method

.method public static zzbx(Landroid/content/Context;)Lcom/google/android/gms/internal/zzrh;
    .registers 4

    sget-object v1, Lcom/google/android/gms/internal/zzrh;->zzaox:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/zzrh;->AJ:Lcom/google/android/gms/internal/zzrh;

    if-nez v0, :cond_12

    new-instance v0, Lcom/google/android/gms/internal/zzrh;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzrh;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/internal/zzrh;->AJ:Lcom/google/android/gms/internal/zzrh;

    :cond_12
    sget-object v0, Lcom/google/android/gms/internal/zzrh;->AJ:Lcom/google/android/gms/internal/zzrh;

    monitor-exit v1

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzrh;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzrh;->Af:J

    return-wide v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzrh;)Lcom/google/android/gms/internal/zzqw;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->AN:Lcom/google/android/gms/internal/zzqw;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzrh;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->AO:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzrh;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzrh;)Lcom/google/android/gms/common/GoogleApiAvailability;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->xP:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzrh;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzrh;->AI:J

    return-wide v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzrh;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzrh;->AK:I

    return v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/zzrh;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->zj:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_96

    const-string v0, "GoogleApiManager"

    iget v1, p1, Landroid/os/Message;->what:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown message id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_22
    return v0

    :pswitch_23
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzqn;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzrh;->zza(Lcom/google/android/gms/internal/zzqn;)V

    :cond_2a
    :goto_2a
    const/4 v0, 0x1

    goto :goto_22

    :pswitch_2c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/zzc;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrh;->zzb(Lcom/google/android/gms/common/api/zzc;)V

    goto :goto_2a

    :pswitch_34
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrh;->zzati()V

    goto :goto_2a

    :pswitch_38
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzrv;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrh;->zza(Lcom/google/android/gms/internal/zzrv;)V

    goto :goto_2a

    :pswitch_40
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/zzrh;->zza(ILcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_2a

    :pswitch_4a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->zj:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->zj:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrh$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrh$zza;->zzd(Lcom/google/android/gms/internal/zzrh$zza;)V

    goto :goto_2a

    :pswitch_62
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrh;->zzatj()V

    goto :goto_2a

    :pswitch_66
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->zj:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->zj:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrh$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrh$zza;->zze(Lcom/google/android/gms/internal/zzrh$zza;)V

    goto :goto_2a

    :pswitch_7e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->zj:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->zj:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrh$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrh$zza;->zzf(Lcom/google/android/gms/internal/zzrh$zza;)V

    goto :goto_2a

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_23
        :pswitch_34
        :pswitch_38
        :pswitch_40
        :pswitch_2c
        :pswitch_38
        :pswitch_4a
        :pswitch_62
        :pswitch_66
        :pswitch_7e
        :pswitch_38
    .end packed-switch
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc;Lcom/google/android/gms/internal/zzrr$zzb;)Lcom/google/android/gms/tasks/Task;
    .registers 10
    .param p1    # Lcom/google/android/gms/common/api/zzc;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/zzrr$zzb;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/zzc",
            "<TO;>;",
            "Lcom/google/android/gms/internal/zzrr$zzb",
            "<*>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzqj$zze;

    invoke-direct {v1, p2, v0}, Lcom/google/android/gms/internal/zzqj$zze;-><init>(Lcom/google/android/gms/internal/zzrr$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrh;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrh;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xb

    new-instance v5, Lcom/google/android/gms/internal/zzrv;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzrh;->AM:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-direct {v5, v1, v6, p1}, Lcom/google/android/gms/internal/zzrv;-><init>(Lcom/google/android/gms/internal/zzqj;ILcom/google/android/gms/common/api/zzc;)V

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc;Lcom/google/android/gms/internal/zzrw;Lcom/google/android/gms/internal/zzsh;)Lcom/google/android/gms/tasks/Task;
    .registers 11
    .param p1    # Lcom/google/android/gms/common/api/zzc;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/zzrw;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/zzsh;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/zzc",
            "<TO;>;",
            "Lcom/google/android/gms/internal/zzrw",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;",
            "Lcom/google/android/gms/internal/zzsh",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzqj$zzc;

    new-instance v2, Lcom/google/android/gms/internal/zzrx;

    invoke-direct {v2, p2, p3}, Lcom/google/android/gms/internal/zzrx;-><init>(Lcom/google/android/gms/internal/zzrw;Lcom/google/android/gms/internal/zzsh;)V

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/zzqj$zzc;-><init>(Lcom/google/android/gms/internal/zzrx;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrh;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrh;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    new-instance v5, Lcom/google/android/gms/internal/zzrv;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzrh;->AM:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-direct {v5, v1, v6, p1}, Lcom/google/android/gms/internal/zzrv;-><init>(Lcom/google/android/gms/internal/zzqj;ILcom/google/android/gms/common/api/zzc;)V

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public zza(Ljava/lang/Iterable;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/common/api/zzc",
            "<*>;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzqn;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzqn;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/zzc;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrh;->zj:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzc;->getApiKey()Lcom/google/android/gms/internal/zzql;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrh$zza;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrh$zza;->isConnected()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrh;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqn;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    :goto_39
    return-object v0

    :cond_3a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqn;->zzarp()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqn;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_39
.end method

.method public zza(Lcom/google/android/gms/common/ConnectionResult;I)V
    .registers 7

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzrh;->zzc(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrh;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_13
    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrh;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc;ILcom/google/android/gms/internal/zzqo$zza;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/zzc",
            "<TO;>;I",
            "Lcom/google/android/gms/internal/zzqo$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzqj$zzb;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/zzqj$zzb;-><init>(ILcom/google/android/gms/internal/zzqo$zza;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrh;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrh;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    new-instance v4, Lcom/google/android/gms/internal/zzrv;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzrh;->AM:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-direct {v4, v0, v5, p1}, Lcom/google/android/gms/internal/zzrv;-><init>(Lcom/google/android/gms/internal/zzqj;ILcom/google/android/gms/common/api/zzc;)V

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/zzc;ILcom/google/android/gms/internal/zzse;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/zzsb;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/zzc",
            "<TO;>;I",
            "Lcom/google/android/gms/internal/zzse",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "TTResult;>;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<TTResult;>;",
            "Lcom/google/android/gms/internal/zzsb;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzqj$zzd;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/google/android/gms/internal/zzqj$zzd;-><init>(ILcom/google/android/gms/internal/zzse;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/zzsb;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrh;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrh;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    new-instance v4, Lcom/google/android/gms/internal/zzrv;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzrh;->AM:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-direct {v4, v0, v5, p1}, Lcom/google/android/gms/internal/zzrv;-><init>(Lcom/google/android/gms/internal/zzqj;ILcom/google/android/gms/common/api/zzc;)V

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzqn;)V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqn;->zzaro()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzql;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrh;->zj:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzrh$zza;

    if-nez v1, :cond_29

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzqn;->zza(Lcom/google/android/gms/internal/zzql;Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_28
    return-void

    :cond_29
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzrh$zza;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_35

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->wO:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzqn;->zza(Lcom/google/android/gms/internal/zzql;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_8

    :cond_35
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzrh$zza;->zzatp()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v3

    if-eqz v3, :cond_43

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzrh$zza;->zzatp()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzqn;->zza(Lcom/google/android/gms/internal/zzql;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_8

    :cond_43
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzrh$zza;->zzb(Lcom/google/android/gms/internal/zzqn;)V

    goto :goto_8
.end method

.method public zza(Lcom/google/android/gms/internal/zzqw;)V
    .registers 5
    .param p1    # Lcom/google/android/gms/internal/zzqw;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v1, Lcom/google/android/gms/internal/zzrh;->zzaox:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->AN:Lcom/google/android/gms/internal/zzqw;

    if-eq v0, p1, :cond_17

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrh;->AN:Lcom/google/android/gms/internal/zzqw;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->AO:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->AO:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqw;->zzasl()Lcom/google/android/gms/common/util/zza;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_17
    monitor-exit v1

    return-void

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public zzarm()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrh;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public zzath()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->AL:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public zzatj()V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->AP:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzql;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrh;->zj:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrh$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrh$zza;->signOut()V

    goto :goto_6

    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->AP:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method zzb(Lcom/google/android/gms/internal/zzqw;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/internal/zzqw;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v1, Lcom/google/android/gms/internal/zzrh;->zzaox:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->AN:Lcom/google/android/gms/internal/zzqw;

    if-ne v0, p1, :cond_f

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrh;->AN:Lcom/google/android/gms/internal/zzqw;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->AO:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_f
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method zzc(Lcom/google/android/gms/common/ConnectionResult;I)Z
    .registers 5

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->xP:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUserResolvableError(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh;->xP:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrh;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/common/GoogleApiAvailability;->zza(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;I)V

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method
