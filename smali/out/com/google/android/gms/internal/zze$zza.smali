.class Lcom/google/android/gms/internal/zze$zza;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzt:Lcom/google/android/gms/internal/zze;

.field private final zzu:Lcom/google/android/gms/internal/zzk;

.field private final zzv:Lcom/google/android/gms/internal/zzm;

.field private final zzw:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zze;Lcom/google/android/gms/internal/zzk;Lcom/google/android/gms/internal/zzm;Ljava/lang/Runnable;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zze$zza;->zzt:Lcom/google/android/gms/internal/zze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zze$zza;->zzu:Lcom/google/android/gms/internal/zzk;

    iput-object p3, p0, Lcom/google/android/gms/internal/zze$zza;->zzv:Lcom/google/android/gms/internal/zzm;

    iput-object p4, p0, Lcom/google/android/gms/internal/zze$zza;->zzw:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zze$zza;->zzu:Lcom/google/android/gms/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzk;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/zze$zza;->zzu:Lcom/google/android/gms/internal/zzk;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzk;->zzd(Ljava/lang/String;)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/zze$zza;->zzv:Lcom/google/android/gms/internal/zzm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzm;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/google/android/gms/internal/zze$zza;->zzu:Lcom/google/android/gms/internal/zzk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zze$zza;->zzv:Lcom/google/android/gms/internal/zzm;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzm;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzk;->zza(Ljava/lang/Object;)V

    :goto_21
    iget-object v0, p0, Lcom/google/android/gms/internal/zze$zza;->zzv:Lcom/google/android/gms/internal/zzm;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzm;->zzbh:Z

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/android/gms/internal/zze$zza;->zzu:Lcom/google/android/gms/internal/zzk;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzk;->zzc(Ljava/lang/String;)V

    :goto_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/zze$zza;->zzw:Ljava/lang/Runnable;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/zze$zza;->zzw:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_f

    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/internal/zze$zza;->zzu:Lcom/google/android/gms/internal/zzk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zze$zza;->zzv:Lcom/google/android/gms/internal/zzm;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzm;->zzbg:Lcom/google/android/gms/internal/zzr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzk;->zzc(Lcom/google/android/gms/internal/zzr;)V

    goto :goto_21

    :cond_42
    iget-object v0, p0, Lcom/google/android/gms/internal/zze$zza;->zzu:Lcom/google/android/gms/internal/zzk;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzk;->zzd(Ljava/lang/String;)V

    goto :goto_2e
.end method
