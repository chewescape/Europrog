.class Lcom/google/android/gms/internal/zzrb$zze;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzrb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zze"
.end annotation


# instance fields
.field final synthetic zR:Lcom/google/android/gms/internal/zzrb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzrb;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrb$zze;->zR:Lcom/google/android/gms/internal/zzrb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzrb;Lcom/google/android/gms/internal/zzrb$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzrb$zze;-><init>(Lcom/google/android/gms/internal/zzrb;)V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb$zze;->zR:Lcom/google/android/gms/internal/zzrb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrb;->zzf(Lcom/google/android/gms/internal/zzrb;)Lcom/google/android/gms/internal/zzxp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzrb$zzd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrb$zze;->zR:Lcom/google/android/gms/internal/zzrb;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzrb$zzd;-><init>(Lcom/google/android/gms/internal/zzrb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzxp;->zza(Lcom/google/android/gms/signin/internal/zzd;)V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb$zze;->zR:Lcom/google/android/gms/internal/zzrb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrb;->zzc(Lcom/google/android/gms/internal/zzrb;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb$zze;->zR:Lcom/google/android/gms/internal/zzrb;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzrb;->zzb(Lcom/google/android/gms/internal/zzrb;Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb$zze;->zR:Lcom/google/android/gms/internal/zzrb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrb;->zzi(Lcom/google/android/gms/internal/zzrb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb$zze;->zR:Lcom/google/android/gms/internal/zzrb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrb;->zzj(Lcom/google/android/gms/internal/zzrb;)V
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_2b

    :goto_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb$zze;->zR:Lcom/google/android/gms/internal/zzrb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrb;->zzc(Lcom/google/android/gms/internal/zzrb;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb$zze;->zR:Lcom/google/android/gms/internal/zzrb;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzrb;->zza(Lcom/google/android/gms/internal/zzrb;Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_2b

    goto :goto_1b

    :catchall_2b
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrb$zze;->zR:Lcom/google/android/gms/internal/zzrb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzrb;->zzc(Lcom/google/android/gms/internal/zzrb;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public onConnectionSuspended(I)V
    .registers 2

    return-void
.end method
