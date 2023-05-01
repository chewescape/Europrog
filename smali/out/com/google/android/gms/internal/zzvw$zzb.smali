.class public final Lcom/google/android/gms/internal/zzvw$zzb;
.super Lcom/google/android/gms/internal/zzaru;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzvw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaru",
        "<",
        "Lcom/google/android/gms/internal/zzvw$zzb;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile ahF:[Lcom/google/android/gms/internal/zzvw$zzb;


# instance fields
.field public ahG:Lcom/google/android/gms/internal/zzvw$zzd;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaru;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzvw$zzb;->zzboc()Lcom/google/android/gms/internal/zzvw$zzb;

    return-void
.end method

.method public static zzbob()[Lcom/google/android/gms/internal/zzvw$zzb;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzvw$zzb;->ahF:[Lcom/google/android/gms/internal/zzvw$zzb;

    if-nez v0, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/zzary;->btO:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/zzvw$zzb;->ahF:[Lcom/google/android/gms/internal/zzvw$zzb;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzvw$zzb;

    sput-object v0, Lcom/google/android/gms/internal/zzvw$zzb;->ahF:[Lcom/google/android/gms/internal/zzvw$zzb;

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/zzvw$zzb;->ahF:[Lcom/google/android/gms/internal/zzvw$zzb;

    return-object v0

    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_6

    move v0, v1

    :cond_5
    :goto_5
    return v0

    :cond_6
    instance-of v2, p1, Lcom/google/android/gms/internal/zzvw$zzb;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzvw$zzb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zzb;->name:Ljava/lang/String;

    if-nez v2, :cond_36

    iget-object v2, p1, Lcom/google/android/gms/internal/zzvw$zzb;->name:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_14
    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zzb;->ahG:Lcom/google/android/gms/internal/zzvw$zzd;

    if-nez v2, :cond_41

    iget-object v2, p1, Lcom/google/android/gms/internal/zzvw$zzb;->ahG:Lcom/google/android/gms/internal/zzvw$zzd;

    if-nez v2, :cond_5

    :cond_1c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zzb;->btG:Lcom/google/android/gms/internal/zzarw;

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zzb;->btG:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzarw;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4c

    :cond_28
    iget-object v2, p1, Lcom/google/android/gms/internal/zzvw$zzb;->btG:Lcom/google/android/gms/internal/zzarw;

    if-eqz v2, :cond_34

    iget-object v2, p1, Lcom/google/android/gms/internal/zzvw$zzb;->btG:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzarw;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_34
    move v0, v1

    goto :goto_5

    :cond_36
    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zzb;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzvw$zzb;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_5

    :cond_41
    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zzb;->ahG:Lcom/google/android/gms/internal/zzvw$zzd;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzvw$zzb;->ahG:Lcom/google/android/gms/internal/zzvw$zzd;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzvw$zzd;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_5

    :cond_4c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzb;->btG:Lcom/google/android/gms/internal/zzarw;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzvw$zzb;->btG:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzarw;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzb;->name:Ljava/lang/String;

    if-nez v0, :cond_2f

    move v0, v1

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzb;->ahG:Lcom/google/android/gms/internal/zzvw$zzd;

    if-nez v0, :cond_36

    move v0, v1

    :goto_1e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zzb;->btG:Lcom/google/android/gms/internal/zzarw;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zzb;->btG:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzarw;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3d

    :cond_2d
    :goto_2d
    add-int/2addr v0, v1

    return v0

    :cond_2f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzb;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_16

    :cond_36
    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzb;->ahG:Lcom/google/android/gms/internal/zzvw$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzvw$zzd;->hashCode()I

    move-result v0

    goto :goto_1e

    :cond_3d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzvw$zzb;->btG:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzarw;->hashCode()I

    move-result v1

    goto :goto_2d
.end method

.method public zza(Lcom/google/android/gms/internal/zzart;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzb;->name:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzb;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzvw$zzb;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->zzq(ILjava/lang/String;)V

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzb;->ahG:Lcom/google/android/gms/internal/zzvw$zzd;

    if-eqz v0, :cond_1e

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzvw$zzb;->ahG:Lcom/google/android/gms/internal/zzvw$zzd;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->zza(ILcom/google/android/gms/internal/zzasa;)V

    :cond_1e
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzaru;->zza(Lcom/google/android/gms/internal/zzart;)V

    return-void
.end method

.method public zzad(Lcom/google/android/gms/internal/zzars;)Lcom/google/android/gms/internal/zzvw$zzb;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->bU()I

    move-result v0

    sparse-switch v0, :sswitch_data_26

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzaru;->zza(Lcom/google/android/gms/internal/zzars;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzb;->name:Ljava/lang/String;

    goto :goto_0

    :sswitch_15
    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzb;->ahG:Lcom/google/android/gms/internal/zzvw$zzd;

    if-nez v0, :cond_20

    new-instance v0, Lcom/google/android/gms/internal/zzvw$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzvw$zzd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzb;->ahG:Lcom/google/android/gms/internal/zzvw$zzd;

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzb;->ahG:Lcom/google/android/gms/internal/zzvw$zzd;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzars;->zza(Lcom/google/android/gms/internal/zzasa;)V

    goto :goto_0

    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_15
    .end sparse-switch
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzars;)Lcom/google/android/gms/internal/zzasa;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzvw$zzb;->zzad(Lcom/google/android/gms/internal/zzars;)Lcom/google/android/gms/internal/zzvw$zzb;

    move-result-object v0

    return-object v0
.end method

.method public zzboc()Lcom/google/android/gms/internal/zzvw$zzb;
    .registers 3

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzb;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzvw$zzb;->ahG:Lcom/google/android/gms/internal/zzvw$zzd;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzvw$zzb;->btG:Lcom/google/android/gms/internal/zzarw;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzvw$zzb;->btP:I

    return-object p0
.end method

.method protected zzx()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaru;->zzx()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzvw$zzb;->name:Ljava/lang/String;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzvw$zzb;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zzb;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->zzr(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzvw$zzb;->ahG:Lcom/google/android/gms/internal/zzvw$zzd;

    if-eqz v1, :cond_26

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zzb;->ahG:Lcom/google/android/gms/internal/zzvw$zzd;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->zzc(ILcom/google/android/gms/internal/zzasa;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_26
    return v0
.end method
