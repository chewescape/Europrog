.class public Lcom/google/android/gms/internal/zzrc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzre;


# instance fields
.field private final zA:Lcom/google/android/gms/internal/zzrf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzrf;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrc;->zA:Lcom/google/android/gms/internal/zzrf;

    return-void
.end method


# virtual methods
.method public begin()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc;->zA:Lcom/google/android/gms/internal/zzrf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrf;->zzate()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc;->zA:Lcom/google/android/gms/internal/zzrf;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrf;->yW:Lcom/google/android/gms/internal/zzrd;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzrd;->Ak:Ljava/util/Set;

    return-void
.end method

.method public connect()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc;->zA:Lcom/google/android/gms/internal/zzrf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrf;->zzatc()V

    return-void
.end method

.method public disconnect()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onConnectionSuspended(I)V
    .registers 2

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzqo$zza;)Lcom/google/android/gms/internal/zzqo$zza;
    .registers 3
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc;->zA:Lcom/google/android/gms/internal/zzrf;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrf;->yW:Lcom/google/android/gms/internal/zzrd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrd;->Ad:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)V"
        }
    .end annotation

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzqo$zza;)Lcom/google/android/gms/internal/zzqo$zza;
    .registers 4
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

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
