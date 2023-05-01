.class public final Lcom/google/android/gms/internal/zzvw$zzc;
.super Lcom/google/android/gms/internal/zzaru;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzvw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaru",
        "<",
        "Lcom/google/android/gms/internal/zzvw$zzc;",
        ">;"
    }
.end annotation


# instance fields
.field public ahH:[Lcom/google/android/gms/internal/zzvw$zzb;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaru;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzvw$zzc;->zzbod()Lcom/google/android/gms/internal/zzvw$zzc;

    return-void
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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzvw$zzc;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzvw$zzc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zzc;->type:Ljava/lang/String;

    if-nez v2, :cond_38

    iget-object v2, p1, Lcom/google/android/gms/internal/zzvw$zzc;->type:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_14
    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zzc;->ahH:[Lcom/google/android/gms/internal/zzvw$zzb;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzvw$zzc;->ahH:[Lcom/google/android/gms/internal/zzvw$zzb;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzary;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zzc;->btG:Lcom/google/android/gms/internal/zzarw;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zzc;->btG:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzarw;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_43

    :cond_2a
    iget-object v2, p1, Lcom/google/android/gms/internal/zzvw$zzc;->btG:Lcom/google/android/gms/internal/zzarw;

    if-eqz v2, :cond_36

    iget-object v2, p1, Lcom/google/android/gms/internal/zzvw$zzc;->btG:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzarw;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_36
    move v0, v1

    goto :goto_5

    :cond_38
    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zzc;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzvw$zzc;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_5

    :cond_43
    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzc;->btG:Lcom/google/android/gms/internal/zzarw;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzvw$zzc;->btG:Lcom/google/android/gms/internal/zzarw;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzc;->type:Ljava/lang/String;

    if-nez v0, :cond_30

    move v0, v1

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zzc;->ahH:[Lcom/google/android/gms/internal/zzvw$zzb;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzary;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zzc;->btG:Lcom/google/android/gms/internal/zzarw;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zzc;->btG:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzarw;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_37

    :cond_2e
    :goto_2e
    add-int/2addr v0, v1

    return v0

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzc;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_16

    :cond_37
    iget-object v1, p0, Lcom/google/android/gms/internal/zzvw$zzc;->btG:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzarw;->hashCode()I

    move-result v1

    goto :goto_2e
.end method

.method public zza(Lcom/google/android/gms/internal/zzart;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzc;->type:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzc;->type:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzvw$zzc;->type:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->zzq(ILjava/lang/String;)V

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzc;->ahH:[Lcom/google/android/gms/internal/zzvw$zzb;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzc;->ahH:[Lcom/google/android/gms/internal/zzvw$zzb;

    array-length v0, v0

    if-lez v0, :cond_30

    const/4 v0, 0x0

    :goto_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzvw$zzc;->ahH:[Lcom/google/android/gms/internal/zzvw$zzb;

    array-length v1, v1

    if-ge v0, v1, :cond_30

    iget-object v1, p0, Lcom/google/android/gms/internal/zzvw$zzc;->ahH:[Lcom/google/android/gms/internal/zzvw$zzb;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2d

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzart;->zza(ILcom/google/android/gms/internal/zzasa;)V

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_30
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzaru;->zza(Lcom/google/android/gms/internal/zzart;)V

    return-void
.end method

.method public zzae(Lcom/google/android/gms/internal/zzars;)Lcom/google/android/gms/internal/zzvw$zzc;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->bU()I

    move-result v0

    sparse-switch v0, :sswitch_data_56

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzaru;->zza(Lcom/google/android/gms/internal/zzars;I)Z

    move-result v0

    if-nez v0, :cond_1

    :sswitch_e
    return-object p0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzc;->type:Ljava/lang/String;

    goto :goto_1

    :sswitch_16
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzasd;->zzc(Lcom/google/android/gms/internal/zzars;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzc;->ahH:[Lcom/google/android/gms/internal/zzvw$zzb;

    if-nez v0, :cond_42

    move v0, v1

    :goto_21
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzvw$zzb;

    if-eqz v0, :cond_2b

    iget-object v3, p0, Lcom/google/android/gms/internal/zzvw$zzc;->ahH:[Lcom/google/android/gms/internal/zzvw$zzb;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2b
    :goto_2b
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_46

    new-instance v3, Lcom/google/android/gms/internal/zzvw$zzb;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzvw$zzb;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzars;->zza(Lcom/google/android/gms/internal/zzasa;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->bU()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_42
    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzc;->ahH:[Lcom/google/android/gms/internal/zzvw$zzb;

    array-length v0, v0

    goto :goto_21

    :cond_46
    new-instance v3, Lcom/google/android/gms/internal/zzvw$zzb;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzvw$zzb;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzars;->zza(Lcom/google/android/gms/internal/zzasa;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzvw$zzc;->ahH:[Lcom/google/android/gms/internal/zzvw$zzb;

    goto :goto_1

    nop

    :sswitch_data_56
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_f
        0x12 -> :sswitch_16
    .end sparse-switch
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzars;)Lcom/google/android/gms/internal/zzasa;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzvw$zzc;->zzae(Lcom/google/android/gms/internal/zzars;)Lcom/google/android/gms/internal/zzvw$zzc;

    move-result-object v0

    return-object v0
.end method

.method public zzbod()Lcom/google/android/gms/internal/zzvw$zzc;
    .registers 2

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzc;->type:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/zzvw$zzb;->zzbob()[Lcom/google/android/gms/internal/zzvw$zzb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzc;->ahH:[Lcom/google/android/gms/internal/zzvw$zzb;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzvw$zzc;->btG:Lcom/google/android/gms/internal/zzarw;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzvw$zzc;->btP:I

    return-object p0
.end method

.method protected zzx()I
    .registers 6

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaru;->zzx()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzvw$zzc;->type:Ljava/lang/String;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzvw$zzc;->type:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zzc;->type:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->zzr(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzvw$zzc;->ahH:[Lcom/google/android/gms/internal/zzvw$zzb;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/google/android/gms/internal/zzvw$zzc;->ahH:[Lcom/google/android/gms/internal/zzvw$zzb;

    array-length v1, v1

    if-lez v1, :cond_3c

    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_27
    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zzc;->ahH:[Lcom/google/android/gms/internal/zzvw$zzb;

    array-length v2, v2

    if-ge v0, v2, :cond_3b

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zzc;->ahH:[Lcom/google/android/gms/internal/zzvw$zzb;

    aget-object v2, v2, v0

    if-eqz v2, :cond_38

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzart;->zzc(ILcom/google/android/gms/internal/zzasa;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_3b
    move v0, v1

    :cond_3c
    return v0
.end method
