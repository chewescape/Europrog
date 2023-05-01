.class public final Lcom/google/android/gms/internal/zzase$zza;
.super Lcom/google/android/gms/internal/zzaru;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaru",
        "<",
        "Lcom/google/android/gms/internal/zzase$zza;",
        ">;"
    }
.end annotation


# instance fields
.field public btZ:Z

.field public bua:Ljava/lang/String;

.field public score:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaru;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzase$zza;->cA()Lcom/google/android/gms/internal/zzase$zza;

    return-void
.end method


# virtual methods
.method public cA()Lcom/google/android/gms/internal/zzase$zza;
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzase$zza;->btZ:Z

    iput v0, p0, Lcom/google/android/gms/internal/zzase$zza;->score:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzase$zza;->bua:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzase$zza;->btG:Lcom/google/android/gms/internal/zzarw;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzase$zza;->btP:I

    return-object p0
.end method

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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzase$zza;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzase$zza;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzase$zza;->btZ:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzase$zza;->btZ:Z

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/zzase$zza;->score:I

    iget v3, p1, Lcom/google/android/gms/internal/zzase$zza;->score:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzase$zza;->bua:Ljava/lang/String;

    if-nez v2, :cond_3a

    iget-object v2, p1, Lcom/google/android/gms/internal/zzase$zza;->bua:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_20
    iget-object v2, p0, Lcom/google/android/gms/internal/zzase$zza;->btG:Lcom/google/android/gms/internal/zzarw;

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/google/android/gms/internal/zzase$zza;->btG:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzarw;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_45

    :cond_2c
    iget-object v2, p1, Lcom/google/android/gms/internal/zzase$zza;->btG:Lcom/google/android/gms/internal/zzarw;

    if-eqz v2, :cond_38

    iget-object v2, p1, Lcom/google/android/gms/internal/zzase$zza;->btG:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzarw;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_38
    move v0, v1

    goto :goto_5

    :cond_3a
    iget-object v2, p0, Lcom/google/android/gms/internal/zzase$zza;->bua:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzase$zza;->bua:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_5

    :cond_45
    iget-object v0, p0, Lcom/google/android/gms/internal/zzase$zza;->btG:Lcom/google/android/gms/internal/zzarw;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzase$zza;->btG:Lcom/google/android/gms/internal/zzarw;

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

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzase$zza;->btZ:Z

    if-eqz v0, :cond_35

    const/16 v0, 0x4cf

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zzase$zza;->score:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzase$zza;->bua:Ljava/lang/String;

    if-nez v0, :cond_38

    move v0, v1

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzase$zza;->btG:Lcom/google/android/gms/internal/zzarw;

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/google/android/gms/internal/zzase$zza;->btG:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzarw;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3f

    :cond_33
    :goto_33
    add-int/2addr v0, v1

    return v0

    :cond_35
    const/16 v0, 0x4d5

    goto :goto_17

    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/internal/zzase$zza;->bua:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_24

    :cond_3f
    iget-object v1, p0, Lcom/google/android/gms/internal/zzase$zza;->btG:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzarw;->hashCode()I

    move-result v1

    goto :goto_33
.end method

.method public zza(Lcom/google/android/gms/internal/zzart;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzase$zza;->btZ:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzase$zza;->btZ:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->zzg(IZ)V

    :cond_a
    iget v0, p0, Lcom/google/android/gms/internal/zzase$zza;->score:I

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/zzase$zza;->score:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->zzaf(II)V

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/zzase$zza;->bua:Ljava/lang/String;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/zzase$zza;->bua:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzase$zza;->bua:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->zzq(ILjava/lang/String;)V

    :cond_28
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzaru;->zza(Lcom/google/android/gms/internal/zzart;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzars;)Lcom/google/android/gms/internal/zzasa;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzase$zza;->zzcn(Lcom/google/android/gms/internal/zzars;)Lcom/google/android/gms/internal/zzase$zza;

    move-result-object v0

    return-object v0
.end method

.method public zzcn(Lcom/google/android/gms/internal/zzars;)Lcom/google/android/gms/internal/zzase$zza;
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

    sparse-switch v0, :sswitch_data_24

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzaru;->zza(Lcom/google/android/gms/internal/zzars;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->ca()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzase$zza;->btZ:Z

    goto :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->bY()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzase$zza;->score:I

    goto :goto_0

    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzase$zza;->bua:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_24
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_15
        0x1a -> :sswitch_1c
    .end sparse-switch
.end method

.method protected zzx()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaru;->zzx()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzase$zza;->btZ:Z

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzase$zza;->btZ:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->zzh(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget v1, p0, Lcom/google/android/gms/internal/zzase$zza;->score:I

    if-eqz v1, :cond_1c

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/zzase$zza;->score:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->zzah(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzase$zza;->bua:Ljava/lang/String;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/google/android/gms/internal/zzase$zza;->bua:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzase$zza;->bua:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->zzr(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_32
    return v0
.end method
