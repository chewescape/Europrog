.class public Lcom/google/android/gms/internal/zzro;
.super Ljava/lang/Object;


# instance fields
.field protected final Bf:Lcom/google/android/gms/internal/zzrp;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzrp;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzro;->Bf:Lcom/google/android/gms/internal/zzrp;

    return-void
.end method

.method protected static zzc(Lcom/google/android/gms/internal/zzrn;)Lcom/google/android/gms/internal/zzrp;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrn;->zzatv()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrn;->zzatx()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsd;->zza(Landroid/support/v4/app/FragmentActivity;)Lcom/google/android/gms/internal/zzsd;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrn;->zzatw()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrq;->zzt(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzrq;

    move-result-object v0

    goto :goto_e
.end method

.method public static zzs(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzrp;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/zzrn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzrn;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzro;->zzc(Lcom/google/android/gms/internal/zzrn;)Lcom/google/android/gms/internal/zzrp;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzro;->Bf:Lcom/google/android/gms/internal/zzrp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzrp;->zzaty()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public onDestroy()V
    .registers 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public onStart()V
    .registers 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public onStop()V
    .registers 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method
