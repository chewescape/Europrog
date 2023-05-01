.class public abstract Lcom/google/android/gms/internal/zzaru;
.super Lcom/google/android/gms/internal/zzasa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/zzaru",
        "<TM;>;>",
        "Lcom/google/android/gms/internal/zzasa;"
    }
.end annotation


# instance fields
.field protected btG:Lcom/google/android/gms/internal/zzarw;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzasa;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaru;->cn()Lcom/google/android/gms/internal/zzaru;

    move-result-object v0

    return-object v0
.end method

.method public cn()Lcom/google/android/gms/internal/zzaru;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzasa;->co()Lcom/google/android/gms/internal/zzasa;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaru;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzary;->zza(Lcom/google/android/gms/internal/zzaru;Lcom/google/android/gms/internal/zzaru;)V

    return-object v0
.end method

.method public synthetic co()Lcom/google/android/gms/internal/zzasa;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaru;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaru;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzarv;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzarv",
            "<TM;TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaru;->btG:Lcom/google/android/gms/internal/zzarw;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return-object v0

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaru;->btG:Lcom/google/android/gms/internal/zzarw;

    iget v2, p1, Lcom/google/android/gms/internal/zzarv;->tag:I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzasd;->zzahl(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzarw;->zzahh(I)Lcom/google/android/gms/internal/zzarx;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzarx;->zzb(Lcom/google/android/gms/internal/zzarv;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public zza(Lcom/google/android/gms/internal/zzart;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaru;->btG:Lcom/google/android/gms/internal/zzarw;

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaru;->btG:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzarw;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaru;->btG:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzarw;->zzahi(I)Lcom/google/android/gms/internal/zzarx;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzarx;->zza(Lcom/google/android/gms/internal/zzart;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzars;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->getPosition()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzars;->zzagr(I)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-static {p2}, Lcom/google/android/gms/internal/zzasd;->zzahl(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->getPosition()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzars;->zzae(II)[B

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzasc;

    invoke-direct {v2, p2, v0}, Lcom/google/android/gms/internal/zzasc;-><init>(I[B)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaru;->btG:Lcom/google/android/gms/internal/zzarw;

    if-nez v3, :cond_3b

    new-instance v3, Lcom/google/android/gms/internal/zzarw;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzarw;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzaru;->btG:Lcom/google/android/gms/internal/zzarw;

    :goto_2a
    if-nez v0, :cond_36

    new-instance v0, Lcom/google/android/gms/internal/zzarx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzarx;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaru;->btG:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v3, v1, v0}, Lcom/google/android/gms/internal/zzarw;->zza(ILcom/google/android/gms/internal/zzarx;)V

    :cond_36
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzarx;->zza(Lcom/google/android/gms/internal/zzasc;)V

    const/4 v0, 0x1

    goto :goto_b

    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaru;->btG:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzarw;->zzahh(I)Lcom/google/android/gms/internal/zzarx;

    move-result-object v0

    goto :goto_2a
.end method

.method protected zzx()I
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaru;->btG:Lcom/google/android/gms/internal/zzarw;

    if-eqz v1, :cond_1c

    move v1, v0

    :goto_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaru;->btG:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzarw;->size()I

    move-result v2

    if-ge v0, v2, :cond_1d

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaru;->btG:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzarw;->zzahi(I)Lcom/google/android/gms/internal/zzarx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzarx;->zzx()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1c
    move v1, v0

    :cond_1d
    return v1
.end method
