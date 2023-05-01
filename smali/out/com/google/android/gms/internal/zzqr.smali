.class public Lcom/google/android/gms/internal/zzqr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field public final vS:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<*>;"
        }
    .end annotation
.end field

.field private final yU:I

.field private yV:Lcom/google/android/gms/internal/zzqs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Api;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqr;->vS:Lcom/google/android/gms/common/api/Api;

    iput p2, p0, Lcom/google/android/gms/internal/zzqr;->yU:I

    return-void
.end method

.method private zzary()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->yV:Lcom/google/android/gms/internal/zzqs;

    const-string v1, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqr;->zzary()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->yV:Lcom/google/android/gms/internal/zzqs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzqs;->onConnected(Landroid/os/Bundle;)V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqr;->zzary()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->yV:Lcom/google/android/gms/internal/zzqs;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqr;->vS:Lcom/google/android/gms/common/api/Api;

    iget v2, p0, Lcom/google/android/gms/internal/zzqr;->yU:I

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/zzqs;->zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqr;->zzary()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqr;->yV:Lcom/google/android/gms/internal/zzqs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzqs;->onConnectionSuspended(I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzqs;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqr;->yV:Lcom/google/android/gms/internal/zzqs;

    return-void
.end method
