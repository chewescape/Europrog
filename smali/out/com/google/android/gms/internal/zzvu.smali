.class public final Lcom/google/android/gms/internal/zzvu;
.super Ljava/lang/Object;


# static fields
.field private static WD:Lcom/google/android/gms/internal/zzvu;


# instance fields
.field private final WE:Lcom/google/android/gms/internal/zzvr;

.field private final WF:Lcom/google/android/gms/internal/zzvs;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzvu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzvu;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzvu;->zza(Lcom/google/android/gms/internal/zzvu;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzvr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzvr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzvu;->WE:Lcom/google/android/gms/internal/zzvr;

    new-instance v0, Lcom/google/android/gms/internal/zzvs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzvs;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzvu;->WF:Lcom/google/android/gms/internal/zzvs;

    return-void
.end method

.method protected static zza(Lcom/google/android/gms/internal/zzvu;)V
    .registers 3

    const-class v1, Lcom/google/android/gms/internal/zzvu;

    monitor-enter v1

    :try_start_3
    sput-object p0, Lcom/google/android/gms/internal/zzvu;->WD:Lcom/google/android/gms/internal/zzvu;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private static zzbhd()Lcom/google/android/gms/internal/zzvu;
    .registers 2

    const-class v1, Lcom/google/android/gms/internal/zzvu;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/zzvu;->WD:Lcom/google/android/gms/internal/zzvu;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public static zzbhe()Lcom/google/android/gms/internal/zzvr;
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/zzvu;->zzbhd()Lcom/google/android/gms/internal/zzvu;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzvu;->WE:Lcom/google/android/gms/internal/zzvr;

    return-object v0
.end method

.method public static zzbhf()Lcom/google/android/gms/internal/zzvs;
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/zzvu;->zzbhd()Lcom/google/android/gms/internal/zzvu;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzvu;->WF:Lcom/google/android/gms/internal/zzvs;

    return-object v0
.end method
