.class public Lcom/google/android/gms/appindexing/Thing$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/appindexing/Thing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field final hf:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/appindexing/Thing$Builder;->hf:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/appindexing/Thing;
    .registers 3

    new-instance v0, Lcom/google/android/gms/appindexing/Thing;

    iget-object v1, p0, Lcom/google/android/gms/appindexing/Thing$Builder;->hf:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Lcom/google/android/gms/appindexing/Thing;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/google/android/gms/appindexing/Thing;)Lcom/google/android/gms/appindexing/Thing$Builder;
    .registers 5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/appindexing/Thing$Builder;->hf:Landroid/os/Bundle;

    iget-object v1, p2, Lcom/google/android/gms/appindexing/Thing;->he:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_c
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/appindexing/Thing$Builder;
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/appindexing/Thing$Builder;->hf:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-object p0
.end method

.method public put(Ljava/lang/String;Z)Lcom/google/android/gms/appindexing/Thing$Builder;
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/appindexing/Thing$Builder;->hf:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public put(Ljava/lang/String;[Lcom/google/android/gms/appindexing/Thing;)Lcom/google/android/gms/appindexing/Thing$Builder;
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2b

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p2

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v2, :cond_1a

    aget-object v3, p2, v0

    if-eqz v3, :cond_17

    iget-object v3, v3, Lcom/google/android/gms/appindexing/Thing;->he:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1a
    iget-object v2, p0, Lcom/google/android/gms/appindexing/Thing$Builder;->hf:Landroid/os/Bundle;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_2b
    return-object p0
.end method

.method public put(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/gms/appindexing/Thing$Builder;
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/appindexing/Thing$Builder;->hf:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_a
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/gms/appindexing/Thing$Builder;
    .registers 3

    const-string v0, "description"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/appindexing/Thing$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/appindexing/Thing$Builder;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/gms/appindexing/Thing$Builder;
    .registers 3

    if-eqz p1, :cond_7

    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/appindexing/Thing$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/appindexing/Thing$Builder;

    :cond_7
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/gms/appindexing/Thing$Builder;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/appindexing/Thing$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/appindexing/Thing$Builder;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/android/gms/appindexing/Thing$Builder;
    .registers 3

    const-string v0, "type"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/appindexing/Thing$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/appindexing/Thing$Builder;

    return-object p0
.end method

.method public setUrl(Landroid/net/Uri;)Lcom/google/android/gms/appindexing/Thing$Builder;
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "url"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/appindexing/Thing$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/appindexing/Thing$Builder;

    return-object p0
.end method
