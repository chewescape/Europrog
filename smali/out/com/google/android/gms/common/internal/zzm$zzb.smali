.class final Lcom/google/android/gms/common/internal/zzm$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/zzm$zzb$zza;
    }
.end annotation


# instance fields
.field private DI:Landroid/os/IBinder;

.field private Er:Landroid/content/ComponentName;

.field private final Es:Lcom/google/android/gms/common/internal/zzm$zzb$zza;

.field private final Et:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private Eu:Z

.field private final Ev:Lcom/google/android/gms/common/internal/zzm$zza;

.field final synthetic Ew:Lcom/google/android/gms/common/internal/zzm;

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzm;Lcom/google/android/gms/common/internal/zzm$zza;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->Ew:Lcom/google/android/gms/common/internal/zzm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->Ev:Lcom/google/android/gms/common/internal/zzm$zza;

    new-instance v0, Lcom/google/android/gms/common/internal/zzm$zzb$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zzm$zzb$zza;-><init>(Lcom/google/android/gms/common/internal/zzm$zzb;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->Es:Lcom/google/android/gms/common/internal/zzm$zzb$zza;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->Et:Ljava/util/Set;

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->mState:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzm$zzb;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->mState:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzm$zzb;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->Er:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzm$zzb;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->DI:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzm$zzb;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->Et:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->DI:Landroid/os/IBinder;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->Er:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getState()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->mState:I

    return v0
.end method

.method public isBound()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->Eu:Z

    return v0
.end method

.method public zza(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->Ew:Lcom/google/android/gms/common/internal/zzm;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzm;->zzc(Lcom/google/android/gms/common/internal/zzm;)Lcom/google/android/gms/common/stats/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->Ew:Lcom/google/android/gms/common/internal/zzm;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzm;->zzb(Lcom/google/android/gms/common/internal/zzm;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->Ev:Lcom/google/android/gms/common/internal/zzm$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zzm$zza;->zzawe()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/common/stats/zza;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->Et:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zza(Landroid/content/ServiceConnection;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->Et:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public zzawf()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->Et:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public zzb(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->Ew:Lcom/google/android/gms/common/internal/zzm;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzm;->zzc(Lcom/google/android/gms/common/internal/zzm;)Lcom/google/android/gms/common/stats/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->Ew:Lcom/google/android/gms/common/internal/zzm;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzm;->zzb(Lcom/google/android/gms/common/internal/zzm;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/common/stats/zza;->zzb(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->Et:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public zzhw(Ljava/lang/String;)V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->mState:I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->Ew:Lcom/google/android/gms/common/internal/zzm;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzm;->zzc(Lcom/google/android/gms/common/internal/zzm;)Lcom/google/android/gms/common/stats/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->Ew:Lcom/google/android/gms/common/internal/zzm;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzm;->zzb(Lcom/google/android/gms/common/internal/zzm;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->Ev:Lcom/google/android/gms/common/internal/zzm$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zzm$zza;->zzawe()Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->Es:Lcom/google/android/gms/common/internal/zzm$zzb$zza;

    const/16 v5, 0x81

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/stats/zza;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->Eu:Z

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->Eu:Z

    if-nez v0, :cond_38

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->mState:I

    :try_start_27
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->Ew:Lcom/google/android/gms/common/internal/zzm;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzm;->zzc(Lcom/google/android/gms/common/internal/zzm;)Lcom/google/android/gms/common/stats/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->Ew:Lcom/google/android/gms/common/internal/zzm;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzm;->zzb(Lcom/google/android/gms/common/internal/zzm;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->Es:Lcom/google/android/gms/common/internal/zzm$zzb$zza;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/zza;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_38} :catch_39

    :cond_38
    :goto_38
    return-void

    :catch_39
    move-exception v0

    goto :goto_38
.end method

.method public zzhx(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->Ew:Lcom/google/android/gms/common/internal/zzm;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzm;->zzc(Lcom/google/android/gms/common/internal/zzm;)Lcom/google/android/gms/common/stats/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->Ew:Lcom/google/android/gms/common/internal/zzm;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzm;->zzb(Lcom/google/android/gms/common/internal/zzm;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->Es:Lcom/google/android/gms/common/internal/zzm$zzb$zza;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/zza;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->Eu:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->mState:I

    return-void
.end method
