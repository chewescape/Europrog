.class public final Lcom/google/android/gms/internal/zzvw$zza$zza;
.super Lcom/google/android/gms/internal/zzaru;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzvw$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaru",
        "<",
        "Lcom/google/android/gms/internal/zzvw$zza$zza;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile ahC:[Lcom/google/android/gms/internal/zzvw$zza$zza;


# instance fields
.field public ahD:Ljava/lang/String;

.field public ahE:Ljava/lang/String;

.field public viewId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaru;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzvw$zza$zza;->zzboa()Lcom/google/android/gms/internal/zzvw$zza$zza;

    return-void
.end method

.method public static zzbnz()[Lcom/google/android/gms/internal/zzvw$zza$zza;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzvw$zza$zza;->ahC:[Lcom/google/android/gms/internal/zzvw$zza$zza;

    if-nez v0, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/zzary;->btO:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/zzvw$zza$zza;->ahC:[Lcom/google/android/gms/internal/zzvw$zza$zza;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzvw$zza$zza;

    sput-object v0, Lcom/google/android/gms/internal/zzvw$zza$zza;->ahC:[Lcom/google/android/gms/internal/zzvw$zza$zza;

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/zzvw$zza$zza;->ahC:[Lcom/google/android/gms/internal/zzvw$zza$zza;

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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzvw$zza$zza;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzvw$zza$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->ahD:Ljava/lang/String;

    if-nez v2, :cond_3c

    iget-object v2, p1, Lcom/google/android/gms/internal/zzvw$zza$zza;->ahD:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_14
    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->ahE:Ljava/lang/String;

    if-nez v2, :cond_47

    iget-object v2, p1, Lcom/google/android/gms/internal/zzvw$zza$zza;->ahE:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_1c
    iget v2, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->viewId:I

    iget v3, p1, Lcom/google/android/gms/internal/zzvw$zza$zza;->viewId:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->btG:Lcom/google/android/gms/internal/zzarw;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->btG:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzarw;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_52

    :cond_2e
    iget-object v2, p1, Lcom/google/android/gms/internal/zzvw$zza$zza;->btG:Lcom/google/android/gms/internal/zzarw;

    if-eqz v2, :cond_3a

    iget-object v2, p1, Lcom/google/android/gms/internal/zzvw$zza$zza;->btG:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzarw;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3a
    move v0, v1

    goto :goto_5

    :cond_3c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->ahD:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzvw$zza$zza;->ahD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_5

    :cond_47
    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->ahE:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzvw$zza$zza;->ahE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_5

    :cond_52
    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->btG:Lcom/google/android/gms/internal/zzarw;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzvw$zza$zza;->btG:Lcom/google/android/gms/internal/zzarw;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->ahD:Ljava/lang/String;

    if-nez v0, :cond_34

    move v0, v1

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->ahE:Ljava/lang/String;

    if-nez v0, :cond_3b

    move v0, v1

    :goto_1e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->viewId:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->btG:Lcom/google/android/gms/internal/zzarw;

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->btG:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzarw;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_42

    :cond_32
    :goto_32
    add-int/2addr v0, v1

    return v0

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->ahD:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_16

    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->ahE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1e

    :cond_42
    iget-object v1, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->btG:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzarw;->hashCode()I

    move-result v1

    goto :goto_32
.end method

.method public zza(Lcom/google/android/gms/internal/zzart;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->ahD:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->ahD:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->ahD:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->zzq(ILjava/lang/String;)V

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->ahE:Ljava/lang/String;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->ahE:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->ahE:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->zzq(ILjava/lang/String;)V

    :cond_28
    iget v0, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->viewId:I

    if-eqz v0, :cond_32

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->viewId:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->zzaf(II)V

    :cond_32
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzaru;->zza(Lcom/google/android/gms/internal/zzart;)V

    return-void
.end method

.method public zzac(Lcom/google/android/gms/internal/zzars;)Lcom/google/android/gms/internal/zzvw$zza$zza;
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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->ahD:Ljava/lang/String;

    goto :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->ahE:Ljava/lang/String;

    goto :goto_0

    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->bY()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->viewId:I

    goto :goto_0

    nop

    :sswitch_data_24
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_15
        0x18 -> :sswitch_1c
    .end sparse-switch
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzars;)Lcom/google/android/gms/internal/zzasa;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzvw$zza$zza;->zzac(Lcom/google/android/gms/internal/zzars;)Lcom/google/android/gms/internal/zzvw$zza$zza;

    move-result-object v0

    return-object v0
.end method

.method public zzboa()Lcom/google/android/gms/internal/zzvw$zza$zza;
    .registers 2

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->ahD:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->ahE:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->viewId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->btG:Lcom/google/android/gms/internal/zzarw;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->btP:I

    return-object p0
.end method

.method protected zzx()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaru;->zzx()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->ahD:Ljava/lang/String;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->ahD:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->ahD:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->zzr(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->ahE:Ljava/lang/String;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->ahE:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->ahE:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->zzr(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_30
    iget v1, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->viewId:I

    if-eqz v1, :cond_3c

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/zzvw$zza$zza;->viewId:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->zzah(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3c
    return v0
.end method
