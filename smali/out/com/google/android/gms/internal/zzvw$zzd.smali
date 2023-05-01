.class public final Lcom/google/android/gms/internal/zzvw$zzd;
.super Lcom/google/android/gms/internal/zzaru;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzvw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaru",
        "<",
        "Lcom/google/android/gms/internal/zzvw$zzd;",
        ">;"
    }
.end annotation


# instance fields
.field public Fe:Ljava/lang/String;

.field public ahI:Z

.field public ahJ:J

.field public ahK:D

.field public ahL:Lcom/google/android/gms/internal/zzvw$zzc;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaru;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzvw$zzd;->zzboe()Lcom/google/android/gms/internal/zzvw$zzd;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_6

    move v0, v1

    :cond_5
    :goto_5
    return v0

    :cond_6
    instance-of v2, p1, Lcom/google/android/gms/internal/zzvw$zzd;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzvw$zzd;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahI:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzvw$zzd;->ahI:Z

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zzd;->Fe:Ljava/lang/String;

    if-nez v2, :cond_54

    iget-object v2, p1, Lcom/google/android/gms/internal/zzvw$zzd;->Fe:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_1a
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahJ:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzvw$zzd;->ahJ:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahK:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzvw$zzd;->ahK:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahL:Lcom/google/android/gms/internal/zzvw$zzc;

    if-nez v2, :cond_5f

    iget-object v2, p1, Lcom/google/android/gms/internal/zzvw$zzd;->ahL:Lcom/google/android/gms/internal/zzvw$zzc;

    if-nez v2, :cond_5

    :cond_3a
    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zzd;->btG:Lcom/google/android/gms/internal/zzarw;

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zzd;->btG:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzarw;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6a

    :cond_46
    iget-object v2, p1, Lcom/google/android/gms/internal/zzvw$zzd;->btG:Lcom/google/android/gms/internal/zzarw;

    if-eqz v2, :cond_52

    iget-object v2, p1, Lcom/google/android/gms/internal/zzvw$zzd;->btG:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzarw;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_52
    move v0, v1

    goto :goto_5

    :cond_54
    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zzd;->Fe:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzvw$zzd;->Fe:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_5

    :cond_5f
    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahL:Lcom/google/android/gms/internal/zzvw$zzc;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzvw$zzd;->ahL:Lcom/google/android/gms/internal/zzvw$zzc;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzvw$zzc;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    goto :goto_5

    :cond_6a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzd;->btG:Lcom/google/android/gms/internal/zzarw;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzvw$zzd;->btG:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzarw;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 8

    const/16 v6, 0x20

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahI:Z

    if-eqz v0, :cond_51

    const/16 v0, 0x4cf

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzd;->Fe:Ljava/lang/String;

    if-nez v0, :cond_54

    move v0, v1

    :goto_21
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahJ:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahJ:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahK:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahL:Lcom/google/android/gms/internal/zzvw$zzc;

    if-nez v0, :cond_5b

    move v0, v1

    :goto_40
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zzd;->btG:Lcom/google/android/gms/internal/zzarw;

    if-eqz v2, :cond_4f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zzd;->btG:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzarw;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_62

    :cond_4f
    :goto_4f
    add-int/2addr v0, v1

    return v0

    :cond_51
    const/16 v0, 0x4d5

    goto :goto_19

    :cond_54
    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzd;->Fe:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_21

    :cond_5b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahL:Lcom/google/android/gms/internal/zzvw$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzvw$zzc;->hashCode()I

    move-result v0

    goto :goto_40

    :cond_62
    iget-object v1, p0, Lcom/google/android/gms/internal/zzvw$zzd;->btG:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzarw;->hashCode()I

    move-result v1

    goto :goto_4f
.end method

.method public zza(Lcom/google/android/gms/internal/zzart;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahI:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahI:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->zzg(IZ)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzd;->Fe:Ljava/lang/String;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzd;->Fe:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzvw$zzd;->Fe:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->zzq(ILjava/lang/String;)V

    :cond_1e
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahJ:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2c

    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahJ:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzart;->zzb(IJ)V

    :cond_2c
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahK:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_42

    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahK:D

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzart;->zza(ID)V

    :cond_42
    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahL:Lcom/google/android/gms/internal/zzvw$zzc;

    if-eqz v0, :cond_4c

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahL:Lcom/google/android/gms/internal/zzvw$zzc;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->zza(ILcom/google/android/gms/internal/zzasa;)V

    :cond_4c
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzaru;->zza(Lcom/google/android/gms/internal/zzart;)V

    return-void
.end method

.method public zzaf(Lcom/google/android/gms/internal/zzars;)Lcom/google/android/gms/internal/zzvw$zzd;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->bU()I

    move-result v0

    sparse-switch v0, :sswitch_data_3c

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzaru;->zza(Lcom/google/android/gms/internal/zzars;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->ca()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahI:Z

    goto :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzd;->Fe:Ljava/lang/String;

    goto :goto_0

    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->bX()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahJ:J

    goto :goto_0

    :sswitch_23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahK:D

    goto :goto_0

    :sswitch_2a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahL:Lcom/google/android/gms/internal/zzvw$zzc;

    if-nez v0, :cond_35

    new-instance v0, Lcom/google/android/gms/internal/zzvw$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzvw$zzc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahL:Lcom/google/android/gms/internal/zzvw$zzc;

    :cond_35
    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahL:Lcom/google/android/gms/internal/zzvw$zzc;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzars;->zza(Lcom/google/android/gms/internal/zzasa;)V

    goto :goto_0

    nop

    :sswitch_data_3c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_15
        0x18 -> :sswitch_1c
        0x21 -> :sswitch_23
        0x2a -> :sswitch_2a
    .end sparse-switch
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzars;)Lcom/google/android/gms/internal/zzasa;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzvw$zzd;->zzaf(Lcom/google/android/gms/internal/zzars;)Lcom/google/android/gms/internal/zzvw$zzd;

    move-result-object v0

    return-object v0
.end method

.method public zzboe()Lcom/google/android/gms/internal/zzvw$zzd;
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahI:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzd;->Fe:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahJ:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahK:D

    iput-object v2, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahL:Lcom/google/android/gms/internal/zzvw$zzc;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzvw$zzd;->btG:Lcom/google/android/gms/internal/zzarw;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzvw$zzd;->btP:I

    return-object p0
.end method

.method protected zzx()I
    .registers 7

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaru;->zzx()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahI:Z

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahI:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->zzh(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/zzvw$zzd;->Fe:Ljava/lang/String;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/google/android/gms/internal/zzvw$zzd;->Fe:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zzd;->Fe:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->zzr(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_26
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahJ:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_36

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahJ:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzart;->zzf(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_36
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahK:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4e

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahK:D

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzart;->zzb(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahL:Lcom/google/android/gms/internal/zzvw$zzc;

    if-eqz v1, :cond_5a

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zzd;->ahL:Lcom/google/android/gms/internal/zzvw$zzc;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->zzc(ILcom/google/android/gms/internal/zzasa;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5a
    return v0
.end method
