.class public Lcom/google/android/gms/internal/zzqw;
.super Lcom/google/android/gms/internal/zzqp;


# instance fields
.field private xy:Lcom/google/android/gms/internal/zzrh;

.field private final zx:Lcom/google/android/gms/common/util/zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/util/zza",
            "<",
            "Lcom/google/android/gms/internal/zzql",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzrp;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqp;-><init>(Lcom/google/android/gms/internal/zzrp;)V

    new-instance v0, Lcom/google/android/gms/common/util/zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/util/zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqw;->zx:Lcom/google/android/gms/common/util/zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqw;->Bf:Lcom/google/android/gms/internal/zzrp;

    const-string v1, "ConnectionlessLifecycleHelper"

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/internal/zzrp;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzro;)V

    return-void
.end method

.method public static zza(Landroid/app/Activity;Lcom/google/android/gms/internal/zzrh;Lcom/google/android/gms/internal/zzql;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/internal/zzrh;",
            "Lcom/google/android/gms/internal/zzql",
            "<*>;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/zzqw;->zzs(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzrp;

    move-result-object v1

    const-string v0, "ConnectionlessLifecycleHelper"

    const-class v2, Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzrp;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzro;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqw;

    if-nez v0, :cond_15

    new-instance v0, Lcom/google/android/gms/internal/zzqw;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzqw;-><init>(Lcom/google/android/gms/internal/zzrp;)V

    :cond_15
    iput-object p1, v0, Lcom/google/android/gms/internal/zzqw;->xy:Lcom/google/android/gms/internal/zzrh;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzqw;->zza(Lcom/google/android/gms/internal/zzql;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrh;->zza(Lcom/google/android/gms/internal/zzqw;)V

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzql;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzql",
            "<*>;)V"
        }
    .end annotation

    const-string v0, "ApiKey cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzaa;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqw;->zx:Lcom/google/android/gms/common/util/zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/util/zza;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzqp;->onStart()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqw;->zx:Lcom/google/android/gms/common/util/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/common/util/zza;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqw;->xy:Lcom/google/android/gms/internal/zzrh;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzrh;->zza(Lcom/google/android/gms/internal/zzqw;)V

    :cond_10
    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzqp;->onStop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqw;->xy:Lcom/google/android/gms/internal/zzrh;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzrh;->zzb(Lcom/google/android/gms/internal/zzqw;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/common/ConnectionResult;I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqw;->xy:Lcom/google/android/gms/internal/zzrh;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzrh;->zza(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method

.method protected zzarm()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqw;->xy:Lcom/google/android/gms/internal/zzrh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrh;->zzarm()V

    return-void
.end method

.method zzasl()Lcom/google/android/gms/common/util/zza;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/util/zza",
            "<",
            "Lcom/google/android/gms/internal/zzql",
            "<*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqw;->zx:Lcom/google/android/gms/common/util/zza;

    return-object v0
.end method
